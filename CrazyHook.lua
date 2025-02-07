---------------------------------------------------------
---------------------------------------------------------
----------------- CRAZY HOOK 1.4 UPDATE -----------------
------------- CREATED BY KUBUS_PL AND ZAX37 -------------
---------------------------------------------------------
-------- Scroll down for your own responsibility --------
---------------------------------------------------------
---------------------------------------------------------

version = 1443

ffi = require 'ffi'
bit = require 'bit'
local lfs = require 'lfs'

OR = bit.bor
AND = bit.band
NOT = bit.bnot

GameType = {
	SinglePlayer = 3,
	MultiPlayer = 4,
}

TreasureType = {
	Coin = 0,
	Goldbar = 1,
	Ring = 2,
	Chalice = 3,
	Cross = 4,
	Scepter = 5,
	Gecko = 6,
	Crown = 7,
	Skull = 8,
}

Flags = {
	NoHit            = 1,
	AlwaysActive     = 2,
	Safe             = 4,
	AutoHitDamage    = 8,
	OnElevator       = 0x10,
	Destroy          = 0x10000,
}

Powerup = {
	EndOfLevel       = 9901,
	Warp             = 9902,
	TNTAmmo          = 9904,
	AmmoCurse        = 9905,
	MagicCurse       = 9906,
	HealthCurse      = 9907,
	LifeCurse        = 9908,
	TreasureCurse    = 9909,
	FreezeCurse      = 9910,
	Ghost            = 9911,
	FireSword        = 9912,
	LighteningSword  = 9913,
	IceSword         = 9914,
	PlasmaSword      = 9915,
	Catnip           = 9916,
	Vader            = 9917,
	ExtraLife        = 9918,
}

ObjectType = {
	 Generic          = 1,
	 Player           = 2,
	 Enemy            = 4,
	 PowerUp          = 8,
	 Shot             = 16,
	 PShot            = 32,
	 EShot            = 64,
	 Special          = 128,
	 User1            = 256,
	 User2            = 512,
	 User3            = 1024,
	 User4            = 2048,
}

DrawFlags={
	NoDraw = 1,
	Mirror = 2,
	Invert = 4,
	Flash = 8
}

DeathType={
	Spikes = 0,
	Goo = 1
}

----------------------------------------------------------
----------------------------------------------------------
-------------------C DECLARATIONS BELOW-------------------
----------------------------------------------------------
----------------------------------------------------------

ffi.cdef[[

typedef struct { int flags; } DrawFlags_t;
typedef struct { int flags; } Flags_t;

typedef int (*Logic)(struct ObjectA*);

typedef struct Rect {
	int Left;
	int Top;
	int Right;
	int Bottom;
} Rect;

typedef struct PData {
	int Dir;
	int _unkn2;
	int _unkn3;
	int _unkn4;
	int _unkn5;
	int _unkn6;
	int _unkn7;
	int _unkn8;
	int _unkn9;
	int _unkn10;
	int _unkn11;
	int _unkn12;
	int _unkn13;
	int _unkn14;
	int _unkn15;
	int _unkn16;
	int _unkn17;
	int _unkn18;
	int _unkn19;
	int SpawnPointX;
	int SpawnPointY;
	int _unkn22;
	int _unkn23;
	int _unkn24;
	int _unkn25;
	int _unkn26;
	int _unkn27;
	int _unkn28;
	int PistolAmmo;
	int MagicAmmo;
	int TNTAmmo;
	int Lives;
	int AttemptNb;
	int _unkn34;
	int _unkn35;
	int _unkns[35];
	int _unkn71;
	int _unkn72;
	int _unkn73;
	int _unkn74;
	int _unkn75;
	int _unkn76;
	int _CGlit;

} PData;

typedef struct ObjectV {
    const void *_vtable;
    int _field_4;
    int _field_8;
    int _field_C;
    Logic Logic;
    struct PData* _p;
	void * const _userdata;
    int State;
    int TimeDelay;
    int FrameDelay;
    int UserFlags;
    int XMin;
    int XMax;
    int YMin;
    int YMax;
    int _field_3C;
    int _field_40;
    int XTweak;
    int YTweak;
    int _FullLogicCycle;
    int _FullLogicCycle2_;
    int _field_54;
    int _field_58;
    int _field_5C;
    int _field_60;
    int User[8];
    int _field_84;
    int _field_88;
    int _field_8C;
    int _field_90;
    int _field_94;
    int _field_98;
    int _field_9C;
    int _field_A0;
    int _field_A4;
    int _field_A8;
    int _field_AC;
    int _field_B0;
    int _field_B4;
    int Counter;
    int Speed;
	int _f_C0;
	int _f_C4;
	int Width;
	int Height;
	int _f_D0;
	int _f_D4;
	int _f_D8;
	int _f_DC;
	int _f_E0;
	int _f_E4;
	int _f_E8;
	int _f_EC;
	Rect UserRect1;
	Rect UserRect2;
	int _f_110;
	int _f_114;
	int _f_118;
	int _f_11C;
	int _f_120;
	int _f_124;
	int _f_128;
	int _f_12C;
	int _f_130;
	int _f_134;
	int _f_138;
	int _f_13C;
	int field_140;
	int field_144;
	int field_148;
	int field_14C;
	int field_150;
	int field_154;
	int field_158;
	int field_15C;
	int field_160;
	int field_164;
	const char* TSound;
} ObjectV;

typedef struct ObjectA {
    void * const _vtable;
    const int ID;
    Flags_t Flags;
	int * const _Game_;
    int _field_10;
    int _field_14;
    int OSX;
    int OSY;
    Rect OnScreenBox;
    int OnScreenWidth;
    int OnScreenHeight;
    int OnScreen;
    int _field_3C;
    DrawFlags_t DrawFlags;
    int _field_44;
    int _field_48;
    int _field_4C;
    int _field_50;
    int _field_54;
    int _field_58;
    int X;
    int Y;
    Rect ClipRect;
    int Z;
    int _field_78;
    struct ObjectV* _v;
    int* _HitHandler;
    struct ObjectA* HitRef;
    int* _AttackHandler;
    struct ObjectA* AttRef;
    int* _BumpHandler;
    struct ObjectA* BumpRef;
    struct ObjectA* ObjectBelow;
    int _field_9C;
    int _field_A0;
    int _field_A4;
    int _field_A8;
    int AX;
    int AY;
    int _field_B4;
    int _field_B8;
    int _field_BC;
    int _field_C0;
    int _field_C4;
    int _field_C8;
    int _field_CC;
    int _field_D0;
    int _field_D4;
    int _field_D8;
    const char* _Name;
    struct ObjectA* GlitterPointer;
    int PhysicsType;
    int ObjectTypeFlags;
    int HitTypeFlags;
    int AttackTypeFlags;
    int _field_F4;
    int MoveResX;
    int MoveResY;
    int _field_100;
    int EditorX;
    int EditorY;
    int _EditorZ_;
    int _IsPlayer;
    int Score;
    int Points;
    int Powerup;
    int Damage;
    int Smarts;
    int Health;
    int Direction;
    int FacingDir;
    Rect MoveRect;
    Rect HitRect;
    Rect AttackRect;
    int SpeedX;
    int SpeedY;
    int _field_16C;
    int _field_170;
    int MoveClawX;
    int MoveClawY;
    int _field_17C;
    int _field_180;
    int _field_184;
    int _field_188;
    int _field_18C;
    int I;
    void* Image;
    int* Graph;
    void* Sound;
    int _field_1A0;
    int EditorID;
    int IsGameplayObject;
    int _field_1AC;
    int _field_1B0;
    void* Animation;
    int _field_1B8;
    int _field_1BC;
    int _unkn_bool1;
    int _field_1C4;
    int _unkn_bool2;
	int _field_1CC;
	int _field_1D0;
	int _field_1D4;
	int _field_1D8;
	int _field_1DC;
	int* _field_1E0;
} ObjectA;

typedef struct LevelBasedData {
	int LevelNb;
	char SpringBoardAnimationIdle[32];
	char SpringBoardAnimationSpring[32];
	int DeathTileType;
	Rect SpringBoardDefRect;
	Rect TogglePegDefRect;
	Rect ElevatorDefRect;
	Rect CrumblingPegDefRect;
	Rect SteppingStoneDefRect;
	Rect BigElevatorDefRect;
	int BreakPlankWidth;
	int field_AC;
	int SplashY;
	int MPSkinnerPosX;
	int MPSkinnerPosY;
	int field_BC;
	int field_C0;
} LevelBasedData;

int MessageBoxA(void *w, const char *txt, const char *cap, int type);
bool LineTo(int hdc, int x, int y);
bool Rectangle(int hdc, Rect);
void* CreateSolidBrush(int);
void* CreateHatchBrush(int, int);
bool SelectObject(int, void*);
bool DeleteObject(void*);
int SetBkMode(int, int);
void* CreatePen(int, int, int);
bool SetTextColor(int, int);
bool TextOutA(int, int, int, const char*, int);
int DrawTextA(int, const char*, int, Rect*, unsigned int);
int FillRect(int, Rect*, void*);
int GetActiveWindow();
int GetDlgItem(int, int);
int SetDlgItemTextA(int, int, const char*);
int SetDlgItemInt(int, int, int, int);
bool EndDialog(int, int);
int SetFocus(int);
int LoadIconA(int,const char*);
const char* GetCommandLineA();

int PostMessageA(int, int, int, int);
int SendMessageA(int, int, int, int);

int DialogBoxParamA(int, const char*, int, int, int);
unsigned int GetDlgItemTextA(int, int, int, int);
bool UpdateWindow(int);
int ShowCursor(int);

int* LoadLibraryA(const char*);
int* GetProcAddress(int*, const char*);

int free(int, unsigned int);

]]

