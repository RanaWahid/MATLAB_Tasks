function varargout = happyOrSad(varargin)
% HAPPYORSAD MATLAB code for happyOrSad.fig
%      HAPPYORSAD, by itself, creates a new HAPPYORSAD or raises the existing
%      singleton*.
%
%      H = HAPPYORSAD returns the handle to a new HAPPYORSAD or the handle to
%      the existing singleton*.
%
%      HAPPYORSAD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HAPPYORSAD.M with the given input arguments.
%
%      HAPPYORSAD('Property','Value',...) creates a new HAPPYORSAD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before happyOrSad_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to happyOrSad_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help happyOrSad

% Last Modified by GUIDE v2.5 23-Jan-2022 16:28:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @happyOrSad_OpeningFcn, ...
                   'gui_OutputFcn',  @happyOrSad_OutputFcn, ...
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


% --- Executes just before happyOrSad is made visible.
function happyOrSad_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to happyOrSad (see VARARGIN)

% Choose default command line output for happyOrSad
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
  global getValues;
  global sadPic;
  global happyPic;
  global undefinedPic;
  
  
  sadPic=imread('sad.jpg');
  happyPic=imread('happy.jpg');
  undefinedPic=imread('undefined.jpg');
  
% UIWAIT makes happyOrSad wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = happyOrSad_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global sadPic;
global happyPic;
global getValues;
global undefinedPic;

 axes(handles.axes2)

  if getValues >= 0 && getValues <=60
    imshow(happyPic);
    
  elseif getValues > 60 && getValues <= 100
     imshow(sadPic);  
     
  else
     imshow(undefinedPic); 
     
  end




function edit1_Callback(hObject, ~, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
   
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 global getValues;
 getValues = get(handles.edit1,'String');
 getValues = str2double(char(getValues))
