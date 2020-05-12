import sys
import os
import glob

USAGE = """python crack.py ROOT_DIR"""

file_to_exclude = {'Piposh3D.exe', 'Uninstal.exe'}


def find_all_files(root: str, extension: str):
    """Return a list of all the files that need to be matching the extension"""
    print("Looking for files to update")
    os.chdir(root)
    return set(glob.glob(f"*.{extension}")) - file_to_exclude


def replace_hash_check(root: str, files_to_update: set):
    """A call to this function will replace the hash check in all *.exe files under ROOT_DIR excluding the files in file_to_exclude"""
    base_file = _load_base_file(root)
    for executable in files_to_update:
        print(f"Updating file: {executable}")
        with open(executable, "rb+") as file:
            content = bytearray(file.read())
            content[:0x6d000] = base_file[:0x6d000]
            new_data = content
        with open(executable, "wb") as file:
            file.write(new_data)
    print("Finished.")


def update_resolution(root: str, files_to_update: set):
    print("Updating resolution in WDL files...")
    for dwf in files_to_update:
        with open(dwf, "r") as file:
            print(f"Updating file {dwf}")
            content = file.read()
            new_content = content.replace("var video_mode = 6;	 // screen size 640x480",
                                          f"var video_mode = 8;	 // screen size 1024x768")
        with open(dwf, "w") as file:
            file.write(new_content)


def _load_base_file(root: str):
    """Loads the content of the base file that overrides the hash check"""
    print("Loading base file...")
    with open(os.path.join(root, "python_scripts", "crack", "Base.exe"), "rb") as file:
        return bytearray(file.read())


def main():
    if len(sys.argv) < 2:
        print(USAGE)
        exit(0)

    root_dir = sys.argv[1]
    print(f"Working on directory: {root_dir}")
    replace_hash_check(root_dir, find_all_files(root_dir, "exe"))
    update_resolution(root_dir, find_all_files(root_dir, "wdl"))


if __name__ == "__main__":
    main()