function SetFlagsMetatype(name)
	ffi.metatype(name.."_t",{__newindex = function(self,k,v)
		local flags = assert(_G[name])
		local flag = assert(flags[k])
		assert(type(v)=="boolean")
		if v then
			self.flags = OR(self.flags ,flag)
		else
			self.flags = AND(self.flags,NOT(flag))
		end
	end,
	__index = function(self,k)
		local flags = assert(_G[name])
		local flag = assert(flags[k])
		return AND(self.flags,flag)~=0
	end})
end

SetFlagsMetatype("DrawFlags")
SetFlagsMetatype("Flags")

----------------------------------------------------------
----------------------------------------------------------
-------------VARIABLE IMPORTS AND DEFINITIONS-------------
----------------------------------------------------------
----------------------------------------------------------

_nResult = ffi.cast("int**", 0x535910)
_mResult = ffi.cast("int**", 0x5362A0)
_hwnd = ffi.cast("int*", 0x4B8B91)
LoadBaseLevDefaults = ffi.cast("int (*__cdecl)(int)", 0x454340);
LevelBasedData = { }
LevelBasedData[0] = ffi.cast("LevelBasedData*",0x535FE8)
LevelBasedData[1] = ffi.cast("LevelBasedData*",0x5360A8)
LevelBasedData[2] = ffi.cast("LevelBasedData*",0x5360AC)
local _claw = ffi.cast("ObjectA**", 0x5365D4)
local _msCount = ffi.cast("const int*", 0x535928)
local _CurrentBoss = ffi.cast("ObjectA**",0x532864)
local _CameraX = ffi.cast("int*", 0x52A314)
local _CameraY = ffi.cast("int*", 0x52A318)
local _TeleportX = ffi.cast("int*", 0x5282C8)
local _TeleportY = ffi.cast("int*", 0x5282CC)
local NoEffects = ffi.cast("int*",0x535964)
_CurrentPowerup = ffi.cast("int*",0x532D34)
_PowerupTime = ffi.cast("int*",0x532D30)
local _TreasuresCountTable = ffi.cast("int*", 0x536B3C)
local chameleon = ffi.cast("int*",0x50BFB5)
local _MusicConst = 0x584D49
local SkipLogoMovies = ffi.cast("int*",0x50BFBB)
local SkipTitleScreen = ffi.cast("int*",0x50BFBF)
local TestExit = ffi.cast("int*",0x50BFD3)
local IntroSound = ffi.cast("int*",0x52356C)
local InfosDisplayState = ffi.cast("int*", 0x535998)
--objects table
local _objects = {} -- id -> ObjectA*
local _data = {} -- address -> data table
local _names = {} -- address -> object name (ones from CreateObject)
local Object = {} -- Object methods
--map-related vars
local fullname = ""
local name = ""
local path = ""
--commandline argv
local argv = ffi.string(ffi.C.GetCommandLineA())
local posx = 0
local posy = 0
local width = 0
local height = 0
local runflags = {}
local retail = 0
local custom = ""
local rel = ""

local ArturMode,Fly,kijan,debugrects,debuginfamm = false,nil,nil,false,1 --cheat vars
local CustomPowerupPointer = nil

function _nilFly() --Fly unsetter for FlyGrab logic
	Fly=nil
end

----------------------------------------------------------
----------------------------------------------------------
---------------FUNCTIONS IMPORTED FROM EXE----------------
----------------------------------------------------------
----------------------------------------------------------

local _BnW = ffi.cast("signed int (*)(int)", 0x463C90)
local _RegisterHitHandler = ffi.cast("int (*__thiscall)(ObjectA*, const char*)", 0x004C7730)
local _RegisterAttackHandler = ffi.cast("int (*__thiscall)(ObjectA*, const char*)", 0x004C7810)
local _RegisterCheat = ffi.cast("void (*__thiscall)(int,const char*,int,int)",0x423E40)
local _ChangeResolution = ffi.cast("int (*__thiscall)(int*,int, int)",0x429D80)
BlockClaw = ffi.cast("void (*)()", 0x421450)
local _TextOut = ffi.cast("int (*__thiscall)(int, const char *)", 0x0042C780)
local _KillClaw = ffi.cast("int (*)(ObjectA*, ObjectV*, void*, int)", 0x418BD0)
local _ClawGivePowerup = ffi.cast("int (*)(int, int)", 0x00420EE0)
local _ClawJump = ffi.cast("void (*)(ObjectA*,int)", 0x41FC40)
local _SetMusic = ffi.cast("int (*__thiscall)(int, const char*, int)", 0x4B4ED0)
local _SetMusicSpeed = ffi.cast("int (*__thiscall)(int*, int, int)", 0x4B55E0)
local _OpenWindow = ffi.cast("const char** (*)(int*, int, int)", 0x4382F0)
local _JumpToLevel = ffi.cast("int (*__thiscall)(int*, int)", 0x429890)
local _Physics = ffi.cast("int (*__thiscall)(int, ObjectA*, int, int, int)", 0x004CC7E0)
local _IsVisible = ffi.cast("int (*__thiscall)(int, int, int, int, int)", 0x004CE620)
local _AlignToGround = ffi.cast("int (*__thiscall)(int, ObjectA*, int)", 0x4CE420)
local _CreateObject = ffi.cast("ObjectA* (*__thiscall)(int, int, int, int, int, const char *, unsigned int)", 0x004C9480)
local _SetImage = ffi.cast("int (*__thiscall)(ObjectA*, const char*)", 0x004C6DD0)
local _SetAnimation = ffi.cast("int (*__thiscall)(ObjectA*, const char*, int)", 0x004C6E40)
local _SetImageAndI = ffi.cast("int (*__thiscall)(ObjectA*, const char*, int)",0x4C6D60)
local _LoadFolder = ffi.cast("void* (*__thiscall)(int, const char*)",0x4B79D0)
local _LoadAsset = ffi.cast("int (*__thiscall)(int this, const char*, void**)", 0x004FC6B4)
local _MapSoundsFolder = ffi.cast("void (*__thiscall)(int, void *, const char *, const char *)",0x4CAE80)
local _MapImagesFolder = ffi.cast("void (*__thiscall)(int, void *, const char *, const char *)",0x4D0D30)
local _MapAnisFolder = ffi.cast("void (*__thiscall)(int, void *, const char *, const char *)",0x4CECE0)
local _LoadSingleFile = ffi.cast("void* (*__thiscall)(void*, const char *, unsigned int)",0x4B5FC0)
local _MapMusicFile = ffi.cast("int (*__thiscall)(int, void*, int, const char*)",0x4B4DC0)
local _IncludeAssets = ffi.cast("int (*__thiscall)(int, const char *, int)",0x4B6D50)
local _KeyPressed = ffi.cast("int (*)(int)",ffi.cast("int*",0x50C438)[0])
local _PlaySound = ffi.cast("int (*__thiscall)(void*, int, int, int, int)", 0x00421BB0)
local _ClawSound = ffi.cast("ObjectA* (*)(const char*,int)", 0x48FB00)
local _AnimationStep = ffi.cast("int (*__thiscall)(void*, unsigned int)", 0x004C8550)
_CreateGoodie = ffi.cast("int (*)(int, int, int, int, int)", 0x004751A0)
_DropMultipleTreasure = ffi.cast("int (*)(int, int, int, int, int)", 0x40FAA0)
local _GetValueFromRegister = ffi.cast("int (*__thiscall)(int, const char*, int)",0x4B5950)
local _WwdCustomsStr = 0x50BEE5
local _DumpScreen = ffi.cast("int (*__cdecl)(int, int*)", 0x499530)
local _MakeScreenToFile = ffi.cast("int (*__thiscall)(int, const char*, int, int, int)", 0x4BAA40)

