function varargout = finalProj(varargin)
% FINALPROJ MATLAB code for finalProj.fig
%      FINALPROJ, by itself, creates a new FINALPROJ or raises the existing
%      singleton*.
%
%      H = FINALPROJ returns the handle to a new FINALPROJ or the handle to
%      the existing singleton*.
%
%      FINALPROJ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINALPROJ.M with the given input arguments.
%
%      FINALPROJ('Property','Value',...) creates a new FINALPROJ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before finalProj_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to finalProj_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help finalProj

% Last Modified by GUIDE v2.5 23-Dec-2020 14:05:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @finalProj_OpeningFcn, ...
                   'gui_OutputFcn',  @finalProj_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before finalProj is made visible.
function finalProj_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to finalProj (see VARARGIN)

% Choose default command line output for finalProj
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes finalProj wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = finalProj_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in twoDMenu.
function twoDMenu_Callback(hObject, eventdata, handles)
% hObject    handle to twoDMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns twoDMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from twoDMenu


% --- Executes during object creation, after setting all properties.
function twoDMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to twoDMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in threeDMenu.
function threeDMenu_Callback(hObject, eventdata, handles)
% hObject    handle to threeDMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns threeDMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from threeDMenu


% --- Executes during object creation, after setting all properties.
function threeDMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to threeDMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in plusSignBtn.
function plusSignBtn_Callback(hObject, eventdata, handles)
% hObject    handle to plusSignBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.graph, 'Marker', '+');


% --- Executes on button press in hollowCircleBtn.
function hollowCircleBtn_Callback(hObject, eventdata, handles)
% hObject    handle to hollowCircleBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.graph, 'Marker', 'o');

% --- Executes on button press in starBtn.
function starBtn_Callback(hObject, eventdata, handles)
% hObject    handle to starBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.graph, 'Marker', '*');

% --- Executes on button press in redButton.
function redButton_Callback(hObject, eventdata, handles)
% hObject    handle to redButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.graph, 'color', 'r');


% --- Executes on button press in blueButton.
function blueButton_Callback(hObject, eventdata, handles)
% hObject    handle to blueButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.graph, 'color', 'b');


% --- Executes on button press in greenButton.
function greenButton_Callback(hObject, eventdata, handles)
% hObject    handle to greenButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.graph, 'color', 'g');


% --- Executes on button press in solidLineBtn.
function solidLineBtn_Callback(hObject, eventdata, handles)
% hObject    handle to solidLineBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.graph, 'lineStyle', '-');


% --- Executes on button press in dashedLineBtn.
function dashedLineBtn_Callback(hObject, eventdata, handles)
% hObject    handle to dashedLineBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.graph, 'lineStyle', '--');

% --- Executes on button press in dottedLineBtn.
function dottedLineBtn_Callback(hObject, eventdata, handles)
% hObject    handle to dottedLineBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.graph, 'lineStyle', ':');

% --- Executes during object creation, after setting all properties.
function coordinates_CreateFcn(hObject, eventdata, handles)
% hObject    handle to coordinates (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate coordinates
x = 0:0.1:1;
y = 0;
graph = plot(x, y, 'c');
handles.graph = graph;
guidata(hObject, handles);

% --- Executes on button press in clearBtn.
function clearBtn_Callback(hObject, eventdata, handles)
% hObject    handle to clearBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.graph, 'color', 'c');
set(handles.graph, 'marker', 'none');
set(handles.graph, 'lineStyle', '-');


% --------------------------------------------------------------------
function sinMenu_Callback(hObject, eventdata, handles)
% hObject    handle to sinMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = -2*pi:0.1:2*pi;
y = sin(x);
graph = plot(x, y, 'c', 'LineWidth', 2);
title('ÕýÏÒÍ¼Ïñ');
grid on;
handles.graph = graph;
guidata(hObject, handles);


% --------------------------------------------------------------------
function spiralLineMenu_Callback(hObject, eventdata, handles)
% hObject    handle to spiralLineMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = 0:0.2:20;
x = t;
y = sin(t);
z = cos(t);
graph = plot3(x, y, z, 'c', 'LineWidth', 2);
title('ÂÝÐýÏßÍ¼Ïñ');
grid on;
handles.graph = graph;
guidata(hObject, handles);

% --------------------------------------------------------------------
function matchMenu_Callback(hObject, eventdata, handles)
% hObject    handle to matchMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=0:pi/10:10*pi; %Éè¶¨tµÄ·¶Î§
graph = plot3(cos(t),sin(t),t, 'c', 'LineWidth', 2); %»æÖÆÈýÎ¬ÇúÏß£¬²¢ÇÒ×öÐÞÊÎ
title('»ð²ñ¸ËÏßÍ¼Ïñ');
handles.graph = graph;
grid on %¼ÓÍø¸ñ
guidata(hObject, handles);

% --------------------------------------------------------------------
function circleMenu_Callback(hObject, eventdata, handles)
% hObject    handle to circleMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = 0:pi/50:40*pi;
xt = (3 + cos(sqrt(32)*t)).*cos(t);
yt = sin(sqrt(32) * t);
zt = (3 + cos(sqrt(32)*t)).*sin(t);
graph = plot3(xt, yt, zt, 'c');
title('ÌðÌðÈ¦Í¼Ïñ');
grid on;
axis equal;
handles.graph = graph;
guidata(hObject, handles);

% --------------------------------------------------------------------
function heartLineMenu_Callback(hObject, eventdata, handles)
% hObject    handle to heartLineMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
theta=-pi:0.1:pi;
x=cos(theta);
y=sin(theta)+((cos(theta)).^2).^(1/3);
graph = plot(x, y, 'c', 'LineWidth', 2);
title('ÐÄÐÔÏßÍ¼Ïñ');
grid on;
handles.graph = graph;
guidata(hObject, handles);



% --------------------------------------------------------------------
function wavesMenu_Callback(hObject, eventdata, handles)
% hObject    handle to wavesMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = 0:pi/100:2*pi;
y = 2*exp(-0.5*x).*sin(2*pi*x);
graph = plot(x, y, 'c', 'LineWidth', 2);
title('²¨ÀËÏßÍ¼Ïñ');
grid on;
handles.graph = graph;
guidata(hObject, handles);


% --- Executes on button press in descripBtn.
function descripBtn_Callback(hObject, eventdata, handles)
% hObject    handle to descripBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.description, 'Visible', 'on');
set(handles.clcDesBtn, 'Visible', 'on');


% --- Executes on button press in clcDesBtn.
function clcDesBtn_Callback(hObject, eventdata, handles)
% hObject    handle to clcDesBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.description, 'Visible', 'off');
set(handles.clcDesBtn, 'Visible', 'off');
