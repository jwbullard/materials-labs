(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.0' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[     29644,        609]
NotebookOptionsPosition[     29932,        603]
NotebookOutlinePosition[     30281,        618]
CellTagsIndexPosition[     30238,        615]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{"Framed", "[", "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Column", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<Fracture Lab\>\"", ",", "14", ",", "Bold", ",", 
         "\"\<Helvetica\>\""}], "]"}], ",", "\[IndentingNewLine]", 
       "\"\<Copyright Zachary Grasley 2020\>\"", ",", "\[IndentingNewLine]", 
       "\[IndentingNewLine]", 
       RowBox[{
       "Manipulate", "[", "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"(*", 
         RowBox[{"Fracture", " ", "calculation"}], "*)"}], 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{
          RowBox[{"Kc", "=", "2.2"}], ";", 
          RowBox[{"(*", 
           RowBox[{"MPa", ".", 
            SuperscriptBox["m", 
             RowBox[{"1", "/", "2"}]]}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"amax", "=", 
           RowBox[{"a", "/", "1000"}]}], ";", 
          RowBox[{"(*", "m", "*)"}], "\[IndentingNewLine]", 
          RowBox[{"\[Sigma]fail", "=", 
           FractionBox[
            RowBox[{"Kc", " "}], 
            RowBox[{"Y", " ", 
             RowBox[{"\[Sqrt]", 
              RowBox[{"(", 
               RowBox[{"\[Pi]", " ", "amax"}], ")"}]}]}]]}], ";", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"l", "=", "20"}], ";", 
          RowBox[{"(*", 
           RowBox[{
           "number", " ", "of", " ", "data", " ", "points", " ", "to", " ", 
            RowBox[{"generate", "/", "plot"}]}], "*)"}], 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
           "add", " ", "some", " ", "randomness", " ", "to", " ", "the", " ", 
            "stresses"}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"randomoffset", "=", 
           RowBox[{"RandomReal", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", ".05"}], ",", ".05"}], "}"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"random\[Sigma]fail", "=", 
           RowBox[{"\[Sigma]fail", " ", 
            RowBox[{"(", 
             RowBox[{"1", "+", "randomoffset"}], ")"}]}]}], ";", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"generate", " ", "stress", " ", "data"}], ",", " ", 
            RowBox[{
            "adding", " ", "one", " ", "data", " ", "point", " ", "each", " ",
              "time", " ", "the", " ", "button", " ", "is", " ", 
             "pressed"}]}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"\[Sigma]", "=", 
           RowBox[{"Append", "[", 
            RowBox[{"\[Sigma]", ",", 
             RowBox[{"random\[Sigma]fail", " ", 
              FractionBox["x", "l"]}]}], "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"\[Sigma]data", "=", 
           RowBox[{"Drop", "[", 
            RowBox[{"\[Sigma]", ",", "1"}], "]"}]}], ";", 
          RowBox[{"(*", 
           RowBox[{"delete", " ", "a", " ", "leading", " ", "zero"}], "*)"}], 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{"Plot", " ", "the", " ", "data"}], "*)"}], 
          "\[IndentingNewLine]", 
          RowBox[{"p", "=", 
           RowBox[{"ListPlot", "[", 
            RowBox[{"\[Sigma]data", ",", 
             RowBox[{"Frame", "\[Rule]", "True"}], ",", 
             RowBox[{"FrameLabel", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{
               "\"\<Load step\>\"", ",", 
                "\"\<\!\(\*SubscriptBox[\(\[Sigma]\), \(zz\)]\) (MPa)\>\""}], 
               "}"}]}], ",", 
             RowBox[{"PlotMarkers", "\[Rule]", "\"\<OpenMarkers\>\""}], ",", 
             RowBox[{"PlotRange", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"-", "1"}], ",", 
                RowBox[{"\[Sigma]fail", "*", "1.1"}]}], "}"}]}], ",", 
             RowBox[{"LabelStyle", "\[Rule]", "Large"}]}], "]"}]}], ";", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
           "Loading", " ", "and", " ", "deforming", " ", "the", " ", 
            "dogbone", " ", "image"}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"\[Delta]", "=", 
           RowBox[{
            RowBox[{"Length", "[", "\[Sigma]data", "]"}], "/", "10"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"l0", "=", "10"}], ";", "\n", "\t", 
          RowBox[{"\[Epsilon]", "=", 
           RowBox[{"\[Delta]", "/", "l0"}]}], ";", 
          RowBox[{"\[Epsilon]r", "=", 
           RowBox[{
            RowBox[{"-", "\[Nu]"}], " ", "\[Epsilon]"}]}], ";", "\n", "\t", 
          RowBox[{"length", "=", 
           RowBox[{"l0", "+", "\[Delta]"}]}], ";", 
          RowBox[{"\[Nu]", "=", "0.4"}], ";", "\n", "\t", 
          RowBox[{"R0", "=", "1"}], ";", "\[IndentingNewLine]", 
          RowBox[{"k", "=", 
           RowBox[{"RandomReal", "[", "]"}]}], ";", "\n", "\t", 
          RowBox[{"\[Beta]", "=", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"x", "\[LessEqual]", 
              RowBox[{"20", "-", "1"}]}], ",", "0", ",", "1"}], "]"}]}], ";", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"(*", "Display", "*)"}], "\[IndentingNewLine]", 
          RowBox[{"Grid", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"\"\<\>\"", ",", 
                RowBox[{"Text", "[", 
                 RowBox[{"Style", "[", 
                  RowBox[{
                  "\"\<\!\(\*SubscriptBox[\(\[Sigma]\), \(zz\)]\) (MPa)\>\"", 
                   ",", 
                   RowBox[{"FontSize", "\[Rule]", "Large"}]}], "]"}], "]"}], 
                ",", "\"\<\>\""}], "}"}], ",", "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"GraphicsGrid", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"{", "p", "}"}], "}"}], ",", 
                  RowBox[{"ImageSize", "\[Rule]", 
                   RowBox[{"{", 
                    RowBox[{"450", ",", "450"}], "}"}]}]}], "]"}], ",", 
                RowBox[{"Column", "[", "\[Sigma]data", "]"}], ",", 
                RowBox[{"Graphics", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"Gray", ",", 
                    RowBox[{"Rectangle", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "R0"}], "/", "2"}], "-", 
                    RowBox[{"\[Epsilon]r", " ", "R0"}]}], ",", "0"}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"R0", "/", "2"}], "+", 
                    RowBox[{"\[Epsilon]r", " ", "R0"}]}], ",", "length"}], 
                    "}"}]}], "]"}], ",", 
                    RowBox[{"Rectangle", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1.5"}], ",", 
                    RowBox[{"-", "4"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1.5", ",", "0"}], "}"}]}], "]"}], ",", 
                    RowBox[{"Rectangle", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1.5"}], ",", "length"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1.5", ",", 
                    RowBox[{"length", "+", "4"}]}], "}"}]}], "]"}], ",", 
                    "Red", ",", 
                    RowBox[{"Arrowheads", "[", ".4", "]"}], ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"length", "+", "5"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"length", "+", "7"}]}], "}"}]}], "}"}], "]"}], 
                    ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"-", "5"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"-", "7"}]}], "}"}]}], "}"}], "]"}], ",", 
                    "\[IndentingNewLine]", "White", ",", 
                    RowBox[{"Rectangle", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "R0"}], "/", "2"}], "*", "\[Beta]"}], ",", 
                    RowBox[{
                    RowBox[{"length", "/", "2"}], "+", "k"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"R0", "/", "2"}], "*", "\[Beta]"}], ",", 
                    RowBox[{
                    RowBox[{"length", "/", "2"}], "+", ".2", "+", "k"}]}], 
                    "}"}]}], "]"}]}], "}"}], ",", 
                  RowBox[{"ImageSize", "\[Rule]", "Medium"}]}], "]"}]}], 
               "}"}]}], "}"}], ",", 
            RowBox[{"ItemSize", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Scaled", "[", ".5", "]"}], ",", 
                RowBox[{"Scaled", "[", ".2", "]"}], ",", 
                RowBox[{"Scaled", "[", ".3", "]"}]}], "}"}], "}"}]}], ",", 
            RowBox[{"Alignment", "\[Rule]", "Top"}]}], "]"}]}], ",", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{"Dynamic", " ", "Variables"}], "*)"}], 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"Y", ",", "1", ",", "\"\<Crack Location\>\""}], "}"}], 
           ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"1", "\[Rule]", "\"\<Center\>\""}], ",", 
             RowBox[{"1.1", "\[Rule]", "\"\<Edge\>\""}]}], "}"}], ",", 
           RowBox[{"ControlType", "\[Rule]", "SetterBar"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"a", ",", ".1", ",", "\"\<Crack length, a (mm)\>\""}], 
            "}"}], ",", "0.1", ",", "2", ",", 
           RowBox[{"Appearance", "\[Rule]", "\"\<Open\>\""}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"x", ",", "0"}], "}"}], ",", "None"}], "}"}], 
         "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{
         "Text", "[", 
          "\"\<Please note that changing the crack location or the crack \
length will NOT change the data or the graph. Please press the Reset button \
before changing the crack location and length.\>\"", "]"}], ",", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"(*", "Buttons", "*)"}], "\[IndentingNewLine]", 
         RowBox[{"Button", "[", 
          RowBox[{"\"\<Step the applied force\>\"", ",", 
           RowBox[{"{", 
            RowBox[{"x", "=", 
             RowBox[{"x", "+", "1"}]}], "}"}], ",", 
           RowBox[{"Enabled", "\[Rule]", 
            RowBox[{"Dynamic", "[", 
             RowBox[{"x", "<", "l"}], "]"}]}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Button", "[", 
          RowBox[{"\"\<Reset\>\"", ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"x", "=", "0"}], ",", 
             RowBox[{"Clear", "[", "p", "]"}], ",", 
             RowBox[{"\[Sigma]", "=", 
              RowBox[{"{", "0", "}"}]}], ",", 
             RowBox[{"\[Sigma]data", "=", 
              RowBox[{"{", "0", "}"}]}]}], "}"}]}], "]"}], 
         "\[IndentingNewLine]", ",", 
         RowBox[{"Initialization", "\[RuleDelayed]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"x", "=", "0"}], ",", 
            RowBox[{"\[Sigma]", "=", 
             RowBox[{"{", "}"}]}], ",", 
            RowBox[{"\[Sigma]data", "=", 
             RowBox[{"{", "0", "}"}]}]}], "}"}]}], ",", "\[IndentingNewLine]",
          "\[IndentingNewLine]", 
         RowBox[{"TrackedSymbols", "\[RuleDelayed]", 
          RowBox[{"{", "x", "}"}]}]}], 
        RowBox[{"(*", 
         RowBox[{"Only", " ", "track", " ", "x", " ", 
          RowBox[{"(", 
           RowBox[{"not", " ", "Y", " ", "or", " ", "a"}], ")"}], " ", "so", 
          " ", "that", " ", "changing", " ", "a", " ", "or", " ", "Y", " ", 
          "does", " ", "not", " ", "change", " ", "the", " ", "graph", " ", 
          "or", " ", "\[Sigma]zz", " ", "data"}], "*)"}], 
        "\[IndentingNewLine]", "\[IndentingNewLine]", "]"}]}], 
      "\[IndentingNewLine]", "\[IndentingNewLine]", "}"}], "]"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"FrameMargins", "\[Rule]", "Large"}]}], "]"}]}]], "Input",
 CellOpen->False,
 CellChangeTimes->{{3.7933778291058455`*^9, 3.7933778318137727`*^9}, {
   3.793377881740718*^9, 3.79337788660455*^9}, {3.7933780826401186`*^9, 
   3.7933781531914997`*^9}, {3.793378471271488*^9, 3.7933784761594086`*^9}, 
   3.7933811237068453`*^9, {3.7933819213355846`*^9, 3.793381923851287*^9}, {
   3.7933825567937603`*^9, 3.793382686763731*^9}, {3.79338285867143*^9, 
   3.7933828655433626`*^9}, {3.7933829728898177`*^9, 
   3.7933830078661118`*^9}, {3.793383286081132*^9, 3.79338328925711*^9}, {
   3.793383356515335*^9, 3.793383481045417*^9}, {3.7933836911039953`*^9, 
   3.793383715071212*^9}, {3.7933837523193026`*^9, 3.7933837614665804`*^9}, {
   3.793383860193307*^9, 3.79338387406781*^9}, {3.793384202054593*^9, 
   3.793384204538583*^9}, {3.793384361979023*^9, 3.793384371122983*^9}, {
   3.7933844635337195`*^9, 3.7933845916051226`*^9}, {3.7933846624795933`*^9, 
   3.7933846635315886`*^9}, {3.793384705066558*^9, 3.793384740807903*^9}, {
   3.7933847980405855`*^9, 3.7933847999212894`*^9}, {3.7933848850242167`*^9, 
   3.7933848978089213`*^9}, {3.7933849779006677`*^9, 
   3.7933849994417562`*^9}, {3.793385085864001*^9, 3.7933852727185464`*^9}, {
   3.7933853544719486`*^9, 3.7933853821935587`*^9}, {3.793385492906864*^9, 
   3.7933854973388643`*^9}, {3.793385531818968*^9, 3.7933855846300974`*^9}, {
   3.7933856712746115`*^9, 3.7933856809100275`*^9}, {3.7933857208752155`*^9, 
   3.793385747177022*^9}, {3.793386044782031*^9, 3.7933860921659346`*^9}, {
   3.7933864095983405`*^9, 3.7933864785067673`*^9}, {3.7933865451361704`*^9, 
   3.793386609827772*^9}, {3.793386874944747*^9, 3.7933870655629396`*^9}, {
   3.79338710310299*^9, 3.7933871450042334`*^9}, {3.7933871950375433`*^9, 
   3.793387209011528*^9}, {3.793387545320368*^9, 3.793387600485373*^9}, {
   3.793387635279761*^9, 3.7933876487237453`*^9}, {3.793387758627085*^9, 
   3.79338781315153*^9}, {3.793387865929044*^9, 3.793388074901698*^9}, {
   3.7933881135727415`*^9, 3.79338822211154*^9}, {3.793391957156497*^9, 
   3.793391982133522*^9}, {3.793392615357087*^9, 3.793392757259922*^9}, {
   3.793392793999509*^9, 3.7933928844212956`*^9}, {3.7933931313689175`*^9, 
   3.7933931463039227`*^9}, 3.7933931903400264`*^9, 3.793393597553684*^9, {
   3.793393704859475*^9, 3.7933937380196724`*^9}, {3.793393782523541*^9, 
   3.7933938269406767`*^9}, 3.7933939587169237`*^9, {3.793394008365073*^9, 
   3.793394033262405*^9}, {3.7933940745438223`*^9, 3.793394086276147*^9}, {
   3.7933941772584496`*^9, 3.7933942401948595`*^9}, {3.7933942849639893`*^9, 
   3.793394286312381*^9}, {3.793394329900696*^9, 3.793394488240611*^9}, {
   3.7933953535127087`*^9, 3.7933953741758265`*^9}, {3.7933956517210255`*^9, 
   3.793395908507964*^9}, {3.7933960318402233`*^9, 3.7933960405951834`*^9}, {
   3.793396131770798*^9, 3.793396131938759*^9}, {3.7933962110599475`*^9, 
   3.7933962834227467`*^9}, 3.7933963544000516`*^9, {3.7933964097180767`*^9, 
   3.793396431818534*^9}, {3.7933965415386596`*^9, 3.7933965756832466`*^9}, {
   3.793396668210885*^9, 3.793396720030046*^9}, {3.7933968069225464`*^9, 
   3.793396820341691*^9}, {3.7933969000402794`*^9, 3.793396972818635*^9}, {
   3.793397133747576*^9, 3.7933971450189276`*^9}, {3.793397223195615*^9, 
   3.793397223511566*^9}, {3.7933973290117583`*^9, 3.7933973588093166`*^9}, {
   3.793397397217738*^9, 3.7933973985697355`*^9}, {3.7933974949992037`*^9, 
   3.7933974954872007`*^9}, 3.7933979967471695`*^9, {3.7934001764162197`*^9, 
   3.7934002161401234`*^9}, {3.793400279990408*^9, 3.7934002839943743`*^9}, {
   3.7934003859071484`*^9, 3.7934004684203067`*^9}, {3.7934005564066277`*^9, 
   3.793400571186545*^9}, {3.7934006190445337`*^9, 3.7934006205444794`*^9}, {
   3.7934006928121705`*^9, 3.7934007031256523`*^9}, {3.793400758228571*^9, 
   3.7934008314592233`*^9}, {3.793400904139164*^9, 3.793400912308671*^9}, {
   3.793401767058264*^9, 3.7934018489264526`*^9}, {3.7934019228022346`*^9, 
   3.793401931475865*^9}, {3.7934020333830385`*^9, 3.7934020385015373`*^9}, 
   3.7934020810197506`*^9, {3.7934021430646915`*^9, 3.7934021858903084`*^9}, 
   3.793402232059637*^9, {3.7934023805891867`*^9, 3.793402408958429*^9}, {
   3.793402446941145*^9, 3.793402482689458*^9}, {3.7934025665992937`*^9, 
   3.7934025727711897`*^9}, {3.793402610331139*^9, 3.7934027696647916`*^9}, {
   3.7934028032519045`*^9, 3.7934028089878044`*^9}, {3.793402886628228*^9, 
   3.793402887400216*^9}, {3.793403101226725*^9, 3.7934031082146463`*^9}, {
   3.7934032166390667`*^9, 3.7934032196590185`*^9}, {3.793404034528509*^9, 
   3.7934040605567865`*^9}, {3.793404471941163*^9, 3.7934044742426543`*^9}, {
   3.7934392017829103`*^9, 3.793439230438281*^9}, {3.793440083274135*^9, 
   3.7934400912087917`*^9}, {3.7934403955311937`*^9, 3.793440557418336*^9}, {
   3.7934406563123837`*^9, 3.7934407691233006`*^9}, {3.793440836380762*^9, 
   3.7934409768983817`*^9}, {3.793441007911244*^9, 3.7934410397106085`*^9}, {
   3.7934411013617983`*^9, 3.7934411689893765`*^9}, {3.793441322845349*^9, 
   3.793441323876562*^9}, {3.7934621382682824`*^9, 3.793462138482932*^9}, {
   3.793462236010619*^9, 3.7934622363910723`*^9}, {3.7936142312079124`*^9, 
   3.7936142526068573`*^9}, {3.7936142859224205`*^9, 3.793614308577193*^9}, {
   3.793614349827135*^9, 3.7936145113930707`*^9}, 3.793614556771008*^9, {
   3.793614669919323*^9, 3.7936146826126103`*^9}, {3.793614714562434*^9, 
   3.7936147373216047`*^9}, {3.793614772807001*^9, 3.7936147808439627`*^9}, {
   3.793614866809064*^9, 3.793614872037834*^9}, {3.793614927274658*^9, 
   3.7936149806265574`*^9}, {3.7936150185180187`*^9, 
   3.7936150435876875`*^9}, {3.793617321663933*^9, 3.793617413341357*^9}, {
   3.793617523211671*^9, 3.7936175448904114`*^9}, {3.793617631976699*^9, 
   3.7936176641214695`*^9}, {3.7936177096030235`*^9, 
   3.7936177633231077`*^9}, {3.7936178309498763`*^9, 3.793617929000085*^9}, {
   3.7936179606352844`*^9, 3.793618061572279*^9}, {3.7936181306573305`*^9, 
   3.7936181911730824`*^9}, {3.7936183081107287`*^9, 
   3.7936183099183865`*^9}, {3.793618342147216*^9, 3.7936184621720257`*^9}, {
   3.7936185972432117`*^9, 3.793618607793501*^9}, {3.7936186545252*^9, 
   3.7936187213034678`*^9}, {3.7936187556088743`*^9, 
   3.7936187599035287`*^9}, {3.793618793546768*^9, 3.793618823591917*^9}, 
   3.7936188546927023`*^9, {3.79361922058261*^9, 3.7936192351926737`*^9}, {
   3.793620235228139*^9, 3.7936203380884495`*^9}, 3.793620440350109*^9, {
   3.7936206060365252`*^9, 3.793620611038272*^9}},
 CellLabel->"In[21]:=",ExpressionUUID->"17f3a6e3-12ac-4b0e-a934-38d69eb399eb"],

Cell[BoxData[
 FrameBox[
  TagBox[GridBox[{
     {
      StyleBox["\<\"Fracture Lab\"\>", "Helvetica",
       StripOnInput->False,
       FontSize->14,
       FontWeight->Bold]},
     {"\<\"Copyright Zachary Grasley 2020\"\>"},
     {
      TagBox[
       StyleBox[
        DynamicModuleBox[{$CellContext`a$$ = 0.1, $CellContext`x$$ = 
         0, $CellContext`Y$$ = 1, Typeset`show$$ = True, 
         Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
         Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
         "\"untitled\"", Typeset`specs$$ = {{{
            Hold[$CellContext`Y$$], 1, "Crack Location"}, {
           1 -> "Center", 1.1 -> "Edge"}}, {{
            Hold[$CellContext`a$$], 0.1, "Crack length, a (mm)"}, 0.1, 2}, {{
            Hold[$CellContext`x$$], 0}, 0}, {
           Hold[
            Text[
            "Please note that changing the crack location or the crack length \
will NOT change the data or the graph. Please press the Reset button before \
changing the crack location and length."]], 
           Manipulate`Dump`ThisIsNotAControl}, {
           Hold[
            Button[
            "Step the applied force", {$CellContext`x$$ = $CellContext`x$$ + 
               1}, Enabled -> Dynamic[$CellContext`x$$ < $CellContext`l]]], 
           Manipulate`Dump`ThisIsNotAControl}, {
           Hold[
            Button["Reset", {$CellContext`x$$ = 0, 
              
              Clear[$CellContext`p], $CellContext`\[Sigma] = {
               0}, $CellContext`\[Sigma]data = {0}}]], 
           Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
         869., {237.5, 244.5}}, Typeset`update$$ = 0, Typeset`initDone$$, 
         Typeset`skipInitDone$$ = False, $CellContext`Y$39220$$ = 
         False, $CellContext`a$39221$$ = 0}, 
         DynamicBox[Manipulate`ManipulateBoxes[
          1, StandardForm, 
           "Variables" :> {$CellContext`a$$ = 0.1, $CellContext`x$$ = 
             0, $CellContext`Y$$ = 1}, "ControllerVariables" :> {
             Hold[$CellContext`Y$$, $CellContext`Y$39220$$, False], 
             Hold[$CellContext`a$$, $CellContext`a$39221$$, 0]}, 
           "OtherVariables" :> {
            Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
             Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
             Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
             Typeset`initDone$$, Typeset`skipInitDone$$}, 
           "Body" :> ($CellContext`Kc = 
             2.2; $CellContext`amax = $CellContext`a$$/
              1000; $CellContext`\[Sigma]fail = \
$CellContext`Kc/($CellContext`Y$$ Sqrt[Pi $CellContext`amax]); $CellContext`l = 
             20; $CellContext`randomoffset = 
             RandomReal[{-0.05, 
               0.05}]; $CellContext`random\[Sigma]fail = \
$CellContext`\[Sigma]fail (
               1 + $CellContext`randomoffset); $CellContext`\[Sigma] = 
             Append[$CellContext`\[Sigma], $CellContext`random\[Sigma]fail \
($CellContext`x$$/$CellContext`l)]; $CellContext`\[Sigma]data = 
             Drop[$CellContext`\[Sigma], 1]; $CellContext`p = 
             ListPlot[$CellContext`\[Sigma]data, Frame -> True, 
               FrameLabel -> {
                "Load step", 
                 "\!\(\*SubscriptBox[\(\[Sigma]\), \(zz\)]\) (MPa)"}, 
               PlotMarkers -> "OpenMarkers", 
               PlotRange -> {-1, $CellContext`\[Sigma]fail 1.1}, LabelStyle -> 
               Large]; $CellContext`\[Delta] = 
             Length[$CellContext`\[Sigma]data]/10; $CellContext`l0 = 
             10; $CellContext`\[Epsilon] = \
$CellContext`\[Delta]/$CellContext`l0; $CellContext`\[Epsilon]r = \
(-$CellContext`\[Nu]) $CellContext`\[Epsilon]; $CellContext`length = \
$CellContext`l0 + $CellContext`\[Delta]; $CellContext`\[Nu] = 
             0.4; $CellContext`R0 = 1; $CellContext`k = 
             RandomReal[]; $CellContext`\[Beta] = 
             If[$CellContext`x$$ <= 20 - 1, 0, 1]; Grid[{{"", 
                Text[
                 Style[
                 "\!\(\*SubscriptBox[\(\[Sigma]\), \(zz\)]\) (MPa)", FontSize -> 
                  Large]], ""}, {
                GraphicsGrid[{{$CellContext`p}}, ImageSize -> {450, 450}], 
                Column[$CellContext`\[Sigma]data], 
                Graphics[{Gray, 
                  
                  Rectangle[{(-$CellContext`R0)/
                    2 - $CellContext`\[Epsilon]r $CellContext`R0, 
                    0}, {$CellContext`R0/
                    2 + $CellContext`\[Epsilon]r $CellContext`R0, \
$CellContext`length}], 
                  Rectangle[{-1.5, -4}, {1.5, 0}], 
                  
                  Rectangle[{-1.5, $CellContext`length}, {
                   1.5, $CellContext`length + 4}], Red, 
                  Arrowheads[0.4], 
                  
                  Arrow[{{0, $CellContext`length + 5}, {
                    0, $CellContext`length + 7}}], 
                  Arrow[{{0, -5}, {0, -7}}], White, 
                  
                  Rectangle[{((-$CellContext`R0)/
                    2) $CellContext`\[Beta], $CellContext`length/
                    2 + $CellContext`k}, {($CellContext`R0/
                    2) $CellContext`\[Beta], $CellContext`length/2 + 
                    0.2 + $CellContext`k}]}, ImageSize -> Medium]}}, 
              ItemSize -> {{
                 Scaled[0.5], 
                 Scaled[0.2], 
                 Scaled[0.3]}}, Alignment -> Top]), 
           "Specifications" :> {{{$CellContext`Y$$, 1, "Crack Location"}, {
              1 -> "Center", 1.1 -> "Edge"}, ControlType -> 
              SetterBar}, {{$CellContext`a$$, 0.1, "Crack length, a (mm)"}, 
              0.1, 2, Appearance -> "Open"}, {{$CellContext`x$$, 0}, 0, 
              ControlType -> None}, 
             Text[
             "Please note that changing the crack location or the crack \
length will NOT change the data or the graph. Please press the Reset button \
before changing the crack location and length."], 
             Button[
             "Step the applied force", {$CellContext`x$$ = $CellContext`x$$ + 
                1}, Enabled -> Dynamic[$CellContext`x$$ < $CellContext`l]], 
             Button["Reset", {$CellContext`x$$ = 0, 
               
               Clear[$CellContext`p], $CellContext`\[Sigma] = {
                0}, $CellContext`\[Sigma]data = {0}}]}, 
           "Options" :> {TrackedSymbols :> {$CellContext`x$$}}, 
           "DefaultOptions" :> {}],
          ImageSizeCache->{920., {347., 354.}},
          SingleEvaluation->True],
         Deinitialization:>None,
         DynamicModuleValues:>{},
         Initialization:>({$CellContext`x$$ = 
            0, $CellContext`\[Sigma] = {}, $CellContext`\[Sigma]data = {0}}; 
          Typeset`initDone$$ = True),
         SynchronousInitialization->True,
         UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
         UnsavedVariables:>{Typeset`initDone$$},
         UntrackedVariables:>{Typeset`size$$}], "Manipulate",
        Deployed->True,
        StripOnInput->False],
       Manipulate`InterpretManipulate[1]]}
    },
    DefaultBaseStyle->"Column",
    GridBoxAlignment->{"Columns" -> {{Left}}},
    GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
   "Column"],
  FrameMargins->Large,
  StripOnInput->False]], "Output",
 CellChangeTimes->{{3.793617847970982*^9, 3.7936179302724147`*^9}, {
   3.7936179794763727`*^9, 3.793618062698389*^9}, 3.793618131931673*^9, 
   3.7936181723877077`*^9, {3.7936183011634216`*^9, 3.7936183105459037`*^9}, {
   3.793618364776458*^9, 3.793618430476329*^9}, 3.7936184631481524`*^9, {
   3.7936185816743326`*^9, 3.793618608386469*^9}, {3.7936187238866386`*^9, 
   3.793618770536832*^9}, {3.7936188573778095`*^9, 3.793618872612791*^9}, {
   3.7936192247520046`*^9, 3.793619235835638*^9}, 3.793620343258439*^9, {
   3.7936206076112905`*^9, 3.7936206337249527`*^9}, {3.7936206811215525`*^9, 
   3.7936206858493166`*^9}},
 CellLabel->"Out[21]=",ExpressionUUID->"9135e537-7ca5-4a41-9405-5c57fb9c9ba8"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.793617681169265*^9, 
  3.793617684263536*^9}},ExpressionUUID->"89c1888c-57f6-47c5-bcdd-\
99c7c0144945"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.793617562212951*^9, 3.793617562555519*^9}, 
   3.79361768510312*^9},ExpressionUUID->"ff15dc07-ce8f-4940-a374-\
43cc9c07af4f"]
},
WindowSize->{1064, 1837},
WindowMargins->{{-1088, Automatic}, {Automatic, -391}},
FrontEndVersion->"12.0 for Microsoft Windows (64-bit) (April 8, 2019)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 20025, 394, 19, "Input",ExpressionUUID->"17f3a6e3-12ac-4b0e-a934-38d69eb399eb",
 CellOpen->False],
Cell[21538, 431, 8046, 159, 811, "Output",ExpressionUUID->"9135e537-7ca5-4a41-9405-5c57fb9c9ba8"]
}, Open  ]],
Cell[29599, 593, 152, 3, 28, "Input",ExpressionUUID->"89c1888c-57f6-47c5-bcdd-99c7c0144945"],
Cell[29754, 598, 174, 3, 28, "Input",ExpressionUUID->"ff15dc07-ce8f-4940-a374-43cc9c07af4f"]
}
]
*)

(* NotebookSignature hxTI0DTWTJwV8B1is8IPpLSI *)
