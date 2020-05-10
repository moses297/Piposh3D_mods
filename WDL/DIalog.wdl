//*****************************************************************
//*                       D I A L O G S                           *
//*****************************************************************

var Talking = 0;	// Indication for the actor who is talking
var DialogCounter = 0;	// The animation counter
var DialogIndex = 0;	// Dialog to display
var DialogChoice = 0;

// Panel images

bmap bOpt1 = <Opt1.pcx>;
bmap bOpt2 = <Opt2.pcx>;
bmap bSteel = <Steel.pcx>;

// Texts

TEXT txt1
{
	layer = -1;
	pos_x = 60;
	pos_y = 340;
	string = "";
	flags = visible;
	font = standard_font;
}

TEXT txt2
{
	layer = -1;
	pos_x = 60;
	pos_y = 395;
	string = "";
	flags = visible;
	font = standard_font;
}

TEXT txt3
{
	layer = -1;
	pos_x = 60;
	pos_y = 450;
	string = "";
	flags = visible;
	font = standard_font;
}

panel Dialog
{
	bmap = bSteel;
	pos_x = 0;
	pos_y = 333;
	flags = d3d,refresh,overlay;
	layer = -2;
	button = 0,-15,bOpt1,bOpt1,bOpt2,Choice1,null,null;
	button = 0,40,bOpt1,bOpt1,bOpt2,Choice2,null,null;
	button = 0,97,bOpt1,bOpt1,bOpt2,Choice3,null,null;
}

panel Option1
{
	pos_x = 50;
	pos_y = 337;
	flags = d3d,refresh,overlay;
	layer = -1;
	on_click = Choice1;
}

panel Option2
{
	pos_x = 50;
	pos_y = 390;
	flags = d3d,refresh,overlay;
	layer = -1;
	on_click = Choice2;
}

panel Option3
{
	pos_x = 50;
	pos_y = 438;
	flags = d3d,refresh,overlay;
	layer = -1;
	on_click = Choice3;
}

function Choice1
{
	Dialog.visible = off;
	HideText();
	DialogCounter = 0;
	DialogChoice = 1;
//	Talking = 1;
//	SetDialog(1);
}

function Choice2
{
	Dialog.visible = off;
	HideText();
	DialogCounter = 0;
	DialogChoice = 2;
//	Talking = 1;
//	SetDialog(2);
}

function Choice3
{
	Dialog.visible = off;
	HideText();
	DialogCounter = 0;
	DialogChoice = 3;
//	Talking = 1;
//	SetDialog(3);
}

function HideText()
{
	txt1.visible = off;
	txt2.visible = off;
	txt3.visible = off;
}

function ShowText()
{
	txt1.visible = on;
	txt2.visible = on;
	txt3.visible = on;
}