----------------------------------------------------------
----------------------------------------------------------
-----------------INTERNAL CORE FUNCTIONS------------------
----------------------------------------------------------
----------------------------------------------------------

local _env = setmetatable({}, {__index = _G})
local _menv = nil
local _maplogics = {}
local _maphits = {}
local _mapattacks = {}
local _mapinits = {}
local _globallogics = {}
setmetatable(_G, { __index = function(_, k) return GetBuiltinLogic(k) end })

local function GetArgv(str)
	local argv = {}
    local quote = false
    local start
    for i = 0, #str do
        local c = str:sub(i, i)
        if c == " " and not quote then
            if start then
                table.insert(argv, str:sub(start, i - 1))
            end
            start = nil
        else
            if c == "\"" then
                quote = not quote
            end
            start = start or i
        end
    end
    if start then
        table.insert(argv, str:sub(start, #str))
    end
    return argv
end

for _, arg in ipairs(GetArgv(argv)) do
	if arg:match('(.*)CLAW.EXE') then
		rel = arg:match('(.*)CLAW.EXE')
		if rel:sub(1,1)=='"' then rel = rel:sub(2,#rel) end
	elseif arg:match('CL:%b""') then
		custom = arg:sub(5,#arg-1)
	elseif arg:match('CL:') then
		custom = arg:sub(4,#arg)
	elseif arg:match('POS:%b""') then
		local pos = arg:sub(6,#arg-1)
		posx,posy = pos:match('(%d*)x(%d*)')
		posx,posy = tonumber(posx),tonumber(posy)
	elseif arg:match('RES:%b""') then
		local pos = arg:sub(6,#arg-1)
		width,height = pos:match('(%d*)x(%d*)')
		width,height = tonumber(width),tonumber(height)
	elseif arg:match('^RL:(%d*)$') then
		retail = tonumber(arg:match('^RL:(%d*)$'))
	elseif arg:match('^-(.*)$') then
		local str = arg:match('^-(.*)$')
		str = str.upper(str)
		runflags[str] = 1
	end
end

if custom~="" and not custom:match'^%a:*\\(.*)%.' then custom = rel..custom end

local function direxists(filepath)
	return lfs.attributes(filepath, "mode") == "directory"
end

local function address(object)
	return tonumber(ffi.cast("int", object))
end

local function GetCustomLogicName(object)
	local name = ffi.string(object._Name)
	return name ~= "" and name
			or _names[address(object)]
			or "<unnamed>"
end

local _GetName = GetCustomLogicName

function _create(ptr)
	local object = ffi.cast("ObjectA*", ptr)
	object.MoveClawX, object.MoveClawY = 0, 0

	_objects[object.ID] = object
	if not _data[address(object)] then _data[address(object)] = {} end

	_RegisterHitHandler(object, "CustomHit")
	_RegisterAttackHandler(object, "CustomAttack")
end

function _logic(ptr)
	local object = ffi.cast("ObjectA*", ptr)
	assert(_data[address(object)])
	local name = _GetName(object)
	local logic = nil
	if _globallogics[name] then logic = _globallogics[name]
	else logic = _maplogics[name] end
	if type(logic) == "function" then
		logic(object)
	else
		MessageBox("No logic named '" .. name .. "'")
		object:Destroy()
	end
end

function _hit(ptr)
	local object = ffi.cast("ObjectA*", ptr)
	local hit = _env[_GetName(object).."Hit"]
	if type(hit) == "function" then
		hit(object)
	end
end

function _attack(ptr)
	local object = ffi.cast("ObjectA*", ptr)
	local attack = _env[_GetName(object).."Attack"]
	if type(attack) == "function" then
		attack(object)
	end
end

function _init(object)
	local init = _env[_GetName(object).."Init"]
	if type(init) == "function" then
		init(object)
	end
end

function _destroy(ptr)
	--do return end
	local object = ffi.cast("ObjectA*", ptr)
	_objects[object.ID] = nil
	_data[address(object)] = nil
	_names[address(object)] = nil
end

function _exception(ptr)
	local object = ffi.cast("ObjectA*", ptr)
	MessageBox("_exception")
	MessageBox(debug.traceback())
end

function _lua(fnName, ptr)
	local fn = _G[fnName]
	if type(fn) ~= "function" then
		MessageBox("Core function " .. fnName .. " doesn't exist!", "Critical error")
	else
		xpcall(function()
			fn(ptr)
		end,
		function(err)
			MessageBox(err .. "\n" .. debug.traceback(), fnName .. " error")
		end)
	end
end

local function map_folder(mappath, folder)
	if not direxists(mappath .. "\\" .. folder) then return end
	local fn =	(folder == "IMAGES" or folder == "TILES") and MapImagesFolder or
				folder == "SOUNDS" and MapSoundsFolder or
				folder == "ANIS" and MapAnisFolder or
				folder == "LEVEL" or
				error("bad name passed to map_folder")
	if folder=="LEVEL" then
		local lf = LoadFolder(folder)
		MapImagesFolder(lf,"LEVEL") MapSoundsFolder(lf,"LEVEL") MapAnisFolder(lf,"LEVEL")
	elseif folder == "TILES" then fn(LoadFolder(folder), "")
	else fn(LoadFolder(folder), "CUSTOM") end
end

local function ExecuteLogic(object)
	object.Logic(object)
end

local function EncodeCode(string)
	local string2 = ""
	for i=1,#string do
		string2 = string2..string.char(string.byte(string.sub(string,i,i))-15)
	end
	return string2
end

function TNTFix(bool)
 if (bool == true) then
	local noper = ffi.cast("char*",0x41D53D)
	noper[3] = 0x8A
	noper[4] = 0x13
	noper = ffi.cast("char*",0x41D538)
	noper[1] = 0xF4
	noper[2] = 0x14
 else
	local noper = ffi.cast("char*",0x41D53D)
	noper[3] = 0x18
	noper[4] = 0x00
	noper = ffi.cast("char*",0x41D538)
	noper[1] = 0x10
	noper[2] = 0x27
 end
end

local function _TimeThings()
	ffi.cast("int* (*__thiscall)(int**)",0x42C3C0)(_nResult)
end

local function _drawRects(self)
	local claw = GetClaw()
	local screenx,screeny = Game(9,23,16),Game(9,23,17)
	if self.Logic~=CaptainClawScreenPosition and self.Logic~=PowerupGlitter and self.Logic~=GlitterMother
	and self.Logic~=GlitterBaby	and self.Logic~=DoNothing and self.Logic~=DoNothingNormal and self.Logic~=BehindAniCandy
	and self.Logic~=FrontAniCandy and self.Logic~=BehindCandy and self.Logic~=FrontCandy and self.Logic~=AniCycle
	then
		local osx, osy = self.X-screenx,self.Y-screeny+tonumber(ffi.cast("int&",0x535844))
		ffi.C.SetBkMode(hdc, 1)
		ffi.C.SelectObject(hdc, winobtab.penc)
		ffi.C.SelectObject(hdc, winobtab.brushd)
		ffi.C.Rectangle(hdc,{osx+self.MoveRect.Left,osy+self.MoveRect.Top,osx+self.MoveRect.Right,osy+self.MoveRect.Bottom})
		ffi.C.SelectObject(hdc, winobtab.pend)
		ffi.C.SelectObject(hdc, winobtab.brushb)
		ffi.C.Rectangle(hdc,{osx+self.AttackRect.Left,osy+self.AttackRect.Top,osx+self.AttackRect.Right,osy+self.AttackRect.Bottom})
		if (self.HitTypeFlags>1 or self.ObjectTypeFlags>1) then
			ffi.C.SelectObject(hdc, winobtab.pena)
			ffi.C.SelectObject(hdc, winobtab.brusha)
			ffi.C.Rectangle(hdc,{osx+self.HitRect.Left,osy+self.HitRect.Top,osx+self.HitRect.Right,osy+self.HitRect.Bottom})
		end
		if (debuginfamm>0) then
		local str = "#"
		if self.IsGameplayObject<=0 then str = str..self.EditorID
		elseif self.Logic==CaptainClaw then str = str.."CLAW"
		else str = str.."G" end
		if (debuginfamm>1) then str = str.." ("..self.X..","..self.Y..")" end
		if (debuginfamm>2) then str = str.."\nZ: "..self.Z.." I: "..self.I.." State:"..self.State end
		ffi.C.SetTextColor(hdc, 0xFFFFFF)
		local lines = 0
		if debuginfamm>2 then lines = 1 end
		if self.OnScreen>=0 then
			local ost = self.MoveRect.Top
			if ost==0 then ost = self.AttackRect.Top end
			if ost==0 then ost = self.HitRect.Top end
			local rct = ffi.new("Rect",{osx-#str*5, osy+ost-25-lines*15, osx+#str*5, osy+ost+lines*15})
			local lprct = ffi.new("Rect[1]",rct)
			ffi.C.DrawTextA(hdc, str,#str, lprct, 1)
		end
		end
	end
end

local function _ll(logicspath, global)
	if direxists(logicspath) then
		for filename in lfs.dir(logicspath) do
			if string.lower(filename)~="main.lua" then filename = logicspath .. "\\" .. filename
			else filename="" end
			if lfs.attributes(filename, "mode") == "file" then
			
				local fname = filename:match'.*\\(.*)%.lua'
				if #fname>=1 then
					local chunk, err = loadfile(filename)
					assert(chunk, err)
					local _test = setmetatable({}, {__index = _G})
					if _menv then setfenv(_menv, _test) _menv() end
					setfenv(chunk, _test)
					chunk()
					if _test["main"] then
						if global then 
							_globallogics[fname] = _test["main"]
						else
							_maplogics[fname] = _test["main"]
						end
						_env[fname.."Hit"] = _test["hit"]
						_env[fname.."Attack"] = _test["attack"]
						_env[fname.."Init"] = _test["init"]
					end
				end
			end
		end
	end
	
	if lfs.attributes(logicspath.."\\main.lua", "mode") == "file" then
		local err = nil
		_menv, err = loadfile(logicspath.."\\main.lua")
		assert(_menv, err)
		setfenv(_menv, _env)
		_menv()
	end
	
end

function _menu()
	MapSoundsFolder(LoadFolder("GAME_SOUNDS"),"GAME")
	MapImagesFolder(LoadFolder("GAME_IMAGES"),"GAME")
	TextOutWithObjects(285,115,9000, 0, "CRAZY HOOK UPDATE","GAME_FONT","TextFadeIn")
	TextOutWithObjects(270,122,9000, 0, "BY ZAX37 & CUBUSPL42","GAME_FONT","TextDelayed")
end

function _map(ptr)
	if chameleon[0]==1 then
		if not _DoOnlyOnce then
			_DoOnlyOnce = true
			if GetGameType()==GameType.MultiPlayer then
				--MessageBox("MultiPlayer")
			end
			if posx>0 and posx>0 and GetGameType()==GameType.SinglePlayer then
				PlayerData().SpawnPointX=posx
				PlayerData().SpawnPointY=posy
				GetClaw().State = 23
				LoopThroughObjects()
			end
			if runflags["DEBUGINFOS"]==1 then ffi.cast("int*",0x535998)[0] = 0xDD end
			if runflags["NOALIGN"]==1 then for i=0,6 do ffi.cast("char*",0x417303)[i] = 0x90 end end
			_objects = {}
			_data = {}
			_names = {}
			local logic = _env["OnMapLoad"]
			if type(logic) == "function" then logic() end
		end
		local object = ffi.cast("ObjectA*",ptr)
		_objects[object.ID] = object
		_data[address(object)] = {}
		_init(object)
	elseif chameleon[0]==2 then
		local ccnopera = ffi.cast("char*",0x41D4B6)
		local ccnoperb = ffi.cast("char*",0x41D4CB)
		for i=2,4 do ccnopera[i] = 0xFF ccnoperb[i] = 0xFF end
		ccnopera[5] = 0xFD ccnoperb[5] = 0xFE
		TNTFix(false)
		_DoOnlyOnce,_env["OnMapLoad"],ArturMode,Fly,kijan,debugrects,debuginfamm,CustomPowerupPointer = false,nil,false,nil,nil,false,1,nil
		if runflags["GOD"] == 1 then ffi.C.PostMessageA(nRes(1,1), 0x111, 0x8043, 0) end
		if runflags["ARMOR"] == 1 then ffi.C.PostMessageA(nRes(1,1), 0x111, 0x8072, 0) end
		if runflags["TIME"] == 1 then ffi.C.PostMessageA(nRes(1,1), 0x111, 32878, 0) end
		if runflags["FPS"] == 1 then ffi.C.PostMessageA(nRes(1,1), 0x111, 32843, 0) end
		local SetBgImage = ffi.cast("int (*__thiscall)(int, const char*, int, int, int, int)",0x492950)
		NoEffects[0] = 0
		fullname = GetMapName()
		_RegisterCheat(nRes(18),EncodeCode("mparmor"),0x8072, 0)
		_RegisterCheat(nRes(18),EncodeCode("mpzax"),666, 1)
		_RegisterCheat(nRes(18),EncodeCode("mpartur"),667, 0)
		_RegisterCheat(nRes(18),EncodeCode("mpfly"),668, 0)
		_RegisterCheat(nRes(18),EncodeCode("mpkijan"),669, 1)
		_RegisterCheat(nRes(18),EncodeCode("mprects"),672, 1)
		_RegisterCheat(nRes(18),EncodeCode("mpmoredi"),673, 1)
		_RegisterCheat(nRes(18),EncodeCode("mplessdi"),674, 1)
		local splasher = ffi.cast("char*",0x463B5C)
		splasher[1] = 0x80
		splasher[2] = 0x78
		splasher[3] = 0x52
		path,name = ""
		if fullname == "" then	SetBgImage(nRes(11),"LOADING",1,1,1,0) return end -- retail
		name = fullname:match'^%a:*\\(.*)%.'
		assert(name, "Could not match the map name in string '" .. fullname .. "'.")
		path = fullname:match'^(.*)%.'
		assert(path, "Could not match the map path in string '" .. fullname .. "'.")
		--
		local cscreen = 0
		if direxists(path) then
		--
			IncludeAssets(path)
			if direxists(path.."\\SCREENS") then
				local temp = nRes(11,8)
				local str = ffi.cast("char*", 0x52719C)
				local cpy = ffi.cast("char*","%s")
				for i=0,3 do
					str[i] = cpy[i]
				end
				snRes(ffi.cast("int",LoadFolder("SCREENS")),11,8)
				cscreen = SetBgImage(nRes(11),"LOADING",1,1,1,0)
				cpy = ffi.cast("char*","\\SCREENS\\%s")
				for i=0,12 do
					str[i] = cpy[i]
				end
				snRes(temp,11,8)
			end
		end
		if cscreen==0 then	SetBgImage(nRes(11),"LOADING",1,1,1,0) end
	elseif chameleon[0]==3 then	
	if fullname == "" then return end -- retail
		local musicspath = path .. "\\MUSIC"
		if direxists(musicspath) then
			for filename in lfs.dir(musicspath) do
			if lfs.attributes(musicspath.."\\"..filename, "mode") == "file" then
				MapMusicFile(LoadFolder("MUSIC"),filename:match('(.*)%.'))
			end
			end
		end
		if width~=0 and height~=0 then ChangeResolution(width,height) end
	elseif chameleon[0]==4 then
		local id = tonumber(ffi.cast("int",ptr))
		if id==666 then
			TextOut("Zax37 is programming God too!")
			PlaySound("GAME_MINORCHEAT")
		elseif id==665 then
			local noper = ffi.cast("char*",0x42C760)
			noper[0] = 0x81
			noper[1] = 0x79
			snRes(1,18,74)
		elseif id==667 then
			ArturMode = not ArturMode
			PlaySound("GAME_MAJORCHEAT")
			local ccnopera = ffi.cast("char*",0x41D4B6)
			local ccnoperb = ffi.cast("char*",0x41D4CB)
			if ArturMode then
				TextOut("Artur Mode On")
				for i=2,5 do ccnopera[i] = 0x00 ccnoperb[i] = 0x00 end
				TNTFix(false)
			else
				TextOut("Artur Mode Off")
				for i=2,4 do ccnopera[i] = 0xFF ccnoperb[i] = 0xFF end
				ccnopera[5] = 0xFD ccnoperb[5] = 0xFE
				TNTFix(true)
			end
		elseif id==668 and GetClaw().Health~=0 then
			PlaySound("GAME_MAJORCHEAT")
			if Fly==nil then
				TextOut("Fly Mode On")
				local claw = GetClaw()
				Fly = CreateObject {x=claw.X, y=claw.Y, z=1000, logic="CustomLogic", name="FlyGrab"}
				claw.DrawFlags.Invert = true
			else
				Fly:Destroy()
				Fly = nil
				TextOut("Fly Mode Off")
				claw = GetClaw()
				claw.DrawFlags.Invert = false
				ClawJump(0)
			end
		elseif id ==669 then
			if kijan==nil then
				TextOut("All hail the king!")
				PlaySound("GAME_MINORCHEAT")
				local claw = GetClaw()
				kijan = CreateObject {x=claw.X, y=claw.Y, z=1000, logic="CustomLogic", name="Disco"}
			else
				TextOut("Thanks for WapMap!")
				PlaySound("GAME_MINORCHEAT")
				kijan:Destroy()
				kijan = nil
			end
		elseif id == 670 then
			if width~=0 and height~=0 and (nRes(31)~=width or nRes(32)~=height) then ChangeResolution(width,height) end
		elseif id == 671 then
			_BnW(ffi.cast("int*",_nResult[0][11])[11])
		elseif id==0x8036 then
			ffi.C.PostMessageA(nRes(1,1), 0x111, 670, 0)
		elseif id==0x805C and Fly then
			Fly.X,Fly.Y = _TeleportX[0],_TeleportY[0]
		elseif id == 672 then
			debugrects = not debugrects
			PlaySound("GAME_MINORCHEAT")
			if debugrects then TextOut("Rects display ON")
			else TextOut("Rects display OFF") end
		elseif id == 673 and debuginfamm<3 then
			debuginfamm = debuginfamm+1
			PlaySound("GAME_MINORCHEAT")
			if debugrects then TextOut("Showing more debug info") end
		elseif id == 674 and debuginfamm>0 then
			debuginfamm = debuginfamm-1
			PlaySound("GAME_MINORCHEAT")
			if debugrects then TextOut("Showing less debug info") end
		elseif id == 333 then
			_TimeThings()
			--local v34 = ffi.cast("int (*__thiscall)(int, int**, int, int)",nRes(11,0,1))(nRes(11),_nResult,1,5)
			ffi.cast("int (*__thiscall)(int, int)",0x4CB6B0)(Game(1),Game(1,5))
			local v6 = Game(7,0)
			ffi.cast("int (*)(int)",Game(7,0,0,10))(v6)
			if ffi.C.DialogBoxParamA(nRes(2,3), "CUSTOMWORLD", nRes(1,1), 0x438380, 0)==1 and ffi.cast("char*",_WwdCustomsStr)[0]~=0 then
				local _getcwd = ffi.cast("int (*__cdecl)(int, int)",0x4AF5E4)
				local str = ffi.new("char[255][1]")
				_getcwd(ffi.cast("int",str),254)
				local custom = ffi.string(ffi.cast("const char*",str[0]))..ffi.string(ffi.cast("const char*",0x524DAC))..ffi.string(ffi.cast("const char*",_WwdCustomsStr))..".WWD"
				_nResult[0][49] = ffi.cast("int",custom)
				ffi.C.PostMessageA(ffi.cast("int*",_nResult[0][1])[1], 0x111, 0x8005, 0) --RunGame
			end
			while (ffi.C.ShowCursor(0)>=0) do end
			_TimeThings()
			--ffi.C.PostMessageA(nRes(1,1), 0x111, 32912, 2)--]]
		--[[elseif id == 32805 then
			_TimeThings()
			--local v34 = ffi.cast("int (*__thiscall)(int, int**, int, int)",nRes(11,0,1))(nRes(11),_nResult,1,5)
			ffi.cast("int (*__thiscall)(int, int)",0x4CB6B0)(Game(1),Game(1,5))
			local v6 = Game(7,0)
			ffi.cast("int (*)(int)",Game(7,0,0,10))(v6)
			if ffi.C.DialogBoxParamA(nRes(2,3), "SESSIONS", nRes(1,1), 0x438380, 0)==1 and ffi.cast("char*",_WwdCustomsStr)[0]~=0 then
				local _getcwd = ffi.cast("int (*__cdecl)(int, int)",0x4AF5E4)
				local str = ffi.new("char[255][1]")
				_getcwd(ffi.cast("int",str),254)
				local custom = ffi.string(ffi.cast("const char*",str[0]))..ffi.string(ffi.cast("const char*",0x524DAC))..ffi.string(ffi.cast("const char*",_WwdCustomsStr))..".WWD"
				_nResult[0][49] = ffi.cast("int",custom)
				ffi.C.PostMessageA(ffi.cast("int*",_nResult[0][1])[1], 0x111, 0x8005, 0) --RunGame
			end
			while (ffi.C.ShowCursor(0)>=0) do end
			_TimeThings()]]--
		--else MessageBox(id)
		end
	elseif chameleon[0]==5 then
		if debugrects then
		if ptr then hdc = tonumber(ffi.cast("int",ptr)) end
		winobtab = {}
		winobtab.brush = ffi.C.CreateSolidBrush(0)
		winobtab.brusha = ffi.C.CreateHatchBrush(3,0xFF0000)
		winobtab.brushb = ffi.C.CreateHatchBrush(4,0x00FFFF)
		winobtab.brushd = ffi.C.CreateHatchBrush(5,0x00FF00)
		winobtab.pen = ffi.C.CreatePen(5,0,0)
		winobtab.pena = ffi.C.CreatePen(0,2,0xFF0000)
		winobtab.penc = ffi.C.CreatePen(0,2,0x00FF00)
		winobtab.pend = ffi.C.CreatePen(0,2,0x00FFFF)
			ffi.C.SelectObject(hdc, winobtab.pen)
			ffi.C.SelectObject(hdc, winobtab.brush)
			--ffi.C.Rectangle(hdc, {0,0,nRes(31)+1,nRes(32)+1})
			LoopThroughObjects(_drawRects)
			local topblack = tonumber(ffi.cast("int&",0x535844))
			local botblack = tonumber(ffi.cast("int&",0x53584C))
			ffi.C.SelectObject(hdc, winobtab.pen)
			ffi.C.SelectObject(hdc, winobtab.brush)
			ffi.C.Rectangle(hdc, {0,0,nRes(31)+1,topblack+1})
			ffi.C.Rectangle(hdc, {0,botblack,nRes(31)+1,nRes(32)+1})
		for _,v in pairs(winobtab) do ffi.C.DeleteObject(v) end
		winobtab = nil
		end
	elseif chameleon[0]==6 then
		local namestr = tostring(ffi.string(ffi.cast("const char*",ffi.cast("int",ptr)+60)))
		local baselev = 0
		for i=0,#namestr do
			if string.byte(namestr,i+1)>=49 and string.byte(namestr,i+1)<=57 then
				local _atoi = ffi.cast("int (*__cdecl)(const char*)",0x4A5EA6)
				baselev = _atoi(ffi.cast("const char*",ffi.cast("int",ptr)+60+i))
				break
			end
		end
		if baselev>14 or baselev<0 then baselev=0 end
		ffi.C.PostMessageA(ffi.C.GetDlgItem(hdlg,555),0x0170,ffi.C.LoadIconA(ffi.cast("int*",ffi.cast("int (*__cdecl)()",0x50731A)()+8)[0],"L"..tostring(baselev)),0)
		ffi.C.SetDlgItemTextA(hdlg,1032,ffi.cast("const char*",ffi.cast("int",ptr)+188))
		ffi.C.SetDlgItemTextA(hdlg,1033,"Created by "..tostring(ffi.string(ffi.cast("const char*",ffi.cast("int",ptr)+124))))
	elseif chameleon[0]==7 then
		hdlg = ffi.cast("int*",ptr)[4]
		ffi.C.ShowCursor(1)
		if ffi.cast("int*",ptr)[5]==272 then
			local text = ffi.cast("char*",_WwdCustomsStr)
			text[0] = 0x2A text[1] = 46 text[2] = 87 text[3] = 87
			text[4] = 68 text[5] = 0
			local listbox = ffi.C.GetDlgItem(hdlg, 1020)
			ffi.C.PostMessageA(listbox,0x186,0,0)
			ffi.C.PostMessageA(hdlg,273,0x103FC,0)
			ffi.C.SetFocus(hdlg)
		end
		if ffi.cast("int*",ptr)[5]==273 then
			if ffi.cast("int*",ptr)[6]==1 then
				if ffi.C.SendMessageA(ffi.C.GetDlgItem(hdlg, 1020), 0x188, 0, 0)>=0 then
					ffi.C.SendMessageA(ffi.C.GetDlgItem(hdlg, 1020), 0x189, ffi.C.SendMessageA(ffi.C.GetDlgItem(hdlg, 1020), 0x188, 0, 0), _WwdCustomsStr)
				else ffi.cast("char*",_WwdCustomsStr)[0]=0
				end
			elseif ffi.cast("int*",ptr)[6]==0x103FC then
				local f = ffi.cast("int (*__cdecl)(int)",0x4385A0)
				if f(hdlg)==1 then
					local _chdir = ffi.cast("int (*__cdecl)(const char*)",0x4F64DE)
					local str = ffi.new("char[128]")
					local dates = ffi.new("char[64]")
					ffi.C.SendMessageA(ffi.C.GetDlgItem(hdlg, 1020), 0x189, ffi.C.SendMessageA(ffi.C.GetDlgItem(hdlg, 1020), 0x188, 0, 0), ffi.cast("int",str))
					if _chdir("Custom")==0 then
						if _chdir(ffi.string(ffi.cast("const char*",str)))==0 then
							ffi.C.PostMessageA(ffi.C.GetDlgItem(hdlg,556),0x0170,ffi.C.LoadIconA(ffi.cast("int*",ffi.cast("int (*__cdecl)()",0x50731A)()+8)[0],"CLAW"),0)
							_chdir("..")
						else
							ffi.C.PostMessageA(ffi.C.GetDlgItem(hdlg,556),0x0170,ffi.C.LoadIconA(ffi.cast("int*",ffi.cast("int (*__cdecl)()",0x50731A)()+8)[0],"OLDCLAW"),0)
						end
						_chdir("..")
					end
					ffi.C.GetDlgItemTextA(hdlg,1032,ffi.cast("int",dates),64)
					str = tostring(ffi.string(ffi.cast("const char*",str))).."("..tostring(ffi.string(ffi.cast("const char*",dates)))..")"
					ffi.C.SetDlgItemTextA(hdlg,1032,str)
				end
			end
		end
		if ffi.cast("int*",ptr)[6]==0x0300029A then
			local len = 0
			local text = ffi.cast("char*",_WwdCustomsStr)
			if ffi.C.GetDlgItemTextA(hdlg,666,_WwdCustomsStr,64)>=1 then
				for i=0,64 do if len==0 and text[i]==0 then len=i end end
			else text[0] = 0x2A
			end
			text[len] = 0x2A text[len+1] = 46 text[len+2] = 87 text[len+3] = 87
			text[len+4] = 68 text[len+5] = 0
			local f = ffi.cast("signed int (*__cdecl)(int)",0x438484)
			f(hdlg)
			ffi.C.PostMessageA(ffi.C.GetDlgItem(hdlg, 1020),0x186,0,0)
			ffi.C.PostMessageA(hdlg,273,0x103FC,0)
			if ffi.C.SendMessageA(ffi.C.GetDlgItem(hdlg, 1020), 0x18B, 0, 0)<=0 then
				ffi.C.PostMessageA(ffi.C.GetDlgItem(hdlg,556),0x0170,0,0)
				ffi.C.PostMessageA(ffi.C.GetDlgItem(hdlg,555),0x0170,0,0)
				ffi.C.SetDlgItemTextA(hdlg,1032,"")
				ffi.C.SetDlgItemTextA(hdlg,1034,"")
			end
		end
	elseif fullname~="" then
		map_folder(path,"TILES")
		map_folder(path,"IMAGES")
		map_folder(path,"SOUNDS")
		map_folder(path,"ANIS")
		map_folder(path,"LEVEL")
		if direxists(path.."\\IMAGES\\SPLASH") then
			if LoadAssetB("CUSTOM_SPLASH")~=nil then
				local splasher = ffi.cast("char*",0x463B5C)
				splasher[1] = 0x60
				splasher[2] = 0xBE
				splasher[3] = 0x50
			end
		end
		_maplogics = {}
		_menv = nil
		_ll(path .. "\\LOGICS")
	end
end

function nRes(na,nb,nc,nd,ne)
	if na==nil then return _nResult[0]
	elseif nb==nil then return _nResult[0][na]
	elseif nc==nil then return ffi.cast("int*",_nResult[0][na])[nb]
	elseif nd==nil then return ffi.cast("int**",_nResult[0][na])[nb][nc]
	elseif ne==nil then return ffi.cast("int***",_nResult[0][na])[nb][nc][nd]
	else return ffi.cast("int****",_nResult[0][na])[nb][nc][nd][ne] end
end

function snRes(na,nb,nc,nd,ne,nf)
	if na==nil then return false
	elseif nb==nil then _nResult[0] = na
	elseif nc==nil then _nResult[0][nb] = na
	elseif nd==nil then ffi.cast("int*",_nResult[0][nb])[nc] = na
	elseif ne==nil then ffi.cast("int**",_nResult[0][nb])[nc][nd] = na
	elseif nf==nil then ffi.cast("int***",_nResult[0][nb])[nc][nd][ne] = na
	else ffi.cast("int****",_nResult[0][nb])[nc][nd][ne][nf] = na end
	return true
end

function Game(na,nb,nc,nd)
	return nRes(12,na,nb,nc,nd)
end

function LoadFolder(name)
	return _LoadFolder(_nResult[0][13],name)
end

function LoadAsset(name)
	local asset = ffi.new("void*[1]")
	_LoadAsset(Game(10)+16, name, asset)
	return asset[0]
end

function LoadAssetB(name)
	local asset = ffi.new("void*[1]")
	_LoadAsset(Game(4)+16, name, asset)
	return asset[0]
end

function GetBuiltinLogic(name)
	local asset = ffi.new("void*[1]")
	_LoadAsset(Game(5)+16, name, asset)
	if asset[0] == nil then return end
	return ffi.cast("Logic*",ffi.cast("int",asset[0])+16)[0]
end

function MapSoundsFolder(address,short)
	_MapSoundsFolder(ffi.cast("int**",_nResult[0][11])[3][10],address,short,"_")
end

function MapImagesFolder(address,short)
	_MapImagesFolder(ffi.cast("int**",_nResult[0][11])[3][4],address,short,"_")
end

function MapAnisFolder(address,short)
	_MapAnisFolder(ffi.cast("int**",_nResult[0][11])[3][11],address,short,"_")
end

function LoadSingleFile(address,name,constante)
	return _LoadSingleFile(address,name,constante)
end

function MapMusicFile(address,name)
	local mus = LoadSingleFile(address,name,_MusicConst)
	if mus then
		local _GetAddr = ffi.cast("void *(*__thiscall)(void*)",0x4B5B30)
		local _var = ffi.cast("int*",mus)[3]
		mus = _GetAddr(mus)
		if mus then
			_MapMusicFile(_nResult[0][20],mus,_var,name)
		end
	end
end

function IncludeAssets(name)
	local noper = ffi.cast("char*",0x4B720F)
	noper[0]=0xE8 noper[1]=0xDC noper[2]=0xEE noper[3]=0xFF noper[4]=0xFF
	ret = _IncludeAssets(nRes(13),name,0)
	--if ret==1 then AssetsNb = AssetsNb + 1 end
	return ret
end

function LoopThroughObjects(funct, arg)
	local one = nRes(11,3)
	if one then
		one = ffi.cast("int*",one)[2]+16
		if one then
			local two = ffi.cast("int*",one)[1]
			while two~=0 do
				local object = ffi.cast("ObjectA**",two)[2]
				two = ffi.cast("int*",two)[0]
				if funct then funct(object, arg) else object:Logic() end
			end
		end
	end
end

local function _ReduceClawGlitters()
	local catglit = ffi.cast("ObjectA*",PlayerData()._CGlit)
	if catglit~=nil then
		catglit:Destroy()
		PlayerData()._CGlit = 0
	end
end

function MessageBox(text, title)
	ffi.C.MessageBoxA(nil, tostring(text), title or "", 0)
end

function GetValueFromRegister(ch)
	return _GetValueFromRegister(nRes(14),ch,0)
end

function MakeScreenshot(filename)
	if filename==nil then
		return _DumpScreen(nRes(14),_nResult[0])
	end
	return _MakeScreenToFile(nRes(12, 1, 4, 11), filename, 1, nRes(11,11,4), 0)
end

function TextOutWithObjects(x,y,z,flags,string,image,effect)
	local logic = 'CustomLogic'
	if effect==nil then 
		logic = 'DoNothing'
	end
	
	for i=1,#string do
		local obj = CreateObject{x = x + i*8, y = y, z = z, flags = flags, logic = logic, name = effect}
		obj:SetImage(image)
		obj.DrawFlags.flags = DrawFlags.NoDraw
		local frame = string.upper(string):byte(i)
		if frame > 64 and frame < 91 then obj:SetFrame(frame-64)
		elseif frame == 32 then obj.Flags.flags = 0x10000
		elseif frame == 38 then obj:SetFrame(53)
		elseif frame == 46 then obj:SetFrame(38) obj.Y = obj.Y+3
		else obj:SetFrame(frame-21) end
		if i==1 then obj.First = true end
		if i==#string then obj.Last = true end
		
		if effect=='TextDelayed' then obj.State = i*2+18
		elseif effect=='TextFadeIn' then obj.State = i*3 end
	end
end

----------------------------------------------------------
----------------------------------------------------------
-----------------MAIN API FUNCTION EXPORTS----------------
----------------------------------------------------------
----------------------------------------------------------

function CreateObject(params)
	local name,logic,object,image,x,y,z,flags,ref = nil
	local vars = {}
	if params then
		for i,k in pairs(params) do
			if i=="name" then name = params.name
			elseif i=="logic" then logic = params.logic
			elseif i=="x" then x = params.x
			elseif i=="y" then y = params.y
			elseif i=="z" then z = params.z
			elseif i=="flags" then flags = params.flags
			elseif i=="ref" then ref = params.ref
			elseif i=="image" then image = params.image
			else vars[i]=params[i] end
		end
	end
	object = _CreateObject(
		ref or Game(2), 0,
		x or 0, y or 0,	z or 0,
		logic, flags or 0x40000
	)
	assert(object)
	if image then
		object:SetImage(image)
	end
	if name then
		if logic ~= "CustomLogic" then
			error("You can call CreateObject with 'name' only for CustomLogic, not for " .. logic .. "!")
		end
		_names[address(object)] = name
	end
	for i,k in pairs(vars) do object[i] = k end
	object:Logic()
	return object
end

function KeyPressed(key)
	return _KeyPressed(key)~=0
end

function SetDeathType(type)
	for i=0,2 do LevelBasedData[i].DeathTileType = type end
end

function ChangeResolution(width,height)
	_ChangeResolution(_nResult[0],width,height)
end

function Teleport(x,y)
	_TeleportX[0] = x
	_TeleportY[0] = y
	ffi.C.PostMessageA(ffi.cast("int*",_nResult[0][1])[1], 0x111, 0x805C, 0);
end

function CameraToPoint(x,y)
	_CameraX[0] = x
	_CameraY[0] = y
end

function CameraToClaw()
	_CameraX[0] = -1
	_CameraY[0] = -1
end

function CameraToObject(object)
	_CameraX[0] = object.X
	_CameraY[0] = object.Y
end

function GetTreasuresNb(n)
	if n>=0 and n<=8 then return _TreasuresCountTable[n]
	else return "LOL NOPE" end
end

function RegisterTreasure(n, nb)
	if nb==nil then nb = 1 end
	if n>=0 and n<=8 then _TreasuresCountTable[n] = _TreasuresCountTable[n]+nb end
end

function GetImgStr(ch)
	local str = ffi.cast("const char*",ffi.cast("int",ch)+36)
	if ffi.cast("int",str)>36 then return ffi.string(str) end
end

function GetClaw()
	return _claw[0]
end

function Attempt()
	return tonumber(PlayerData().AttemptNb)
end
Attemp = Attempt

function PlayerData()
	return GetClaw()._v._p
end

function GetTime()
	return _msCount[0]
end

GetTicks = GetTime

function TextOut(text)
	_TextOut(ffi.cast("int&", 0x00535910), tostring(text))
end

function KillClaw()
	local claw = GetClaw()
	_ClawGivePowerup(0,0)
	_KillClaw(claw, claw._v, ffi.cast("char*", claw._v) + 0x14, 0)
end

function ClawTakeDamage(damage)
	local claw = GetClaw()
	claw.Health = claw.Health - damage
	if claw.Health <= 0 then
		KillClaw()
	end
end

function ClawGivePowerup(powerupId, time)
	_ClawGivePowerup(powerupId, time * 1000)
end

function ClawJump(height)
	_ClawJump(GetClaw(), height)
end

function GetGameType()
	return ffi.cast("int (*__cdecl)()",ffi.cast("int**",_nResult[0][11])[0][4])(); --(ffi.cast("int",_nResult[0])+44)
end

function SetMusic(name)
	_SetMusic(_nResult[0][20],name,1)
end

function SetMusicSpeed(value, time)
	local t = ffi.cast("int",time*1000)
	if t>50000 then
		t = 50000
	end
	_SetMusicSpeed(ffi.cast("int**",_nResult[0][20])[7],value,t)
end

function BnW()
	_BnW(ffi.cast("int*",_nResult[0][11])[11])
end

function GetInput()
	return ffi.cast("int**", 0x535918)[0][2]
end

function GetMapName()
	return ffi.string(ffi.cast("const char*",_nResult[0][49]))
end

function _GetWWDAddr()
	return ffi.cast("int", _nResult[0])+1232
end

function OpenWindow()
	return ffi.string(_OpenWindow(_nResult[0],ffi.cast("int*",_nResult[0][1])[1],0)[0])
end

function JumpToLevel(levelCode)
	_JumpToLevel(_nResult[0], levelCode)
end

function SetBoss(object)
	_CurrentBoss[0] = object
end

function GetBoss()
	return _CurrentBoss[0]
end

function PlaySound(name, ignore_err)
	local sound = nil
	if name and type(name)~="string" then sound = name else sound = LoadAsset(name) end
	if not ignore_err then assert(sound~=nil, "Sound does not exist!") end
	if sound~=nil then _PlaySound(sound, ffi.cast("int*", 0x530990)[0], 0, 0, 0) return ffi.cast("int**",sound)[4][10]+100 end
end

function ClawSound(name)
	_ClawSound(name,0)
end

function GetObject(id)
	return _objects[id]
end

function CreateGoodie(table)
	if not table.x then table.x = GetClaw().X end
	if not table.y then table.y = GetClaw().Y end
	if not table.z then table.z = 1000 end
	if not table.powerup then table.powerup = 33 end
	_CreateGoodie(Game(),table.x,table.y,table.z,table.powerup)
end

function CustomPowerup(name, time)
	if not name then return end
	if not time then time=0 end
	local claw = GetClaw()
	_ReduceClawGlitters()
	if CustomPowerupPointer ~= nil and CustomPowerupPointer.CPN~=name then
		CustomPowerupPointer:Destroy()
		CustomPowerupPointer = nil
		_ClawGivePowerup(0,0)
	end
	_ClawGivePowerup(666, time)
	if CustomPowerupPointer == nil then CustomPowerupPointer = CreateObject {x=claw.X,y=claw.Y,z=claw.Z,logic="CustomLogic",name="ClawCPowerup"} end
	CustomPowerupPointer.Flags.AlwaysActive = true
	CustomPowerupPointer.CPN = name
end

----------------------------------------------------------
----------------------------------------------------------
-----------------------OBJECT METHODS---------------------
----------------------------------------------------------
----------------------------------------------------------

function Object:Destroy()
	self.Flags.flags = 0x10000
end

function Object:Physics(x, y)
	return _Physics(Game(9), self, x, y, 8)
end

function Object:IsVisible(x)
	return _IsVisible(Game(9), self.X, self.Y, x, 32)
end

function Object:AlignToGround()
	_AlignToGround(Game(9), self, 0)
end

function Object:GetSelf()
	return tonumber(ffi.cast("int",self))
end

function Object:SetImage(name)
	_SetImage(self, name)
end

function Object:SetAnimation(name)
	_SetAnimation(self, name, 0)
end

function Object:SetFrame(nb)
	_SetImageAndI(self, GetImgStr(self.Image), nb)
end

function Object:AnimationStep()
	_AnimationStep(ffi.cast("char*", self) + 0x1A0, ffi.cast("int*", 0x005AAFD8)[0])
end

function Object:IsBelow(object)
	return object.Flags.OnElevator and object.ObjectBelow == self
end

function Object:_ResetName() -- DANGER
	self._Name = ffi.cast("const char*",0x52c67c)
end

function Object:DropCoin()
	CreateGoodie {x=self.X, y=self.Y, z=self.Z}
end

function Object:GetData()
	return _data[address(self)]
end

----------------------------------------------------------
----------------------------------------------------------
----------------------OBJECT METATYPE---------------------
----------------------------------------------------------
----------------------------------------------------------

ffi.metatype("ObjectA", {
	__index = function(self, key)
		local ok, result = pcall(function()
			return self._v[key]
		end)
		if ok then
			return result
		end
		local data = _data[address(self)]
		if data then
			local result = data[key]
			if result ~= nil then
				return result
			end
		end
		if Object[key] then
			return Object[key]
		end
	end,
	__newindex = function(self, key, val)
		local ok = pcall(function()
			return self._v[key]
		end)
		if ok then
			self._v[key] = val
			return
		end
		local data = _data[address(self)]
		if data then
			data[key] = val
			return
		end
		error("ObjectA __newindex " .. _GetName(self) .. " " .. key .. " " .. tostring(val))
	end
})

----------------------------------------------------------
----------------------------------------------------------
-----------------------HARDCORE PART----------------------
----------------------------------------------------------
----------------------------------------------------------
dofile("CrazyPatches.lua")
--local mjmp = ffi.cast("char*", 0x428351)
--mjmp[0], mjmp[1], mjmp[2], mjmp[3], mjmp[4] = 0xE9, 0x31, 0xFA, 0xFF, 0xFF
----------------------------------------------------------
----------------------------------------------------------
-----------------------EXECUTIVE PART---------------------
----------------------------------------------------------
----------------------------------------------------------
SkipTitleScreen[0] = GetValueFromRegister("Skip Title Screen")
SkipLogoMovies[0] = GetValueFromRegister("Skip Logo Movies")
_ll("Assets\\GAME\\LOGICS", true)

--[[function makeScreens()
	if direxists("Custom") then
		for filename in lfs.dir("Custom") do
			MessageBox(filename)
		end	
	end
end--]]

if custom~="" or (retail>0 and retail<15) then
 SkipTitleScreen[0] = 1
 SkipLogoMovies[0] = 1
 TestExit[0] = 1
 NoEffects[0] = 1
 IntroSound[0] = 0
 if custom~="" then snRes(ffi.cast("int",custom),49)
 else ffi.cast("char*",0x427D69)[1] = retail
 end
 if width~=0 and height~=0 then
 	local noper = ffi.cast("char*",0x42C760)
 	noper[0] = 0xEB
 	noper[1] = 0x13
 end
 ffi.C.PostMessageA(nRes(1,1), 0x111, 0x8005, 0) --RunGame
 ffi.C.PostMessageA(nRes(1,1), 0x111, 665, 0) --noper reset
else
 posx,posy,width,height,runflags = 0,0,0,0,{}
end