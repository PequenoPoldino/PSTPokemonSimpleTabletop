require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_PSTF0_2()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setFormType("sheetTemplate");
    obj:setDataType("PST.com.kanto");
    obj:setTitle("PSTF0.2");
    obj:setName("PSTF0_2");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setLeft(20);
    obj.tabControl1:setTop(20);
    obj.tabControl1:setWidth(1050);
    obj.tabControl1:setHeight(560);
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Treinador");
    obj.tab1:setName("tab1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.tab1);
    obj.rectangle1:setTop(0);
    obj.rectangle1:setWidth(150);
    obj.rectangle1:setHeight(760);
    obj.rectangle1:setColor("black");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.tab1);
    obj.image1:setSRC("/img/walp3.jpg");
    obj.image1:setLeft(100);
    obj.image1:setTop(-15);
    obj.image1:setWidth(1000);
    obj.image1:setHeight(760);
    obj.image1:setName("image1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.tab1);
    obj.label1:setLeft(140);
    obj.label1:setTop(20);
    obj.label1:setText("GERAL");
    obj.label1:setName("label1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.tab1);
    obj.edit1:setField("name");
    obj.edit1:setLeft(20);
    obj.edit1:setTop(55);
    obj.edit1:setWidth(280);
    obj.edit1:setTransparent(true);
    obj.edit1:setName("edit1");

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.tab1);
    obj.horzLine1:setLeft(20);
    obj.horzLine1:setTop(80);
    obj.horzLine1:setWidth(280);
    obj.horzLine1:setStrokeColor("#bf4545");
    obj.horzLine1:setName("horzLine1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.tab1);
    obj.label2:setLeft(20);
    obj.label2:setTop(80);
    obj.label2:setText("nome");
    obj.label2:setName("label2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.tab1);
    obj.edit2:setField("age");
    obj.edit2:setLeft(20);
    obj.edit2:setTop(105);
    obj.edit2:setWidth(80);
    obj.edit2:setTransparent(true);
    obj.edit2:setName("edit2");

    obj.horzLine2 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine2:setParent(obj.tab1);
    obj.horzLine2:setLeft(20);
    obj.horzLine2:setTop(130);
    obj.horzLine2:setWidth(80);
    obj.horzLine2:setStrokeColor("#bf4545");
    obj.horzLine2:setName("horzLine2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.tab1);
    obj.label3:setLeft(20);
    obj.label3:setTop(130);
    obj.label3:setText("idade");
    obj.label3:setName("label3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.tab1);
    obj.edit3:setField("labs");
    obj.edit3:setLeft(110);
    obj.edit3:setTop(105);
    obj.edit3:setWidth(85);
    obj.edit3:setTransparent(true);
    obj.edit3:setName("edit3");

    obj.horzLine3 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine3:setParent(obj.tab1);
    obj.horzLine3:setLeft(110);
    obj.horzLine3:setTop(130);
    obj.horzLine3:setWidth(85);
    obj.horzLine3:setStrokeColor("#bf4545");
    obj.horzLine3:setName("horzLine3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.tab1);
    obj.label4:setLeft(110);
    obj.label4:setTop(130);
    obj.label4:setText("peso");
    obj.label4:setName("label4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.tab1);
    obj.edit4:setField("H8");
    obj.edit4:setLeft(205);
    obj.edit4:setTop(105);
    obj.edit4:setWidth(95);
    obj.edit4:setTransparent(true);
    obj.edit4:setName("edit4");

    obj.horzLine4 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine4:setParent(obj.tab1);
    obj.horzLine4:setLeft(205);
    obj.horzLine4:setTop(130);
    obj.horzLine4:setWidth(95);
    obj.horzLine4:setStrokeColor("#bf4545");
    obj.horzLine4:setName("horzLine4");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.tab1);
    obj.label5:setLeft(205);
    obj.label5:setTop(130);
    obj.label5:setText("altura");
    obj.label5:setName("label5");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.tab1);
    obj.edit5:setField("Monei");
    obj.edit5:setLeft(20);
    obj.edit5:setTop(150);
    obj.edit5:setWidth(280);
    obj.edit5:setTransparent(true);
    obj.edit5:setName("edit5");

    obj.horzLine5 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine5:setParent(obj.tab1);
    obj.horzLine5:setLeft(20);
    obj.horzLine5:setTop(175);
    obj.horzLine5:setWidth(280);
    obj.horzLine5:setStrokeColor("#bf4545");
    obj.horzLine5:setName("horzLine5");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.tab1);
    obj.label6:setLeft(20);
    obj.label6:setTop(175);
    obj.label6:setText("₽");
    obj.label6:setName("label6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.tab1);
    obj.edit6:setField("player");
    obj.edit6:setLeft(20);
    obj.edit6:setTop(190);
    obj.edit6:setWidth(280);
    obj.edit6:setTransparent(true);
    obj.edit6:setName("edit6");

    obj.horzLine6 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine6:setParent(obj.tab1);
    obj.horzLine6:setLeft(20);
    obj.horzLine6:setTop(215);
    obj.horzLine6:setWidth(280);
    obj.horzLine6:setStrokeColor("#bf4545");
    obj.horzLine6:setName("horzLine6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.tab1);
    obj.label7:setLeft(20);
    obj.label7:setTop(215);
    obj.label7:setText("Jogador");
    obj.label7:setName("label7");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.tab1);
    obj.rectangle2:setWidth(280);
    obj.rectangle2:setLeft(20);
    obj.rectangle2:setTop(245);
    obj.rectangle2:setHeight(275);
    obj.rectangle2:setColor("black");
    obj.rectangle2:setStrokeColor("#bf4545");
    obj.rectangle2:setStrokeSize(3);
    obj.rectangle2:setName("rectangle2");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.tab1);
    obj.label8:setLeft(85);
    obj.label8:setTop(365);
    obj.label8:setWidth(280);
    obj.label8:setText("Imagem do Personagem");
    obj.label8:setName("label8");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.tab1);
    obj.image2:setField("imagemDoPersonagem");
    obj.image2:setEditable(true);
    obj.image2:setStyle("autoFit");
    obj.image2:setLeft(20);
    obj.image2:setTop(245);
    obj.image2:setWidth(280);
    obj.image2:setHeight(275);
    obj.image2:setName("image2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.tab1);
    obj.rectangle3:setLeft(315);
    obj.rectangle3:setTop(0);
    obj.rectangle3:setWidth(5);
    obj.rectangle3:setHeight(555);
    obj.rectangle3:setColor("#bf4545");
    obj.rectangle3:setName("rectangle3");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.tab1);
    obj.label9:setLeft(493);
    obj.label9:setTop(20);
    obj.label9:setText("PERÍCIAS");
    obj.label9:setName("label9");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.tab1);
    obj.flowLayout1:setLeft(350);
    obj.flowLayout1:setTop(80);
    obj.flowLayout1:setWidth(180);
    obj.flowLayout1:setAutoHeight(true);
    obj.flowLayout1:setOrientation("horizontal");
    obj.flowLayout1:setName("flowLayout1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.flowLayout1);
    obj.button1:setText("Sobrevivência");
    obj.button1:setWidth(100);
    obj.button1:setName("button1");

    obj.flowLineBreak1 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak1:setParent(obj.flowLayout1);
    obj.flowLineBreak1:setName("flowLineBreak1");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.flowLayout1);
    obj.rectangle4:setWidth(100);
    obj.rectangle4:setHeight(70);
    obj.rectangle4:setColor("black");
    obj.rectangle4:setStrokeColor("#bf4545");
    obj.rectangle4:setStrokeSize(3);
    obj.rectangle4:setName("rectangle4");

    obj.flowLineBreak2 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak2:setParent(obj.flowLayout1);
    obj.flowLineBreak2:setName("flowLineBreak2");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.tab1);
    obj.edit7:setField("sob");
    obj.edit7:setLeft(350);
    obj.edit7:setType("number");
    obj.edit7:setTop(102);
    obj.edit7:setMax(100);
    obj.edit7:setWidth(100);
    obj.edit7:setHeight(70);
    obj.edit7:setTransparent(true);
    obj.edit7:setName("edit7");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setFontSize(40);
    obj.edit7:setAlign("none");

    obj.flowLayout2 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout2:setParent(obj.tab1);
    obj.flowLayout2:setLeft(350);
    obj.flowLayout2:setTop(180);
    obj.flowLayout2:setWidth(180);
    obj.flowLayout2:setAutoHeight(true);
    obj.flowLayout2:setOrientation("horizontal");
    obj.flowLayout2:setName("flowLayout2");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.flowLayout2);
    obj.button2:setText("Ginástica");
    obj.button2:setWidth(100);
    obj.button2:setName("button2");

    obj.flowLineBreak3 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak3:setParent(obj.flowLayout2);
    obj.flowLineBreak3:setName("flowLineBreak3");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.flowLayout2);
    obj.rectangle5:setWidth(100);
    obj.rectangle5:setHeight(70);
    obj.rectangle5:setColor("black");
    obj.rectangle5:setStrokeColor("#bf4545");
    obj.rectangle5:setStrokeSize(3);
    obj.rectangle5:setName("rectangle5");

    obj.flowLineBreak4 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak4:setParent(obj.flowLayout2);
    obj.flowLineBreak4:setName("flowLineBreak4");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.tab1);
    obj.edit8:setField("gym");
    obj.edit8:setLeft(350);
    obj.edit8:setType("number");
    obj.edit8:setTop(202);
    obj.edit8:setMax(100);
    obj.edit8:setWidth(100);
    obj.edit8:setHeight(70);
    obj.edit8:setTransparent(true);
    obj.edit8:setName("edit8");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setFontSize(40);
    obj.edit8:setAlign("none");

    obj.flowLayout3 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout3:setParent(obj.tab1);
    obj.flowLayout3:setLeft(350);
    obj.flowLayout3:setTop(280);
    obj.flowLayout3:setWidth(180);
    obj.flowLayout3:setAutoHeight(true);
    obj.flowLayout3:setOrientation("horizontal");
    obj.flowLayout3:setName("flowLayout3");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.flowLayout3);
    obj.button3:setText("Percepção");
    obj.button3:setWidth(100);
    obj.button3:setName("button3");

    obj.flowLineBreak5 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak5:setParent(obj.flowLayout3);
    obj.flowLineBreak5:setName("flowLineBreak5");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.flowLayout3);
    obj.rectangle6:setWidth(100);
    obj.rectangle6:setHeight(70);
    obj.rectangle6:setColor("black");
    obj.rectangle6:setStrokeColor("#bf4545");
    obj.rectangle6:setStrokeSize(3);
    obj.rectangle6:setName("rectangle6");

    obj.flowLineBreak6 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak6:setParent(obj.flowLayout3);
    obj.flowLineBreak6:setName("flowLineBreak6");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.tab1);
    obj.edit9:setField("per");
    obj.edit9:setLeft(350);
    obj.edit9:setTop(302);
    obj.edit9:setMax(100);
    obj.edit9:setWidth(100);
    obj.edit9:setHeight(70);
    obj.edit9:setTransparent(true);
    obj.edit9:setName("edit9");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setFontSize(40);
    obj.edit9:setAlign("none");

    obj.flowLayout4 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout4:setParent(obj.tab1);
    obj.flowLayout4:setLeft(595);
    obj.flowLayout4:setTop(80);
    obj.flowLayout4:setWidth(180);
    obj.flowLayout4:setAutoHeight(true);
    obj.flowLayout4:setOrientation("horizontal");
    obj.flowLayout4:setName("flowLayout4");

    obj.cnh = GUI.fromHandle(_obj_newObject("button"));
    obj.cnh:setParent(obj.flowLayout4);
    obj.cnh:setText("Conhecimento");
    obj.cnh:setName("cnh");
    obj.cnh:setWidth(100);

    obj.flowLineBreak7 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak7:setParent(obj.flowLayout4);
    obj.flowLineBreak7:setName("flowLineBreak7");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.flowLayout4);
    obj.rectangle7:setWidth(100);
    obj.rectangle7:setHeight(70);
    obj.rectangle7:setColor("black");
    obj.rectangle7:setStrokeColor("#bf4545");
    obj.rectangle7:setStrokeSize(3);
    obj.rectangle7:setName("rectangle7");

    obj.flowLineBreak8 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak8:setParent(obj.flowLayout4);
    obj.flowLineBreak8:setName("flowLineBreak8");

    obj.conhecimentosAdq = GUI.fromHandle(_obj_newObject("popup"));
    obj.conhecimentosAdq:setParent(obj.flowLayout4);
    obj.conhecimentosAdq:setName("conhecimentosAdq");
    obj.conhecimentosAdq:setTop(-40);
    obj.conhecimentosAdq:setWidth(190);
    obj.conhecimentosAdq:setHeight(150);
    obj.conhecimentosAdq:setBackOpacity(0.5);

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.conhecimentosAdq);
    obj.label10:setText("Especialidades");
    obj.label10:setTop(13);
    obj.label10:setLeft(53);
    obj.label10:setName("label10");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.conhecimentosAdq);
    obj.textEditor1:setField("cadq");
    obj.textEditor1:setLeft(5);
    obj.textEditor1:setTop(40);
    obj.textEditor1:setWidth(180);
    obj.textEditor1:setHeight(105);
    obj.textEditor1:setTransparent(false);
    obj.textEditor1:setName("textEditor1");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.tab1);
    obj.edit10:setField("conh");
    obj.edit10:setLeft(595);
    obj.edit10:setType("number");
    obj.edit10:setTop(102);
    obj.edit10:setMax(100);
    obj.edit10:setWidth(100);
    obj.edit10:setHeight(70);
    obj.edit10:setTransparent(true);
    obj.edit10:setName("edit10");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setFontSize(40);
    obj.edit10:setAlign("none");

    obj.flowLayout5 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout5:setParent(obj.tab1);
    obj.flowLayout5:setLeft(595);
    obj.flowLayout5:setTop(180);
    obj.flowLayout5:setWidth(180);
    obj.flowLayout5:setAutoHeight(true);
    obj.flowLayout5:setOrientation("horizontal");
    obj.flowLayout5:setName("flowLayout5");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.flowLayout5);
    obj.button4:setText("Intuição");
    obj.button4:setWidth(100);
    obj.button4:setName("button4");

    obj.flowLineBreak9 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak9:setParent(obj.flowLayout5);
    obj.flowLineBreak9:setName("flowLineBreak9");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.flowLayout5);
    obj.rectangle8:setWidth(100);
    obj.rectangle8:setHeight(70);
    obj.rectangle8:setColor("black");
    obj.rectangle8:setStrokeColor("#bf4545");
    obj.rectangle8:setStrokeSize(3);
    obj.rectangle8:setName("rectangle8");

    obj.flowLineBreak10 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak10:setParent(obj.flowLayout5);
    obj.flowLineBreak10:setName("flowLineBreak10");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.tab1);
    obj.edit11:setField("intu");
    obj.edit11:setType("number");
    obj.edit11:setLeft(595);
    obj.edit11:setTop(202);
    obj.edit11:setMax(100);
    obj.edit11:setWidth(100);
    obj.edit11:setHeight(70);
    obj.edit11:setTransparent(true);
    obj.edit11:setName("edit11");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setFontSize(40);
    obj.edit11:setAlign("none");

    obj.flowLayout6 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout6:setParent(obj.tab1);
    obj.flowLayout6:setLeft(595);
    obj.flowLayout6:setTop(280);
    obj.flowLayout6:setWidth(180);
    obj.flowLayout6:setAutoHeight(true);
    obj.flowLayout6:setOrientation("horizontal");
    obj.flowLayout6:setName("flowLayout6");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.flowLayout6);
    obj.button5:setText("Charme");
    obj.button5:setWidth(100);
    obj.button5:setName("button5");

    obj.flowLineBreak11 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak11:setParent(obj.flowLayout6);
    obj.flowLineBreak11:setName("flowLineBreak11");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.flowLayout6);
    obj.rectangle9:setWidth(100);
    obj.rectangle9:setHeight(70);
    obj.rectangle9:setColor("black");
    obj.rectangle9:setStrokeColor("#bf4545");
    obj.rectangle9:setStrokeSize(3);
    obj.rectangle9:setName("rectangle9");

    obj.flowLineBreak12 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak12:setParent(obj.flowLayout6);
    obj.flowLineBreak12:setName("flowLineBreak12");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.tab1);
    obj.edit12:setField("char");
    obj.edit12:setType("number");
    obj.edit12:setLeft(595);
    obj.edit12:setTop(302);
    obj.edit12:setMax(100);
    obj.edit12:setWidth(100);
    obj.edit12:setHeight(70);
    obj.edit12:setTransparent(true);
    obj.edit12:setName("edit12");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setFontSize(40);
    obj.edit12:setAlign("none");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.tab1);
    obj.image3:setLeft(285);
    obj.image3:setTop(157);
    obj.image3:setWidth(480);
    obj.image3:setHeight(480);
    obj.image3:setSRC("/img/divisorpkm.png");
    obj.image3:setName("image3");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.tab1);
    obj.image4:setLeft(285);
    obj.image4:setTop(157);
    obj.image4:setWidth(480);
    obj.image4:setHeight(480);
    obj.image4:setSRC("/img/divisorpkm.png");
    obj.image4:setName("image4");

    obj.flowLayout7 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout7:setParent(obj.tab1);
    obj.flowLayout7:setLeft(350);
    obj.flowLayout7:setTop(420);
    obj.flowLayout7:setWidth(180);
    obj.flowLayout7:setAutoHeight(true);
    obj.flowLayout7:setOrientation("horizontal");
    obj.flowLayout7:setName("flowLayout7");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.flowLayout7);
    obj.button6:setText("Pontos Totais");
    obj.button6:setWidth(100);
    obj.button6:setName("button6");

    obj.flowLineBreak13 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak13:setParent(obj.flowLayout7);
    obj.flowLineBreak13:setName("flowLineBreak13");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.flowLayout7);
    obj.rectangle10:setWidth(100);
    obj.rectangle10:setHeight(70);
    obj.rectangle10:setColor("black");
    obj.rectangle10:setStrokeColor("#bf4545");
    obj.rectangle10:setStrokeSize(3);
    obj.rectangle10:setName("rectangle10");

    obj.flowLineBreak14 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak14:setParent(obj.flowLayout7);
    obj.flowLineBreak14:setName("flowLineBreak14");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.tab1);
    obj.edit13:setField("PT");
    obj.edit13:setType("number");
    obj.edit13:setLeft(350);
    obj.edit13:setTop(440);
    obj.edit13:setMax(100);
    obj.edit13:setWidth(100);
    obj.edit13:setHeight(70);
    obj.edit13:setTransparent(true);
    obj.edit13:setName("edit13");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setFontSize(40);
    obj.edit13:setAlign("none");

    obj.flowLayout8 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout8:setParent(obj.tab1);
    obj.flowLayout8:setLeft(475);
    obj.flowLayout8:setTop(420);
    obj.flowLayout8:setWidth(180);
    obj.flowLayout8:setAutoHeight(true);
    obj.flowLayout8:setOrientation("horizontal");
    obj.flowLayout8:setName("flowLayout8");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.flowLayout8);
    obj.button7:setText("Pontos Gastos");
    obj.button7:setWidth(100);
    obj.button7:setName("button7");

    obj.flowLineBreak15 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak15:setParent(obj.flowLayout8);
    obj.flowLineBreak15:setName("flowLineBreak15");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.flowLayout8);
    obj.rectangle11:setWidth(100);
    obj.rectangle11:setHeight(70);
    obj.rectangle11:setColor("black");
    obj.rectangle11:setStrokeColor("#bf4545");
    obj.rectangle11:setStrokeSize(3);
    obj.rectangle11:setName("rectangle11");

    obj.flowLineBreak16 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak16:setParent(obj.flowLayout8);
    obj.flowLineBreak16:setName("flowLineBreak16");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.tab1);
    obj.edit14:setField("PG");
    obj.edit14:setType("number");
    obj.edit14:setLeft(475);
    obj.edit14:setTop(440);
    obj.edit14:setMax(100);
    obj.edit14:setWidth(100);
    obj.edit14:setHeight(70);
    obj.edit14:setTransparent(true);
    obj.edit14:setName("edit14");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setFontSize(40);
    obj.edit14:setAlign("none");

    obj.flowLayout9 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout9:setParent(obj.tab1);
    obj.flowLayout9:setLeft(595);
    obj.flowLayout9:setTop(420);
    obj.flowLayout9:setWidth(180);
    obj.flowLayout9:setAutoHeight(true);
    obj.flowLayout9:setOrientation("horizontal");
    obj.flowLayout9:setName("flowLayout9");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.flowLayout9);
    obj.button8:setText("Pontos Avulsos");
    obj.button8:setWidth(100);
    obj.button8:setName("button8");

    obj.flowLineBreak17 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak17:setParent(obj.flowLayout9);
    obj.flowLineBreak17:setName("flowLineBreak17");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.flowLayout9);
    obj.rectangle12:setWidth(100);
    obj.rectangle12:setHeight(70);
    obj.rectangle12:setColor("black");
    obj.rectangle12:setStrokeColor("#bf4545");
    obj.rectangle12:setStrokeSize(3);
    obj.rectangle12:setName("rectangle12");

    obj.flowLineBreak18 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak18:setParent(obj.flowLayout9);
    obj.flowLineBreak18:setName("flowLineBreak18");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.tab1);
    obj.label11:setField("PA");
    obj.label11:setLeft(595);
    obj.label11:setTop(440);
    obj.label11:setWidth(100);
    obj.label11:setHeight(70);
    obj.label11:setName("label11");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setFontSize(40);
    obj.label11:setAlign("none");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.tab1);
    obj.rectangle13:setLeft(728);
    obj.rectangle13:setTop(0);
    obj.rectangle13:setWidth(5);
    obj.rectangle13:setHeight(555);
    obj.rectangle13:setColor("#bf4545");
    obj.rectangle13:setName("rectangle13");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.tab1);
    obj.label12:setLeft(855);
    obj.label12:setTop(20);
    obj.label12:setText("REPUTAÇÃO");
    obj.label12:setName("label12");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.tab1);
    obj.button9:setLeft(850);
    obj.button9:setTop(50);
    obj.button9:setHeight(25);
    obj.button9:setText("Adicionar");
    obj.button9:setWidth(80);
    obj.button9:setName("button9");

    obj.flowLayout10 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout10:setParent(obj.tab1);
    obj.flowLayout10:setLeft(740);
    obj.flowLayout10:setWidth(300);
    obj.flowLayout10:setAutoHeight(true);
    obj.flowLayout10:setTop(76);
    obj.flowLayout10:setOrientation("horizontal");
    obj.flowLayout10:setName("flowLayout10");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.flowLayout10);
    obj.scrollBox1:setWidth(330);
    obj.scrollBox1:setHeight(460);
    obj.scrollBox1:setName("scrollBox1");

    obj.Morerep = GUI.fromHandle(_obj_newObject("recordList"));
    obj.Morerep:setParent(obj.scrollBox1);
    obj.Morerep:setName("Morerep");
    obj.Morerep:setField("reput");
    obj.Morerep:setTemplateForm("tpmREP");
    obj.Morerep:setWidth(300);
    obj.Morerep:setAutoHeight(true);

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Trainer Card");
    obj.tab2:setName("tab2");

    obj.colorComboBox1 = GUI.fromHandle(_obj_newObject("colorComboBox"));
    obj.colorComboBox1:setParent(obj.tab2);
    obj.colorComboBox1:setName("colorComboBox1");
    obj.colorComboBox1:setLeft(20);
    obj.colorComboBox1:setField("colorcard");
    obj.colorComboBox1:setUseAlpha(false);
    obj.colorComboBox1:setTop(0);
    obj.colorComboBox1:setWidth(200);
    obj.colorComboBox1:setHeight(55);
    obj.colorComboBox1:setColor("grey");


                function self.SWcolor()

                     GCTC= "";

                       self.trainercard.color = self.colorComboBox1.color;

                    GCTC = self.trainercard.color ;

                    self.trainercard.color = GCTC;
                end;
        


    obj.colorComboBox2 = GUI.fromHandle(_obj_newObject("colorComboBox"));
    obj.colorComboBox2:setParent(obj.tab2);
    obj.colorComboBox2:setName("colorComboBox2");
    obj.colorComboBox2:setLeft(220);
    obj.colorComboBox2:setField("strokecolorcard");
    obj.colorComboBox2:setUseAlpha(false);
    obj.colorComboBox2:setTop(0);
    obj.colorComboBox2:setWidth(200);
    obj.colorComboBox2:setHeight(55);
    obj.colorComboBox2:setColor("blue");


                function self.SWstrokecolor()

                     GCTCz = "";

                       self.trainercard.strokeColor = self.colorComboBox2.color;

                    GCTCz = self.trainercard.strokeColor ;

                    self.trainercard.strokeColor = GCTCz;

                    self.persoline.color = self.trainercard.strokeColor;
                end;
        


    obj.trainercard = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.trainercard:setParent(obj.tab2);
    obj.trainercard:setName("trainercard");
    obj.trainercard:setLeft(20);
    obj.trainercard:setTop(70);
    obj.trainercard:setWidth(700);
    obj.trainercard:setHeight(450);
    obj.trainercard:setColor("grey");
    obj.trainercard:setStrokeColor("blue");
    obj.trainercard:setStrokeSize(5);

    obj.persoline = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.persoline:setParent(obj.tab2);
    obj.persoline:setLeft(730);
    obj.persoline:setTop(0);
    obj.persoline:setWidth(5);
    obj.persoline:setHeight(555);
    obj.persoline:setName("persoline");
    obj.persoline:setColor("blue");

    obj.lb1 = GUI.fromHandle(_obj_newObject("label"));
    obj.lb1:setParent(obj.tab2);
    obj.lb1:setName("lb1");
    obj.lb1:setText("HP");
    obj.lb1:setLeft(40);
    obj.lb1:setTop(295);
    obj.lb1:setFontSize(20);

    obj.lb2 = GUI.fromHandle(_obj_newObject("label"));
    obj.lb2:setParent(obj.tab2);
    obj.lb2:setName("lb2");
    obj.lb2:setText("=");
    obj.lb2:setLeft(300);
    obj.lb2:setTop(295);

    obj.rec4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rec4:setParent(obj.tab2);
    obj.rec4:setWidth(50);
    obj.rec4:setStrokeSize(3);
    obj.rec4:setName("rec4");
    obj.rec4:setColor("null");
    obj.rec4:setStrokeColor("blue");
    obj.rec4:setLeft(320);
    obj.rec4:setTop(280);

    obj.flowLayout11 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout11:setParent(obj.tab2);
    obj.flowLayout11:setLeft(140);
    obj.flowLayout11:setTop(280);
    obj.flowLayout11:setWidth(330);
    obj.flowLayout11:setAutoHeight(true);
    obj.flowLayout11:setOrientation("horizontal");
    obj.flowLayout11:setName("flowLayout11");

    obj.rec1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rec1:setParent(obj.flowLayout11);
    obj.rec1:setWidth(50);
    obj.rec1:setStrokeSize(3);
    obj.rec1:setName("rec1");
    obj.rec1:setColor("null");
    obj.rec1:setStrokeColor("blue");

    obj.rec2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rec2:setParent(obj.flowLayout11);
    obj.rec2:setWidth(50);
    obj.rec2:setStrokeSize(3);
    obj.rec2:setName("rec2");
    obj.rec2:setColor("null");
    obj.rec2:setStrokeColor("blue");

    obj.rec3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rec3:setParent(obj.flowLayout11);
    obj.rec3:setWidth(50);
    obj.rec3:setStrokeSize(3);
    obj.rec3:setName("rec3");
    obj.rec3:setColor("null");
    obj.rec3:setStrokeColor("blue");

    obj.lb3 = GUI.fromHandle(_obj_newObject("label"));
    obj.lb3:setParent(obj.tab2);
    obj.lb3:setName("lb3");
    obj.lb3:setText("HP");
    obj.lb3:setLeft(40);
    obj.lb3:setTop(295);
    obj.lb3:setFontSize(20);

    obj.lb4 = GUI.fromHandle(_obj_newObject("label"));
    obj.lb4:setParent(obj.tab2);
    obj.lb4:setName("lb4");
    obj.lb4:setText("=");
    obj.lb4:setLeft(300);
    obj.lb4:setTop(355);

    obj.rec8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rec8:setParent(obj.tab2);
    obj.rec8:setWidth(50);
    obj.rec8:setStrokeSize(3);
    obj.rec8:setName("rec8");
    obj.rec8:setColor("null");
    obj.rec8:setStrokeColor("blue");
    obj.rec8:setLeft(320);
    obj.rec8:setTop(340);

    obj.flowLayout12 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout12:setParent(obj.tab2);
    obj.flowLayout12:setLeft(140);
    obj.flowLayout12:setTop(340);
    obj.flowLayout12:setWidth(330);
    obj.flowLayout12:setAutoHeight(true);
    obj.flowLayout12:setOrientation("horizontal");
    obj.flowLayout12:setName("flowLayout12");

    obj.rec5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rec5:setParent(obj.flowLayout12);
    obj.rec5:setWidth(50);
    obj.rec5:setStrokeSize(3);
    obj.rec5:setName("rec5");
    obj.rec5:setColor("null");
    obj.rec5:setStrokeColor("blue");

    obj.rec6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rec6:setParent(obj.flowLayout12);
    obj.rec6:setWidth(50);
    obj.rec6:setStrokeSize(3);
    obj.rec6:setName("rec6");
    obj.rec6:setColor("null");
    obj.rec6:setStrokeColor("blue");

    obj.rec7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rec7:setParent(obj.flowLayout12);
    obj.rec7:setWidth(50);
    obj.rec7:setStrokeSize(3);
    obj.rec7:setName("rec7");
    obj.rec7:setColor("null");
    obj.rec7:setStrokeColor("blue");

    obj.persoline0 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.persoline0:setParent(obj.tab2);
    obj.persoline0:setLeft(25);
    obj.persoline0:setTop(110);
    obj.persoline0:setWidth(180);
    obj.persoline0:setStrokeSize(3);
    obj.persoline0:setName("persoline0");
    obj.persoline0:setStrokeColor("blue");

    obj.persoline100 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.persoline100:setParent(obj.tab2);
    obj.persoline100:setLeft(25);
    obj.persoline100:setTop(170);
    obj.persoline100:setWidth(180);
    obj.persoline100:setStrokeSize(3);
    obj.persoline100:setName("persoline100");
    obj.persoline100:setStrokeColor("blue");

    obj.persoline1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.persoline1:setParent(obj.tab2);
    obj.persoline1:setLeft(80);
    obj.persoline1:setTop(140);
    obj.persoline1:setWidth(3);
    obj.persoline1:setHeight(30);
    obj.persoline1:setName("persoline1");
    obj.persoline1:setColor("blue");

    obj.persoline2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.persoline2:setParent(obj.tab2);
    obj.persoline2:setLeft(140);
    obj.persoline2:setTop(140);
    obj.persoline2:setWidth(3);
    obj.persoline2:setHeight(30);
    obj.persoline2:setName("persoline2");
    obj.persoline2:setColor("blue");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.tab2);
    obj.rectangle14:setWidth(240);
    obj.rectangle14:setHeight(430);
    obj.rectangle14:setLeft(470);
    obj.rectangle14:setTop(80);
    obj.rectangle14:setColor("Null");
    obj.rectangle14:setStrokeColor("blue");
    obj.rectangle14:setStrokeSize(3);
    obj.rectangle14:setName("rectangle14");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.tab2);
    obj.rectangle15:setWidth(240);
    obj.rectangle15:setHeight(430);
    obj.rectangle15:setLeft(470);
    obj.rectangle15:setTop(140);
    obj.rectangle15:setColor("Null");
    obj.rectangle15:setStrokeColor("blue");
    obj.rectangle15:setStrokeSize(3);
    obj.rectangle15:setName("rectangle15");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.tab2);
    obj.image5:setField("imagemDoPersonagem");
    obj.image5:setEditable(false);
    obj.image5:setStyle("autoFit");
    obj.image5:setLeft(473);
    obj.image5:setTop(83);
    obj.image5:setWidth(234);
    obj.image5:setHeight(424);
    obj.image5:setName("image5");

    obj.tabControl2 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl2:setParent(obj.tab2);
    obj.tabControl2:setLeft(750);
    obj.tabControl2:setTop(10);
    obj.tabControl2:setWidth(290);
    obj.tabControl2:setHeight(510);
    obj.tabControl2:setName("tabControl2");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl2);
    obj.tab3:setTitle("Habilidades");
    obj.tab3:setName("tab3");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl2);
    obj.tab4:setTitle("Golpes");
    obj.tab4:setName("tab4");

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl2);
    obj.tab5:setTitle("Recursos");
    obj.tab5:setName("tab5");

    obj._e_event0 = obj.cnh:addEventListener("onClick",
        function (_)
            self.conhecimentosAdq:show('leftCenter', self.cnh);
        end, obj);

    obj._e_event1 = obj.button9:addEventListener("onClick",
        function (_)
            self.Morerep:append();
        end, obj);

    obj._e_event2 = obj.Morerep:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            return Utils.compareStringPtBr(nodeA.nome, nodeB.nome);
        end, obj);

    obj._e_event3 = obj.colorComboBox1:addEventListener("onUserChange",
        function (_)
            self.SWcolor()
        end, obj);

    obj._e_event4 = obj.colorComboBox2:addEventListener("onUserChange",
        function (_)
            self.SWstrokecolor()
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.rec4 ~= nil then self.rec4:destroy(); self.rec4 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.persoline1 ~= nil then self.persoline1:destroy(); self.persoline1 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.flowLineBreak9 ~= nil then self.flowLineBreak9:destroy(); self.flowLineBreak9 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.lb2 ~= nil then self.lb2:destroy(); self.lb2 = nil; end;
        if self.lb4 ~= nil then self.lb4:destroy(); self.lb4 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.flowLayout3 ~= nil then self.flowLayout3:destroy(); self.flowLayout3 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.rec7 ~= nil then self.rec7:destroy(); self.rec7 = nil; end;
        if self.flowLineBreak7 ~= nil then self.flowLineBreak7:destroy(); self.flowLineBreak7 = nil; end;
        if self.rec1 ~= nil then self.rec1:destroy(); self.rec1 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.flowLayout5 ~= nil then self.flowLayout5:destroy(); self.flowLayout5 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.rec2 ~= nil then self.rec2:destroy(); self.rec2 = nil; end;
        if self.flowLayout12 ~= nil then self.flowLayout12:destroy(); self.flowLayout12 = nil; end;
        if self.horzLine2 ~= nil then self.horzLine2:destroy(); self.horzLine2 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.colorComboBox1 ~= nil then self.colorComboBox1:destroy(); self.colorComboBox1 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.rec8 ~= nil then self.rec8:destroy(); self.rec8 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.conhecimentosAdq ~= nil then self.conhecimentosAdq:destroy(); self.conhecimentosAdq = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.flowLineBreak18 ~= nil then self.flowLineBreak18:destroy(); self.flowLineBreak18 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.persoline100 ~= nil then self.persoline100:destroy(); self.persoline100 = nil; end;
        if self.persoline0 ~= nil then self.persoline0:destroy(); self.persoline0 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.Morerep ~= nil then self.Morerep:destroy(); self.Morerep = nil; end;
        if self.tabControl2 ~= nil then self.tabControl2:destroy(); self.tabControl2 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.horzLine5 ~= nil then self.horzLine5:destroy(); self.horzLine5 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.flowLineBreak6 ~= nil then self.flowLineBreak6:destroy(); self.flowLineBreak6 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.flowLayout7 ~= nil then self.flowLayout7:destroy(); self.flowLayout7 = nil; end;
        if self.rec5 ~= nil then self.rec5:destroy(); self.rec5 = nil; end;
        if self.flowLineBreak16 ~= nil then self.flowLineBreak16:destroy(); self.flowLineBreak16 = nil; end;
        if self.trainercard ~= nil then self.trainercard:destroy(); self.trainercard = nil; end;
        if self.flowLayout9 ~= nil then self.flowLayout9:destroy(); self.flowLayout9 = nil; end;
        if self.lb3 ~= nil then self.lb3:destroy(); self.lb3 = nil; end;
        if self.flowLayout10 ~= nil then self.flowLayout10:destroy(); self.flowLayout10 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.flowLineBreak17 ~= nil then self.flowLineBreak17:destroy(); self.flowLineBreak17 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.flowLineBreak1 ~= nil then self.flowLineBreak1:destroy(); self.flowLineBreak1 = nil; end;
        if self.persoline2 ~= nil then self.persoline2:destroy(); self.persoline2 = nil; end;
        if self.flowLineBreak13 ~= nil then self.flowLineBreak13:destroy(); self.flowLineBreak13 = nil; end;
        if self.flowLineBreak14 ~= nil then self.flowLineBreak14:destroy(); self.flowLineBreak14 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.persoline ~= nil then self.persoline:destroy(); self.persoline = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.flowLineBreak3 ~= nil then self.flowLineBreak3:destroy(); self.flowLineBreak3 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.flowLayout11 ~= nil then self.flowLayout11:destroy(); self.flowLayout11 = nil; end;
        if self.flowLineBreak5 ~= nil then self.flowLineBreak5:destroy(); self.flowLineBreak5 = nil; end;
        if self.flowLayout4 ~= nil then self.flowLayout4:destroy(); self.flowLayout4 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.flowLineBreak15 ~= nil then self.flowLineBreak15:destroy(); self.flowLineBreak15 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.flowLineBreak11 ~= nil then self.flowLineBreak11:destroy(); self.flowLineBreak11 = nil; end;
        if self.flowLineBreak10 ~= nil then self.flowLineBreak10:destroy(); self.flowLineBreak10 = nil; end;
        if self.rec6 ~= nil then self.rec6:destroy(); self.rec6 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.flowLineBreak8 ~= nil then self.flowLineBreak8:destroy(); self.flowLineBreak8 = nil; end;
        if self.cnh ~= nil then self.cnh:destroy(); self.cnh = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.horzLine3 ~= nil then self.horzLine3:destroy(); self.horzLine3 = nil; end;
        if self.flowLayout6 ~= nil then self.flowLayout6:destroy(); self.flowLayout6 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.rec3 ~= nil then self.rec3:destroy(); self.rec3 = nil; end;
        if self.horzLine4 ~= nil then self.horzLine4:destroy(); self.horzLine4 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.flowLineBreak12 ~= nil then self.flowLineBreak12:destroy(); self.flowLineBreak12 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.lb1 ~= nil then self.lb1:destroy(); self.lb1 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.colorComboBox2 ~= nil then self.colorComboBox2:destroy(); self.colorComboBox2 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.horzLine6 ~= nil then self.horzLine6:destroy(); self.horzLine6 = nil; end;
        if self.flowLineBreak4 ~= nil then self.flowLineBreak4:destroy(); self.flowLineBreak4 = nil; end;
        if self.flowLineBreak2 ~= nil then self.flowLineBreak2:destroy(); self.flowLineBreak2 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.flowLayout8 ~= nil then self.flowLayout8:destroy(); self.flowLayout8 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newPSTF0_2()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_PSTF0_2();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _PSTF0_2 = {
    newEditor = newPSTF0_2, 
    new = newPSTF0_2, 
    name = "PSTF0_2", 
    dataType = "PST.com.kanto", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "PSTF0.2", 
    description=""};

PSTF0_2 = _PSTF0_2;
Firecast.registrarForm(_PSTF0_2);
Firecast.registrarDataType(_PSTF0_2);

return _PSTF0_2;