function SetDialogOptions
{
	if (DialogIndex == 0)
	{
		txt1.string = "                                                     ?JMP S'RE VA JL XUFT EVA JVML GA";// �� ���� ��� ���� �� �� ��'� ���?
		txt2.string = "                                                 ...XFKOE YJJNPB WVJA TBDL JVJRT ,JMP";// ���, ����� ���� ���� ������ �����...
		txt3.string = "                                          ?FGE EBMFIUEM JVFA AJRFEL YKFM FEUJM....JFQ";// ���....����� ���� ������ ���� �������� ���?
	}

	if (DialogIndex == 1)
	{
		txt1.string = "                                                                EPDFML TUSB JVAB XFLU";// ���� ���� ���� ������
		txt2.string = "               '?FGE EBMFIUEM JGH VA AJRFM JNA WJA' : VDFCAL XFTVL ERFT EVA JLFA XFLU";// ���� ���� ��� ���� ����� ������ : "��� ��� ����� �� ��� �������� ���?"
		txt3.string = "                                        ..EKK JVFA EATV AL LLK WTDB ,JNFQE LP JL HLOV";// ���� �� �� �����, ���� ��� �� ���� ���� ���..
	}

	if (DialogIndex == 2)
	{
		txt1.string = "                            ?EGM LMCJEL ENU JL HSL !XJSQSQ VQJIP FG !JVFA CFTEV UJJFA";// ����� ����� ����! �� ����� ������! ��� �� ��� ������ ���
		txt2.string = "                                       ?XJQJINE VTPMM TJMU LU VFFRS EGB WL ZFOAA JNAU";// ���� ����� �� ��� ����� �� ���� ����� �������?
		txt3.string = "                    ..JBR.B TQOE VJBB SOTQAL EJRNJDTFS CFHB JVDMLU SJTI EATV AFB ,JFA";// ���, ��� ���� ���� ������ ���� ��������� ������ ���� ���� �.���..
	}


	if (DialogIndex == 3)
	{
		txt1.string = "                                                         !?AL YAK DBFP EVA...SJ'RTFHB";// �����'��...��� ���� ��� ��?! 
		txt2.string = "                                 ?JVFA BJUFM EVA EQJA !JLU XJLCTE VA HJNEL XFSM JL YV";// �� �� ���� ����� �� ������ ���! ���� ��� ����� ����?
		txt3.string = "                                 ?WLU UATE LP EGE LITCAE VA XJUA JNAU WL VQKA PIOFBLB";// ������� ���� �� ���� ���� �� ������ ��� �� ���� ���?
	}


	if (DialogIndex == 4)
	{
		txt1.string = "                                               OFIM OJIEL WJA PDFJ AL EVA !PFTQ UFHJN";// ����� ����! ��� �� ���� ��� ����� ���� 
		txt2.string = "                                                       WMFSMB CENA JNA TBK JL YV !WFA";// ���! �� �� ��� ��� ���� ������
		txt3.string = "                                  !?EM IJNTBS VKJO LBSL JLJBUB PJQUV JLFA SJNQFTS BCA";// ��� ������� ���� ����� ������ ���� ���� ������ ��?!
	}

	if (DialogIndex == 5)
	{
		txt1.string = "                                (EBFTSE VFNHB H'U XJNFMU VTFMV XKVFUTL DMPFV EJRQFAE)";// (������� ����� ������� ����� ������ �"� ����� ������)
		txt2.string = "                                'ENJIS LU TDHB JGH' JLU EUDHE ESQEL YJJFRM IFU EG JFA";// ��� �� ��� ������ ����� ����� ��� "��� ���� �� �����"
		txt3.string = "                                            ....JVNBE JVNBE XJVFTUL WTDE AL FG GA ,EA";// ��, �� �� �� ���� ������� ����� �����....
	}

	if (DialogIndex == 6)
	{
		txt1.string = "                             ..VFSD EMK DFPB TUSVV ...XJTBDE FLQJ WJA JFLV DFAM EG...";// ...�� ���� ���� ��� ���� ������... ����� ���� ��� ����..
		txt2.string = "                                     ...AJE JLU ENSOMEF ,WLJBUB BFUHL VRS JL ARJ VMAE";// ���� ��� �� ��� ����� ������, ������� ��� ���...
		txt3.string = "                                                   ....JL VQKJA EM VFML DMFP JNA ! AE";// �� ! ��� ���� ���� �� ����� ��....
	}

	if (DialogIndex == 7)
	{
		txt1.string = "                                                  ...WLPB VA PCTK JVKPM LBA EHJLO ,EA";// ��, ����� ��� ����� ���� �� ����...
		txt2.string = "                                              .JLU AFE YAK LQNU EGE OTHE ,AINJ JLU EG";// �� ��� ����, ���� ��� ���� ��� ��� ���.
		txt3.string = "                                                                 ?EQ VJNS EM EATN AFB";// ��� ���� �� ���� ��?
	}

	if (DialogIndex == 8)
	{
		txt1.string = "                                                          EQM ZFPV ZKJV ETJJI FMK EVA";// ��� ��� ����� ���� ���� ���
		txt2.string = "                                           1-B FMK TFJR FVFA XP AL LBA ,ETJJI FMK EVA";// ��� ��� �����, ��� �� �� ���� ���� ��� �-1
		txt3.string = "                                                         FRHLV LA EATFNF EMFJA EJRQFA";// ������ ����� ������ �� �����
	}

	if (DialogIndex == 9)
	{
		txt1.string = "                                                                   ...TJUL YMGE AL EG";// �� �� ���� ����...
		txt2.string = "                                                      ?YFLJJA ZLHML YAKM DTFJ JNA WJA";// ��� ��� ���� ���� ����� ������?
		txt3.string = "                               WLU DNFAOE VA JVNBE ALU FA EL EL EL YACJJMGFQGFQB VTMA";// ���� ������������� �� �� �� �� ��� ����� �� ������ ���
	}

	if (DialogIndex == 10)
	{
		txt1.string = "                                                                ?YFKN VFPJON DTUM EVA";// ��� ���� ������ ����?
		txt2.string = "                                                               ...ESJTMAB XJSOP JL UJ";// �� �� ����� �������...
		txt3.string = "                                         ....OJITK JL OJQDVF ESJTMAL JVFA SVSVV ELLAJ";// ����� ����� ���� ������� ������ �� �����....
	}

	if (DialogIndex == 11)
	{
		txt1.string = "                                               ...XLFPE LKL DJCEL FG EMB LPM ERFT JNA";// ��� ���� ��� ��� �� ����� ��� �����...
		txt2.string = "                                                  !LITCA LU XJOTH EG ? EG VA EAFT EVA";// ��� ���� �� �� ? �� ����� �� �����!
		txt3.string = "                                                     ...HMS VFAVQFS XJSLHM ,BFLFAU FN";// �� ������, ������ ������� ���...
	}

	if (DialogIndex == 12)
	{
		txt1.string = "                                             !LBMAI AJ WMM SGH TVFJ JNA !? JL EUPV EM";// �� ���� �� ?! ��� ���� ��� ��� �� �����!
		txt2.string = "                                                              ...VFLHM AJBM EGU JVPMU";// ����� ��� ���� �����...
		txt3.string = "                           YFMJL XP ELRS JLFA ,?E'RHN JLB ,ELRS XPIB ST SJIOM UJ ,JFA";// ���, �� ����� �� ���� ����, ��� ���'�?, ���� ���� �� �����
	}

	if (DialogIndex == 13)
	{
		txt1.string = "                                                         ....PT SHUL LP XJTBDM TBK XA";// �� ��� ������ �� ���� ��....
		txt2.string = "                                           !TFUJS VFLJM ATSNU IQUM LKB JNFJH BJKTM UJ";// �� ����� ����� ��� ���� ����� ����� �����!
		txt3.string = "                     ?JLU VJNFLJME EQJA .XKLU XJNFNJCE LK XP JL SJQOE ,EG XP JD JD JD";// �� �� �� �� ��, ����� �� �� �� �������� ����. ���� �������� ���?
	}

	if (DialogIndex == 14)
	{
		txt1.string = "                                                   OTH DK INFA ELCNJB ELCNJB XFG ? FJ";// �� ? ��� ������ ������ ���� �� ���
		txt2.string = "                                                             ?OPBFB OPCNFJ ,JRNJG TJF";// ��� �����, ������ �����?
		txt3.string = "                                        XA HFLB YAK JL FBTRU VJK'RB YINIS TJU ENE JFA";// ��� ��� ��� ����� ��'��� ����� �� ��� ���� ��
	}

	if (DialogIndex == 15)
	{
		txt1.string = "                                                                  ?BFU WJA WJA WJA EM";// �� ��� ��� ��� ���?
		txt2.string = "                         VFTJTM LU EPLBFM EGJA JL VMJJS WTBE VSJQBU UATM TJEGM JNA ST";// �� ��� ����� ���� ������ ���� ����� �� ���� ������ �� ������
		txt3.string = "                                                                     .BFLFAU VA FLKAV";// ����� �� ������.
	}

	if (DialogIndex == 16)
	{
		txt1.string = "                                     ...ELGFEB XJOJITK XKLFKL YVA JNA !?EM XJPDFJ XVA";// ��� ������ ��?! ��� ��� ������ ������� ������...
		txt2.string = "                                                    !!TJEGM JNA STME WFVL XKL STA JNA";// ��� ��� ��� ���� ���� ��� �����!!
		txt3.string = "                                            ?FTSJM XPQ XVJAT....LBH ,EQ ZTUA JNA FATV";// ���� ��� ���� ��, ���....����� ��� �����?
	}

	if (DialogIndex == 17)
	{
		txt1.string = "                                             ...PCTK JLRA UJCT VRS AUFN EG YJHVFT XJM";// ��� ������ �� ���� ��� ���� ���� ����...
		txt2.string = "                                        (.YAK FRHL .FL OAMN TBKU JML SHUML TJEM XFJO)";// (���� ���� ����� ��� ���� ���� ��. ���� ���.)
		txt3.string = "                                                   YFNMA VA TJKM JNA JVFA YBOM EVA EM";// �� ��� ���� ���� ��� ���� �� �����
	}

	if (DialogIndex == 18)
	{
		txt1.string = "                                            ...JLP FPMU TBK XEF JVPCE ST ,EAFT EVA FN";// �� ��� ����, �� ����� ��� ��� ���� ���...
		txt2.string = "                                                      ...YFTMLFI LU XJNFITS JNU JL YV";// �� �� ��� ������� �� �������...
		txt3.string = "                            ?E'RHNF ELRS LU YFNU CAC XP DFP LU XPIB SJIOM ETSMB WL UJ";// �� �� ����� ����� ���� �� ��� �� ��� ���� �� ���� ����'�?
	}

	if (DialogIndex == 19)
	{
		txt1.string = "                                                               ?JNNSM VUTM JNN LJTB'C";// �'���� ��� ���� �����?
		txt2.string = "                                  ...VFONL XKL LBH ,VOQFVB EGK [QO JNA XKL LBH ,OPTBH";// �����, ��� ��� ��� ��� ��� ������, ��� ��� �����...
		txt3.string = "                              FJUKP DMJM VLVB JNA FNJBV ,DFAM TPIRM JNA JFKJO XKL YJA";// ��� ��� ����� ��� ����� ����, ����� ��� ���� ���� �����
	}

	if (DialogIndex == 20)
	{
		txt1.string = "                                        ....EKJMU XCF XJLQLQ CJUEL TUQA EQJA PDFJ JNA";// ��� ���� ���� ���� ����� ������ ��� �����....
		txt2.string = "                                                         .JGH UFQJQ ,FUHNVU LBH AL AL";// �� �� ��� ������, ����� ���,
		txt3.string = "                                            ...XKL JADK FLAUV...EQ JNA EML JVFA FLAUV";// ����� ���� ��� ��� ��...����� ���� ���...
	}

	if (DialogIndex == 21)
	{
		txt1.string = "                                                             ? YAK BFUHL UJ TBK EM LP";// �� �� ��� �� ����� ��� ?
		txt2.string = "                                                                  ... EJPB YJA ?BFUHL";// �����? ��� ���� ...
		txt3.string = "                                                                          ?XJBUFH XVA";// ��� ������?
	}

	if (DialogIndex == 22)
	{
		txt1.string = "                                             ...FGK ELHM JL UJ...JLRA JBJISLO DFAM EG";// �� ���� ������� ����...�� �� ���� ���...
		txt2.string = "                                 ..JOFBJE OJSTNL LLE TJU - EG VA [JTV EMJDS FN ,YK YK";// �� ��, �� ����� ���� �� �� - ��� ��� ������ ������..
		txt3.string = "                               XJJNGFA XP JVFA FTJJR AL DMJM VLVB XC XA YJGAA JNA WJA";// ��� ��� ����� �� �� ���� ���� �� ����� ���� �� �������
	}

	if (DialogIndex == 23)
	{
		txt1.string = "                                          .FQI.... VFLSB DFAM JL AB ASFFD XKJLP SFTJL";// ����� ����� ����� �� �� ���� ����� ....���,
		txt2.string = "                                      .EGB XJBFI AL XVA - ENFB VTFSJB VRS XKL YVA JNA";// ��� ��� ��� ��� ������ ���� - ��� �� ����� ���.
		txt3.string = "                                   XJVPU LK SJU TML TUSVEL JVBJJHVE !XJJMUM ELBAG WFA";// ��� ����� ������! �������� ������ ��� ��� �� �����
	}

	if (DialogIndex == 24)
	{
		txt1.string = "                                                                 ....XFLU YFJSJN VFTU";// ���� ������ ����....
		txt2.string = "                                                    ...ESJTMAL WTDB JNA YK YK ?SJU TM";// �� ���? �� �� ��� ���� �������...
		txt3.string = "                                                                       ...JL TQOM EVA";// ��� ���� ��...
	}

	if (DialogIndex == 25)
	{
		txt1.string = "                                                 ?AL FA DTQNB XJSRFJ DKE LU VJVHVE VA";// �� ������ �� ��� ������ ����� �� ��?
		txt2.string = "                                        PBIE VFTFMU VFUT LU WMOFM OTFS JVTBP !ECAD LA";// �� ����! ����� ���� ����� �� ���� ������ ����
		txt3.string = "                                                          ?VFTJQ XJLKFA ?XJUFP XVA EM";// �� ��� �����? ������ �����?
	}


	if (DialogIndex == 26)
	{
		txt1.string = "                                          ....HHHQ...XJLPTFM XJNIFB LFKAL WJUMV XA AL";// �� �� ����� ����� ������ �������...����....
		txt2.string = "                                    ...WL FTBP VFJNU JVU TBK ,EALME OFKE JRH LP BFUHV";// ����� �� ��� ���� �����, ��� ��� ����� ���� ��...
		txt3.string = "                                                   ...XJJHB LKE YJA...PDFJ JM PDFJ JM";// �� ���� �� ����...��� ��� �����...
	}


	if (DialogIndex == 27)
	{
		txt1.string = "                              LAMUL YJMJM..WFQE LKE XJATFS FNHNA VJTBPB LBA 29 YB JNA";// ��� �� 29 ��� ������ ����� ������ ��� ����..����� �����
		txt2.string = "                                                                    ...JHFTB UJUS JNA";// ��� ���� �����...
		txt3.string = "                                                    XJNQ JHFVJN EG LKE JLRA ,JL YJMAV";// ����� ��, ���� ��� ��  ������ ����
	}


	if (DialogIndex == 28)
	{
		txt1.string = "                                 ...OOOO...YFKN YAKM AL JNAU EATNK YK GA ,PCTK JVONKN";// ������ ����, �� �� ����� ���� �� ���� ����...����...
		txt2.string = "                                                              ETJUJE WTDE VA EONA JNA";// ��� ���� �� ���� ������
		txt3.string = "                                                      ?XJQDFP SJIOLQ JBUFM EMK XKL UJ";// �� ��� ��� ����� ������ ������?
	}


	if (DialogIndex == 29)
	{
		txt1.string = "                               JLU CFLFKJOQE XHNM LU TFSJB OJITKE VA WL YVA JNA ,EATV";// ����, ��� ��� �� �� ������ ����� �� ���� ��������� ���
		txt2.string = "                                      FBGPJ XJUNA...WL TMFA JNA EGE TBDK PMUN AL ,JMP";// ���, �� ���� ���� ��� ��� ���� ��...����� �����
		txt3.string = "                    ERHNF ELRS LU EHJDB LU XPIB SJIOM DFP OJKB JL UJ JLFA XJKHMU YMGB";// ���� ������ ���� �� �� ���� ��� ����� ���� �� ����� �� ���� �����
	}


	if (DialogIndex == 30)
	{
		txt1.string = "                                                        ZFLAE XP FJUKP TBDM EVA JBFBH";// ����� ��� ���� ����� �� �����
		txt2.string = "                             ...EGE SHUMB VJVJMA ETJHB JL UJU FLJAK ,JVFA XFUTL AL AL";// �� �� ����� ����, ����� ��� �� ����� ������ ����� ���...
		txt3.string = "                       .SJTOM TKJK LU XJPTFRME YFDPFMB VFTBHE XP JL UCNVM AL EG XA ST";// �� �� �� �� ����� �� �� ������ ������� �������� �� ���� �����.
	}

	if (DialogIndex == 31)
	{
		txt1.string = "                                           XGCFM TBK EG LBA...XJRJTPM JL UJU PDFJ JNA";// ��� ���� ��� �� �������...��� �� ��� �����
		txt2.string = "                                                    ...VJMTAB TRS IQUM WL DJCEL JL YV";// �� �� ����� �� ���� ��� ������...
		txt3.string = "                                           ...XFLE DP JNFAJBEU JM LKL VFDFEL ERFT JNA";// ��� ���� ������ ��� �� �������� �� ����...
	}


	if (DialogIndex == 32)
	{
		txt1.string = "                                                 EGE XFJE XRP DP TUFPF TUFAB XJJH XEF";// ��� ���� ����� ����� �� ��� ���� ���
		txt2.string = "                                                        ...EIJLS YJA ...ATFN EG AL AL";// �� �� �� ����... ��� �����...
		txt3.string = "                            !WFMKU SSFLM YFNR WLU XJNFQLIE LK XP ENJTS JL EUFP EVA JD";// �� ��� ���� �� ����� �� �� �������� ��� ���� ����� �����!
	}


	if (DialogIndex == 33)
	{
		txt1.string = "                                          ...LLKB EG JM...JL XJATFS WJA JL XJATFS WJA";// ��� ������ �� ��� ������ ��...�� �� ����...
		txt2.string = "                                                                !?JNMM ERFT EVA EM EM";// �� �� ��� ���� ����?!
		txt3.string = "                                 ..PCFUM EVAU JJHB ,PCFUM EGJA...HHHQ,PCFUM WL XJATFS";// ������ �� �����,����...���� �����, ���� ���� �����..
	}


	if (DialogIndex == 34)
	{
		txt1.string = "                                                                      .VKLL HTKFM JNA";// ��� ����� ����.
		txt2.string = "                            ...JVFA DJTFV ,JQFJ ....OOOQ ?VMAB ,JD ?VMAB EM ? VMAB EA";// �� ���� ? �� ����? ��, ����? ����.... ����, ����� ����...
		txt3.string = "                            ...JLU TMGHML XFJE JVNMAVE AL DFPU JL TJKGM EG IFUQ EHJLO";// ����� ���� �� ����� �� ���� �� ������� ���� ������ ���...
	}

	if (DialogIndex == 35)
	{
		txt1.string = "                                ...FNVFA XJUQHM JLFA XJDDRL XC LKVOV EBFI JL EUPV ,YK";// ��, ���� �� ���� ����� �� ������ ���� ������ �����...
		txt2.string = "                                             ?JLU UATE LP LITCAE SJQOM AL !ATSFB-LPNJ";// ����-�����! �� ����� ������ �� ���� ���? 
		txt3.string = "                                                            !JNMM DTV ENAFB !JNMM DTV";// ��� ����! ����� ��� ����!
	}

	if (DialogIndex == 36)
	{
		txt1.string = "                                                                        JLU AFE JVARM";// ����� ��� ���
		txt2.string = "                                        ?'QATSEGJF' YAK XJDBKM XVA ,FVFA JL TFKMV AFB";// ��� ����� �� ����, ��� ������ ��� "��������"?
		txt3.string = "                                   ...ELAUE VJJTQO FMK ,TJGHAF FB UMVUA JNA AFB ,BFGP";// ����, ��� ��� ����� �� ������, ��� ������ �����...
	}


	if (DialogIndex == 37)
	{
		txt1.string = "                                                          LBMI AJ ,ENMGEL EKHM EVA EM";// �� ��� ���� ������, �� ����
		txt2.string = "                                    ...OPVEL JM XP YJA ,DBL CFCHV JL YJMAV ,DBL CFCHV";// ����� ���, ����� �� ����� ���, ��� �� �� �����...
		txt3.string = "                                     ?ZFSUME WTD FLJQA ONKN AL EVA XA WVFA FNJMGJ WJA";// ��� ������ ���� �� ��� �� ���� ����� ��� ������?
	}


	if (DialogIndex == 38)
	{
		txt1.string = "                                       .XJGFTHL JPBI YFTUJK UJ EUNM JLU CFLFKJOQL JFA";// ��� ��������� ��� ���� �� ������ ���� �������.
		txt2.string = "                          XJGFTH EL AFRML LS TVFJU ELJMB GFQV ELJME VA ZJLHV PDFJ JNA";// ��� ���� ����� �� ����� ���� ����� ����� �� ����� �� ������
		txt3.string = "                                                      ?GFT YJLFM ITOE VA VJAT JL DJCV";// ���� �� ���� �� ���� ����� ���?
	}


	if (DialogIndex == 39)
	{
		txt1.string = "                                                .XKB ETFJ JVJJE ,EBFT YAK EJEF JAFFLE";// ������ ���� ��� ����, ����� ���� ���.
		txt2.string = "                                                      ...XJPCFUME VJBB EUJCQ ...HHHHQ";// �����... ����� ���� ��������...
		txt3.string = "                                               .JL YJA YFJUT FLJQA VJNFKM WJTR JNA EM";// �� ��� ���� ������ ����� ����� ��� ��.
	}


	if (DialogIndex == 40)
	{
		txt1.string = "                                                                   !LPFC EGJA JD OKJA";// ���� �� ���� ����!
		txt2.string = "                                                ...ZAB FEUM WL PSVNU BUFH JNA EJNU ST";// �� ���� ��� ���� ����� �� ���� ���...
		txt3.string = "                                                           !ZA HFVN EUPV ?EM PDFJ EVA";// ��� ���� ��? ���� ���� ��!
	}

	if (DialogIndex == 41)
	{
		txt1.string = "                                               .XJBTFP XFU YAK YJA .WVFA FHSJ AL XLUV";// ���� �� ���� ����. ��� ��� ��� ������.
		txt2.string = "                                       ?[FMH YFQQLM XP WDVUEL ERTV JLFA !STJ EVA ,JFA";// ���, ��� ���! ���� ���� ������ �� ������ ����?
		txt3.string = "                                      ?FGE EJNBCPE XP TBDL WJTR VMAB JNA ,JMP ,PCT ST";// �� ���, ���, ��� ���� ���� ���� �� ������� ���?
	}

	if (DialogIndex == 42)
	{
		txt1.string = "                                                    .WVFA OQAJ FEUJMU EG WJTR EVAU EM";// �� ���� ���� �� ������ ���� ����.
		txt2.string = "                                           ...VRS EG LP JVBUH ,VFQQFSVEE YJJNPB ,EATV";// ����, ������ ���������, ����� �� �� ���...
		txt3.string = "                                ?PBR EGJAB DJCV ST EJPB YJA !LJLHD WL CJUA JNA ?LJLHD";// �����? ��� ���� �� �����! ��� ���� �� ���� ����� ���?
	}


	if (DialogIndex == 43)
	{
		txt1.string = "                                  .EHJU FNLHVE ,FUJI WJLP JVSTG .LBG HQ EVA ,EATN AFB";// ��� ����, ��� �� ���. ����� ���� ����, ������ ����. 
		txt2.string = "                                                      ?XJNQB OTH DK WL UJ JLFA  ,PMUV";// ����,  ���� �� �� �� ��� �����?
		txt3.string = "                                                        ...VHQE LA HQE YM XJTMFAU FMK";// ��� ������� �� ��� �� ����...
	}


	if (DialogIndex == 44)
	{
		txt1.string = "                                                            ?QFTJO JLP VKQU ,VJJHB EM";// �� �����, ���� ��� �����?
		txt2.string = "                                  !EGE TDFFOE XP XFJE CJREL DFP WJTR JNA ,ESNV TEM FN";// �� ��� ����, ��� ���� ��� ����� ���� �� ������ ���! 
		txt3.string = "                                                    ...VJVVFQJE ELAU ?YK OTH JDK EATV";// ���� ��� ��� ��? ���� ��������...
	}

	if (DialogIndex == 45)
	{
		txt1.string = "                                                                                  ?AE";// ��?
		txt2.string = "                            JL WFOHV VMAB GA EGE XFSMB VFJLFLVJEEM VHA DFP EG XA EATV";// ���� �� �� ��� ��� ����������� ����� ��� �� ���� ����� ��
		txt3.string = "                                                               ..ILO OQJR JVLKA LFMVA";// ����� ����� ���� ���..
	}

	if (DialogIndex == 46)
	{
		txt1.string = "                                                          .JMRPB EDNQ JPBR LU UJA JNA";// ��� ��� �� ���� ���� �����.
		txt2.string = "                                                           ?EGK JIOJLFE WJTDM EVA !EA";// ��! ��� ����� ������� ���?
		txt3.string = "                                                    !IOJJTS OFGJ'C EVA !IOJJTS OFGJ'C";// ����� ������! ��� ����� ������!
	}


	if (DialogIndex == 47)
	{
		txt1.string = "                                              DMJM VLVB WVFA JVJEJG JUFSB ?PMUN EM FN";// �� �� ����? ����� ������ ���� ���� ����
		txt2.string = "                                              ....YJJNFPM ALE  VA SHUAF XKHVA JNA BFI";// ��� ��� ����� ����� ��  ��� �������....
		txt3.string = "                                          VTFUSV JUFBJU XP FIFLE VFARFV LP XDSFM PDJM";// ���� ����� �� ������ ����� �� ������ ������
	}


	if (DialogIndex == 48)
	{
		txt1.string = "                                             !!!EKK JLA TBDV LA WLU OJSTNE AL JNA SJU";// ��� ��� �� ������ ��� �� ���� ��� ���!!!
		txt2.string = "                                         ...E'RHNF ELRS LU VFHJDBE TOMLIL XVPCE ,XFLU";// ����, ����� ������ ������� �� ���� ����'�...
		txt3.string = "                                ...JLRA WLU DKE !AVUSUJS LFKA WMM DHQM AL JNA AFB AFB";// ��� ��� ��� �� ���� ��� ���� �������! ��� ��� ����...
	}


	if (DialogIndex == 49)
	{
		txt1.string = "                                                         WVFA JVOQV SFJDB AL ?EM ,?EM";// ��?, ��? �� ����� ����� ����
		txt2.string = "                                                               ...ECREB GP XPQ JVSHJU";// ������ ��� �� �����...
		txt3.string = "                                                       ...JL ERR ELAU XVO ,YMTB IIIOQ";// ����� ����, ��� ���� ��� ��...
	}


	if (DialogIndex == 50)
	{
		txt1.string = "                                   .XJJBTP XJTQK LU VFMU YNUM JNA .YMGB VPCE SFJDB FA";// �� ����� ���� ����. ��� ���� ���� �� ����� ������. 
		txt2.string = "                                          ?VJNLKL VRLMFME XJME VFMK JEM PDFJ EVA JLFA";// ���� ��� ���� ��� ���� ���� �������  ������?
		txt3.string = "                        'DM BLFS' BALSJTINAS LU EKJTBB JLU JFNML DFAM JL JNFJH SJQFQE";// ������ ����� �� ���� ����� ��� ������ �� ���������� '���� ��'
	}



	if (DialogIndex == 51)
	{
		txt1.string = "                            .SJQFQE VA JL XJARFM DRJK VFQRLF YAK TAUJEL ZJDPM JNA ,AL";// ��, ��� ����� ������ ��� ������ ���� ������ �� �� ������.
		txt2.string = "                                                ...VFJFQJDP JTDO LU YJJNP EG LKE EATV";// ���� ��� �� ����� �� ���� ��������...
		txt3.string = "                             !?AL SJQFQE VARFE LU ENJROB LJQK LP FNTBJD JMP ,PCT EJNU";// ���� ���, ��� ������ �� ���� ������ �� ����� ������ ��?!
	}


	if (DialogIndex == 52)
	{
		txt1.string = "                                                                                 1234";// 1234
		txt2.string = "                                                                     ....WVFA PMUN FN";// �� ���� ����....
		txt3.string = "                                           ...!LAQN VARMN VUBJ EGJAB JVFA JLAUV ,JBGP";// ����, ����� ���� ����� ���� ����� ����!...
	}


	if (DialogIndex == 53)
	{
		txt1.string = "                                                             !XJHTQ JTFBRM DJL VTFFKB";// ������ ��� ������ �����!
		txt2.string = "                                   ELPM ELPM YEL VFRQFSF EAFFS EAFFS VFUFP XEF !ERJBB";// �����! ��� ����� ����� ����� ������� ��� ���� ����
		txt3.string = "                                                                 .VTFFKM [FH XFSM LKB";// ��� ���� ��� ������.
	}


	if (DialogIndex == 54)
	{
		txt1.string = "                                                                 ?ZJNOM EVA EM ?ZJNOM";// �����? �� ��� �����?
		txt2.string = "                                                                   ?EQ TKFM EVA EM GA";// �� �� ��� ���� ��?
		txt3.string = "                                   ...FN JD !?HJLRM VMAB EVA EM !?XJSOPB VHLRE EVA EM";// �� ��� ����� ������?! �� ��� ���� �����?! �� ��...
	}


	if (DialogIndex == 55)
	{
		txt1.string = "                                               !YHLFUL VHVM WLRA EUPNU EM VA JL WFOHV";// ����� �� �� �� ����� ���� ���� ������!
		txt2.string = "                                 ...XJBFIE XJMJE TKGL ,EKK EHNE EGJA JL EUPV ENFAB GA";// �� ����� ���� �� ���� ���� ���, ���� ����� ������...
		txt3.string = "                                                          ...ETGP WMM WTIRA JNAU HJNN";// ���� ���� ����� ��� ����...
	}

	if (DialogIndex == 56)
	{
		txt1.string = "                             ?XJNQB UJ EM FJUKP [JREL TUQA EHFVQ WLU VFNHE YFLME LENM";// ���� ����� ����� ��� ����� ���� ����� ����� �� �� �����?
		txt2.string = "                                                                         !EKLME JVUFF";// ����� �����!
		txt3.string = "                                    ?EHFVQE VFNHE WFVB WL UJ EM [JREL TUQA YFLME LENM";// ���� ����� ���� ����� �� �� �� ���� ����� ������?
	}
}

function SetDialog (X)
{
	DialogIndex = DialogIndex + 1;
}

function ShowDialog
{
	DialogChoice = 0;
	SetDialogOptions();
	ShowText();
	Dialog.visible = on;
}