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
    obj.rectangle1:setLeft(10);
    obj.rectangle1:setTop(15);
    obj.rectangle1:setWidth(300);
    obj.rectangle1:setHeight(505);
    obj.rectangle1:setColor("black");
    obj.rectangle1:setStrokeColor("blue");
    obj.rectangle1:setStrokeSize(5);
    obj.rectangle1:setName("rectangle1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.tab1);
    obj.label1:setLeft(140);
    obj.label1:setTop(20);
    obj.label1:setText("GERAL");
    obj.label1:setName("label1");

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

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.tab1);
    obj.rectangle2:setLeft(320);
    obj.rectangle2:setTop(15);
    obj.rectangle2:setWidth(405);
    obj.rectangle2:setHeight(505);
    obj.rectangle2:setColor("black");
    obj.rectangle2:setStrokeColor("blue");
    obj.rectangle2:setStrokeSize(5);
    obj.rectangle2:setName("rectangle2");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.tab1);
    obj.label7:setLeft(540);
    obj.label7:setTop(20);
    obj.label7:setText("PERÍCIAS");
    obj.label7:setName("label7");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.tab1);
    obj.rectangle3:setLeft(735);
    obj.rectangle3:setTop(15);
    obj.rectangle3:setWidth(300);
    obj.rectangle3:setHeight(505);
    obj.rectangle3:setColor("black");
    obj.rectangle3:setStrokeColor("blue");
    obj.rectangle3:setStrokeSize(5);
    obj.rectangle3:setName("rectangle3");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.tab1);
    obj.label8:setLeft(840);
    obj.label8:setTop(20);
    obj.label8:setText("MORAL");
    obj.label8:setName("label8");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.horzLine5 ~= nil then self.horzLine5:destroy(); self.horzLine5 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.horzLine3 ~= nil then self.horzLine3:destroy(); self.horzLine3 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.horzLine2 ~= nil then self.horzLine2:destroy(); self.horzLine2 = nil; end;
        if self.horzLine4 ~= nil then self.horzLine4:destroy(); self.horzLine4 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
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
