це2
Лџ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceИ
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
n
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeКнout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
∞
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
∞
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48„Э0
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
§
Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_3/bias/*
dtype0*
shape:*$
shared_nameAdam/v/dense_3/bias
w
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes
:*
dtype0
§
Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_3/bias/*
dtype0*
shape:*$
shared_nameAdam/m/dense_3/bias
w
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes
:*
dtype0
ѓ
Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_3/kernel/*
dtype0*
shape:	А*&
shared_nameAdam/v/dense_3/kernel
А
)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel*
_output_shapes
:	А*
dtype0
ѓ
Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_3/kernel/*
dtype0*
shape:	А*&
shared_nameAdam/m/dense_3/kernel
А
)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel*
_output_shapes
:	А*
dtype0
Л
5Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/biasVarHandleOp*
_output_shapes
: *F

debug_name86Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/bias/*
dtype0*
shape:А*F
shared_name75Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/bias
Љ
IAdam/v/bidirectional_3/backward_lstm_3/lstm_cell/bias/Read/ReadVariableOpReadVariableOp5Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/bias*
_output_shapes	
:А*
dtype0
Л
5Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/biasVarHandleOp*
_output_shapes
: *F

debug_name86Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/bias/*
dtype0*
shape:А*F
shared_name75Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/bias
Љ
IAdam/m/bidirectional_3/backward_lstm_3/lstm_cell/bias/Read/ReadVariableOpReadVariableOp5Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/bias*
_output_shapes	
:А*
dtype0
і
AAdam/v/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *R

debug_nameDBAdam/v/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel/*
dtype0*
shape:
АА*R
shared_nameCAAdam/v/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel
ў
UAdam/v/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpAAdam/v/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel* 
_output_shapes
:
АА*
dtype0
і
AAdam/m/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *R

debug_nameDBAdam/m/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel/*
dtype0*
shape:
АА*R
shared_nameCAAdam/m/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel
ў
UAdam/m/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpAAdam/m/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel* 
_output_shapes
:
АА*
dtype0
Х
7Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/kernelVarHandleOp*
_output_shapes
: *H

debug_name:8Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/kernel/*
dtype0*
shape:	А*H
shared_name97Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/kernel
ƒ
KAdam/v/bidirectional_3/backward_lstm_3/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp7Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/kernel*
_output_shapes
:	А*
dtype0
Х
7Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/kernelVarHandleOp*
_output_shapes
: *H

debug_name:8Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/kernel/*
dtype0*
shape:	А*H
shared_name97Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/kernel
ƒ
KAdam/m/bidirectional_3/backward_lstm_3/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp7Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/kernel*
_output_shapes
:	А*
dtype0
И
4Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/biasVarHandleOp*
_output_shapes
: *E

debug_name75Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/bias/*
dtype0*
shape:А*E
shared_name64Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/bias
Ї
HAdam/v/bidirectional_3/forward_lstm_3/lstm_cell/bias/Read/ReadVariableOpReadVariableOp4Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/bias*
_output_shapes	
:А*
dtype0
И
4Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/biasVarHandleOp*
_output_shapes
: *E

debug_name75Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/bias/*
dtype0*
shape:А*E
shared_name64Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/bias
Ї
HAdam/m/bidirectional_3/forward_lstm_3/lstm_cell/bias/Read/ReadVariableOpReadVariableOp4Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/bias*
_output_shapes	
:А*
dtype0
±
@Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *Q

debug_nameCAAdam/v/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel/*
dtype0*
shape:
АА*Q
shared_nameB@Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel
„
TAdam/v/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp@Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel* 
_output_shapes
:
АА*
dtype0
±
@Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *Q

debug_nameCAAdam/m/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel/*
dtype0*
shape:
АА*Q
shared_nameB@Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel
„
TAdam/m/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp@Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel* 
_output_shapes
:
АА*
dtype0
Т
6Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/kernelVarHandleOp*
_output_shapes
: *G

debug_name97Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/kernel/*
dtype0*
shape:	А*G
shared_name86Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/kernel
¬
JAdam/v/bidirectional_3/forward_lstm_3/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp6Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/kernel*
_output_shapes
:	А*
dtype0
Т
6Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/kernelVarHandleOp*
_output_shapes
: *G

debug_name97Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/kernel/*
dtype0*
shape:	А*G
shared_name86Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/kernel
¬
JAdam/m/bidirectional_3/forward_lstm_3/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp6Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/kernel*
_output_shapes
:	А*
dtype0
О
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
В
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
ц
.bidirectional_3/backward_lstm_3/lstm_cell/biasVarHandleOp*
_output_shapes
: *?

debug_name1/bidirectional_3/backward_lstm_3/lstm_cell/bias/*
dtype0*
shape:А*?
shared_name0.bidirectional_3/backward_lstm_3/lstm_cell/bias
Ѓ
Bbidirectional_3/backward_lstm_3/lstm_cell/bias/Read/ReadVariableOpReadVariableOp.bidirectional_3/backward_lstm_3/lstm_cell/bias*
_output_shapes	
:А*
dtype0
Я
:bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *K

debug_name=;bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel/*
dtype0*
shape:
АА*K
shared_name<:bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel
Ћ
Nbidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp:bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel* 
_output_shapes
:
АА*
dtype0
А
0bidirectional_3/backward_lstm_3/lstm_cell/kernelVarHandleOp*
_output_shapes
: *A

debug_name31bidirectional_3/backward_lstm_3/lstm_cell/kernel/*
dtype0*
shape:	А*A
shared_name20bidirectional_3/backward_lstm_3/lstm_cell/kernel
ґ
Dbidirectional_3/backward_lstm_3/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp0bidirectional_3/backward_lstm_3/lstm_cell/kernel*
_output_shapes
:	А*
dtype0
у
-bidirectional_3/forward_lstm_3/lstm_cell/biasVarHandleOp*
_output_shapes
: *>

debug_name0.bidirectional_3/forward_lstm_3/lstm_cell/bias/*
dtype0*
shape:А*>
shared_name/-bidirectional_3/forward_lstm_3/lstm_cell/bias
ђ
Abidirectional_3/forward_lstm_3/lstm_cell/bias/Read/ReadVariableOpReadVariableOp-bidirectional_3/forward_lstm_3/lstm_cell/bias*
_output_shapes	
:А*
dtype0
Ь
9bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *J

debug_name<:bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel/*
dtype0*
shape:
АА*J
shared_name;9bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel
…
Mbidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp9bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel* 
_output_shapes
:
АА*
dtype0
э
/bidirectional_3/forward_lstm_3/lstm_cell/kernelVarHandleOp*
_output_shapes
: *@

debug_name20bidirectional_3/forward_lstm_3/lstm_cell/kernel/*
dtype0*
shape:	А*@
shared_name1/bidirectional_3/forward_lstm_3/lstm_cell/kernel
і
Cbidirectional_3/forward_lstm_3/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp/bidirectional_3/forward_lstm_3/lstm_cell/kernel*
_output_shapes
:	А*
dtype0
П
dense_3/biasVarHandleOp*
_output_shapes
: *

debug_namedense_3/bias/*
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
Ъ
dense_3/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_3/kernel/*
dtype0*
shape:	А*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	А*
dtype0
Б
serving_default_lambda_3_inputPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
Я
StatefulPartitionedCallStatefulPartitionedCallserving_default_lambda_3_input/bidirectional_3/forward_lstm_3/lstm_cell/kernel9bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel-bidirectional_3/forward_lstm_3/lstm_cell/bias0bidirectional_3/backward_lstm_3/lstm_cell/kernel:bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel.bidirectional_3/backward_lstm_3/lstm_cell/biasdense_3/kerneldense_3/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_64652

NoOpNoOp
’I
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*РI
valueЖIBГI BьH
І
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
Ј
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
forward_layer
backward_layer*
¶
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias*
<
#0
$1
%2
&3
'4
(5
!6
"7*
<
#0
$1
%2
&3
'4
(5
!6
"7*
* 
∞
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*

.trace_0
/trace_1* 

0trace_0
1trace_1* 
* 
Б
2
_variables
3_iterations
4_learning_rate
5_index_dict
6
_momentums
7_velocities
8_update_step_xla*

9serving_default* 
* 
* 
* 
С
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

?trace_0
@trace_1* 

Atrace_0
Btrace_1* 
.
#0
$1
%2
&3
'4
(5*
.
#0
$1
%2
&3
'4
(5*
* 
У
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
6
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_3* 
Ѕ
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_random_generator
Wcell
X
state_spec*
Ѕ
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses
__random_generator
`cell
a
state_spec*

!0
"1*

!0
"1*
* 
У
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

gtrace_0* 

htrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/bidirectional_3/forward_lstm_3/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE-bidirectional_3/forward_lstm_3/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE0bidirectional_3/backward_lstm_3/lstm_cell/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE.bidirectional_3/backward_lstm_3/lstm_cell/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

i0*
* 
* 
* 
* 
* 
* 
В
30
j1
k2
l3
m4
n5
o6
p7
q8
r9
s10
t11
u12
v13
w14
x15
y16*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
j0
l1
n2
p3
r4
t5
v6
x7*
<
k0
m1
o2
q3
s4
u5
w6
y7*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

#0
$1
%2*

#0
$1
%2*
* 
Я

zstates
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*
:
Аtrace_0
Бtrace_1
Вtrace_2
Гtrace_3* 
:
Дtrace_0
Еtrace_1
Жtrace_2
Зtrace_3* 
* 
л
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
О_random_generator
П
state_size

#kernel
$recurrent_kernel
%bias*
* 

&0
'1
(2*

&0
'1
(2*
* 
•
Рstates
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*
:
Цtrace_0
Чtrace_1
Шtrace_2
Щtrace_3* 
:
Ъtrace_0
Ыtrace_1
Ьtrace_2
Эtrace_3* 
* 
л
Ю	variables
Яtrainable_variables
†regularization_losses
°	keras_api
Ґ__call__
+£&call_and_return_all_conditional_losses
§_random_generator
•
state_size

&kernel
'recurrent_kernel
(bias*
* 
* 
* 
* 
* 
* 
* 
* 
<
¶	variables
І	keras_api

®total

©count*
Б{
VARIABLE_VALUE6Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUE6Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
МЕ
VARIABLE_VALUE@Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
МЕ
VARIABLE_VALUE@Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE4Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE4Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE7Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE7Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUEAAdam/m/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUEAAdam/v/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUE5Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUE5Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_3/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_3/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_3/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_3/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

W0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

#0
$1
%2*

#0
$1
%2*
* 
Ю
™non_trainable_variables
Ђlayers
ђmetrics
 ≠layer_regularization_losses
Ѓlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses*

ѓtrace_0
∞trace_1* 

±trace_0
≤trace_1* 
* 
* 
* 
* 

`0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

&0
'1
(2*

&0
'1
(2*
* 
Ю
≥non_trainable_variables
іlayers
µmetrics
 ґlayer_regularization_losses
Јlayer_metrics
Ю	variables
Яtrainable_variables
†regularization_losses
Ґ__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses*

Єtrace_0
єtrace_1* 

Їtrace_0
їtrace_1* 
* 
* 

®0
©1*

¶	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
”
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/bias/bidirectional_3/forward_lstm_3/lstm_cell/kernel9bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel-bidirectional_3/forward_lstm_3/lstm_cell/bias0bidirectional_3/backward_lstm_3/lstm_cell/kernel:bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel.bidirectional_3/backward_lstm_3/lstm_cell/bias	iterationlearning_rate6Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/kernel6Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/kernel@Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel@Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel4Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/bias4Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/bias7Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/kernel7Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/kernelAAdam/m/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernelAAdam/v/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel5Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/bias5Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotalcountConst*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__traced_save_67563
ќ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/bias/bidirectional_3/forward_lstm_3/lstm_cell/kernel9bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel-bidirectional_3/forward_lstm_3/lstm_cell/bias0bidirectional_3/backward_lstm_3/lstm_cell/kernel:bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel.bidirectional_3/backward_lstm_3/lstm_cell/bias	iterationlearning_rate6Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/kernel6Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/kernel@Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel@Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel4Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/bias4Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/bias7Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/kernel7Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/kernelAAdam/m/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernelAAdam/v/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel5Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/bias5Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotalcount*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__traced_restore_67656Уё.
’%
…
while_body_63057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_63081_0:	А+
while_lstm_cell_63083_0:
АА&
while_lstm_cell_63085_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_63081:	А)
while_lstm_cell_63083:
АА$
while_lstm_cell_63085:	АИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0£
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_63081_0while_lstm_cell_63083_0while_lstm_cell_63085_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_63042r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: О
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АО
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_63081while_lstm_cell_63081_0"0
while_lstm_cell_63083while_lstm_cell_63083_0"0
while_lstm_cell_63085while_lstm_cell_63085_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:%!

_user_specified_name63081:%	!

_user_specified_name63083:%
!

_user_specified_name63085
џM
ґ
 backward_lstm_3_while_body_64097<
8backward_lstm_3_while_backward_lstm_3_while_loop_counterB
>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations%
!backward_lstm_3_while_placeholder'
#backward_lstm_3_while_placeholder_1'
#backward_lstm_3_while_placeholder_2'
#backward_lstm_3_while_placeholder_3;
7backward_lstm_3_while_backward_lstm_3_strided_slice_1_0w
sbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0:	АV
Bbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0:
ААP
Abackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0:	А"
backward_lstm_3_while_identity$
 backward_lstm_3_while_identity_1$
 backward_lstm_3_while_identity_2$
 backward_lstm_3_while_identity_3$
 backward_lstm_3_while_identity_4$
 backward_lstm_3_while_identity_59
5backward_lstm_3_while_backward_lstm_3_strided_slice_1u
qbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource:	АT
@backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource:
ААN
?backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpҐ5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpҐ7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpШ
Gbackward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ц
9backward_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_3_while_placeholderPbackward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ј
5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0д
&backward_lstm_3/while/lstm_cell/MatMulMatMul@backward_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЉ
7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ћ
(backward_lstm_3/while/lstm_cell/MatMul_1MatMul#backward_lstm_3_while_placeholder_2?backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≈
#backward_lstm_3/while/lstm_cell/addAddV20backward_lstm_3/while/lstm_cell/MatMul:product:02backward_lstm_3/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0ќ
'backward_lstm_3/while/lstm_cell/BiasAddBiasAdd'backward_lstm_3/while/lstm_cell/add:z:0>backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
/backward_lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
%backward_lstm_3/while/lstm_cell/splitSplit8backward_lstm_3/while/lstm_cell/split/split_dim:output:00backward_lstm_3/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitХ
'backward_lstm_3/while/lstm_cell/SigmoidSigmoid.backward_lstm_3/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
)backward_lstm_3/while/lstm_cell/Sigmoid_1Sigmoid.backward_lstm_3/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А±
#backward_lstm_3/while/lstm_cell/mulMul-backward_lstm_3/while/lstm_cell/Sigmoid_1:y:0#backward_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€АП
$backward_lstm_3/while/lstm_cell/ReluRelu.backward_lstm_3/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€Ај
%backward_lstm_3/while/lstm_cell/mul_1Mul+backward_lstm_3/while/lstm_cell/Sigmoid:y:02backward_lstm_3/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
%backward_lstm_3/while/lstm_cell/add_1AddV2'backward_lstm_3/while/lstm_cell/mul:z:0)backward_lstm_3/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
)backward_lstm_3/while/lstm_cell/Sigmoid_2Sigmoid.backward_lstm_3/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АМ
&backward_lstm_3/while/lstm_cell/Relu_1Relu)backward_lstm_3/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аƒ
%backward_lstm_3/while/lstm_cell/mul_2Mul-backward_lstm_3/while/lstm_cell/Sigmoid_2:y:04backward_lstm_3/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
@backward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ™
:backward_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_3_while_placeholder_1Ibackward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0)backward_lstm_3/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“]
backward_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :М
backward_lstm_3/while/addAddV2!backward_lstm_3_while_placeholder$backward_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_3/while/add_1AddV28backward_lstm_3_while_backward_lstm_3_while_loop_counter&backward_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: Й
backward_lstm_3/while/IdentityIdentitybackward_lstm_3/while/add_1:z:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: ™
 backward_lstm_3/while/Identity_1Identity>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: Й
 backward_lstm_3/while/Identity_2Identitybackward_lstm_3/while/add:z:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: ґ
 backward_lstm_3/while/Identity_3IdentityJbackward_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: І
 backward_lstm_3/while/Identity_4Identity)backward_lstm_3/while/lstm_cell/mul_2:z:0^backward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АІ
 backward_lstm_3/while/Identity_5Identity)backward_lstm_3/while/lstm_cell/add_1:z:0^backward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аг
backward_lstm_3/while/NoOpNoOp7^backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp6^backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp8^backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5backward_lstm_3_while_backward_lstm_3_strided_slice_17backward_lstm_3_while_backward_lstm_3_strided_slice_1_0"I
backward_lstm_3_while_identity'backward_lstm_3/while/Identity:output:0"M
 backward_lstm_3_while_identity_1)backward_lstm_3/while/Identity_1:output:0"M
 backward_lstm_3_while_identity_2)backward_lstm_3/while/Identity_2:output:0"M
 backward_lstm_3_while_identity_3)backward_lstm_3/while/Identity_3:output:0"M
 backward_lstm_3_while_identity_4)backward_lstm_3/while/Identity_4:output:0"M
 backward_lstm_3_while_identity_5)backward_lstm_3/while/Identity_5:output:0"Д
?backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resourceAbackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0"Ж
@backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resourceBbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0"В
>backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0"и
qbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2p
6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp2n
5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp2r
7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_3/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_3/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97backward_lstm_3/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
™9
э
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_62773

inputs"
lstm_cell_62689:	А#
lstm_cell_62691:
АА
lstm_cell_62693:	А
identityИҐ!lstm_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskе
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_62689lstm_cell_62691lstm_cell_62693*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_62688n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_62689lstm_cell_62691lstm_cell_62693*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_62703*
condR
while_cond_62702*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name62689:%!

_user_specified_name62691:%!

_user_specified_name62693
£
D
(__inference_lambda_3_layer_call_fn_64662

inputs
identity≤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lambda_3_layer_call_and_return_conditional_losses_64222d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
э
љ
/__inference_backward_lstm_3_layer_call_fn_66578

inputs
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identityИҐStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_63484p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name66570:%!

_user_specified_name66572:%!

_user_specified_name66574
§:
ґ
while_body_66945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
АА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
АА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€ѓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€Аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Ѕ	
Њ
while_cond_66459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_66459___redundant_placeholder03
/while_while_cond_66459___redundant_placeholder13
/while_while_cond_66459___redundant_placeholder23
/while_while_cond_66459___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
™9
э
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_62626

inputs"
lstm_cell_62542:	А#
lstm_cell_62544:
АА
lstm_cell_62546:	А
identityИҐ!lstm_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskе
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_62542lstm_cell_62544lstm_cell_62546*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_62541n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_62542lstm_cell_62544lstm_cell_62546*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_62556*
condR
while_cond_62555*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name62542:%!

_user_specified_name62544:%!

_user_specified_name62546
Ѕ	
Њ
while_cond_63056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_63056___redundant_placeholder03
/while_while_cond_63056___redundant_placeholder13
/while_while_cond_63056___redundant_placeholder23
/while_while_cond_63056___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ы
Љ
.__inference_forward_lstm_3_layer_call_fn_65954

inputs
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_63330p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name65946:%!

_user_specified_name65948:%!

_user_specified_name65950
дM
ґ
 backward_lstm_3_while_body_64945<
8backward_lstm_3_while_backward_lstm_3_while_loop_counterB
>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations%
!backward_lstm_3_while_placeholder'
#backward_lstm_3_while_placeholder_1'
#backward_lstm_3_while_placeholder_2'
#backward_lstm_3_while_placeholder_3;
7backward_lstm_3_while_backward_lstm_3_strided_slice_1_0w
sbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0:	АV
Bbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0:
ААP
Abackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0:	А"
backward_lstm_3_while_identity$
 backward_lstm_3_while_identity_1$
 backward_lstm_3_while_identity_2$
 backward_lstm_3_while_identity_3$
 backward_lstm_3_while_identity_4$
 backward_lstm_3_while_identity_59
5backward_lstm_3_while_backward_lstm_3_strided_slice_1u
qbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource:	АT
@backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource:
ААN
?backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpҐ5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpҐ7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpШ
Gbackward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€€
9backward_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_3_while_placeholderPbackward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0Ј
5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0д
&backward_lstm_3/while/lstm_cell/MatMulMatMul@backward_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЉ
7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ћ
(backward_lstm_3/while/lstm_cell/MatMul_1MatMul#backward_lstm_3_while_placeholder_2?backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≈
#backward_lstm_3/while/lstm_cell/addAddV20backward_lstm_3/while/lstm_cell/MatMul:product:02backward_lstm_3/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0ќ
'backward_lstm_3/while/lstm_cell/BiasAddBiasAdd'backward_lstm_3/while/lstm_cell/add:z:0>backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
/backward_lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
%backward_lstm_3/while/lstm_cell/splitSplit8backward_lstm_3/while/lstm_cell/split/split_dim:output:00backward_lstm_3/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitХ
'backward_lstm_3/while/lstm_cell/SigmoidSigmoid.backward_lstm_3/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
)backward_lstm_3/while/lstm_cell/Sigmoid_1Sigmoid.backward_lstm_3/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А±
#backward_lstm_3/while/lstm_cell/mulMul-backward_lstm_3/while/lstm_cell/Sigmoid_1:y:0#backward_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€АП
$backward_lstm_3/while/lstm_cell/ReluRelu.backward_lstm_3/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€Ај
%backward_lstm_3/while/lstm_cell/mul_1Mul+backward_lstm_3/while/lstm_cell/Sigmoid:y:02backward_lstm_3/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
%backward_lstm_3/while/lstm_cell/add_1AddV2'backward_lstm_3/while/lstm_cell/mul:z:0)backward_lstm_3/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
)backward_lstm_3/while/lstm_cell/Sigmoid_2Sigmoid.backward_lstm_3/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АМ
&backward_lstm_3/while/lstm_cell/Relu_1Relu)backward_lstm_3/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аƒ
%backward_lstm_3/while/lstm_cell/mul_2Mul-backward_lstm_3/while/lstm_cell/Sigmoid_2:y:04backward_lstm_3/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
@backward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ™
:backward_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_3_while_placeholder_1Ibackward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0)backward_lstm_3/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“]
backward_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :М
backward_lstm_3/while/addAddV2!backward_lstm_3_while_placeholder$backward_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_3/while/add_1AddV28backward_lstm_3_while_backward_lstm_3_while_loop_counter&backward_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: Й
backward_lstm_3/while/IdentityIdentitybackward_lstm_3/while/add_1:z:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: ™
 backward_lstm_3/while/Identity_1Identity>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: Й
 backward_lstm_3/while/Identity_2Identitybackward_lstm_3/while/add:z:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: ґ
 backward_lstm_3/while/Identity_3IdentityJbackward_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: І
 backward_lstm_3/while/Identity_4Identity)backward_lstm_3/while/lstm_cell/mul_2:z:0^backward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АІ
 backward_lstm_3/while/Identity_5Identity)backward_lstm_3/while/lstm_cell/add_1:z:0^backward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аг
backward_lstm_3/while/NoOpNoOp7^backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp6^backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp8^backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5backward_lstm_3_while_backward_lstm_3_strided_slice_17backward_lstm_3_while_backward_lstm_3_strided_slice_1_0"I
backward_lstm_3_while_identity'backward_lstm_3/while/Identity:output:0"M
 backward_lstm_3_while_identity_1)backward_lstm_3/while/Identity_1:output:0"M
 backward_lstm_3_while_identity_2)backward_lstm_3/while/Identity_2:output:0"M
 backward_lstm_3_while_identity_3)backward_lstm_3/while/Identity_3:output:0"M
 backward_lstm_3_while_identity_4)backward_lstm_3/while/Identity_4:output:0"M
 backward_lstm_3_while_identity_5)backward_lstm_3/while/Identity_5:output:0"Д
?backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resourceAbackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0"Ж
@backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resourceBbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0"В
>backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0"и
qbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2p
6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp2n
5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp2r
7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_3/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_3/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97backward_lstm_3/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
п
Њ
.__inference_forward_lstm_3_layer_call_fn_65932
inputs_0
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identityИҐStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_62626p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:%!

_user_specified_name65924:%!

_user_specified_name65926:%!

_user_specified_name65928
л
Х
'__inference_dense_3_layer_call_fn_65911

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_64207o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:%!

_user_specified_name65905:%!

_user_specified_name65907
њС
і
!__inference__traced_restore_67656
file_prefix2
assignvariableop_dense_3_kernel:	А-
assignvariableop_1_dense_3_bias:U
Bassignvariableop_2_bidirectional_3_forward_lstm_3_lstm_cell_kernel:	А`
Lassignvariableop_3_bidirectional_3_forward_lstm_3_lstm_cell_recurrent_kernel:
ААO
@assignvariableop_4_bidirectional_3_forward_lstm_3_lstm_cell_bias:	АV
Cassignvariableop_5_bidirectional_3_backward_lstm_3_lstm_cell_kernel:	Аa
Massignvariableop_6_bidirectional_3_backward_lstm_3_lstm_cell_recurrent_kernel:
ААP
Aassignvariableop_7_bidirectional_3_backward_lstm_3_lstm_cell_bias:	А&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: ]
Jassignvariableop_10_adam_m_bidirectional_3_forward_lstm_3_lstm_cell_kernel:	А]
Jassignvariableop_11_adam_v_bidirectional_3_forward_lstm_3_lstm_cell_kernel:	Аh
Tassignvariableop_12_adam_m_bidirectional_3_forward_lstm_3_lstm_cell_recurrent_kernel:
ААh
Tassignvariableop_13_adam_v_bidirectional_3_forward_lstm_3_lstm_cell_recurrent_kernel:
ААW
Hassignvariableop_14_adam_m_bidirectional_3_forward_lstm_3_lstm_cell_bias:	АW
Hassignvariableop_15_adam_v_bidirectional_3_forward_lstm_3_lstm_cell_bias:	А^
Kassignvariableop_16_adam_m_bidirectional_3_backward_lstm_3_lstm_cell_kernel:	А^
Kassignvariableop_17_adam_v_bidirectional_3_backward_lstm_3_lstm_cell_kernel:	Аi
Uassignvariableop_18_adam_m_bidirectional_3_backward_lstm_3_lstm_cell_recurrent_kernel:
ААi
Uassignvariableop_19_adam_v_bidirectional_3_backward_lstm_3_lstm_cell_recurrent_kernel:
ААX
Iassignvariableop_20_adam_m_bidirectional_3_backward_lstm_3_lstm_cell_bias:	АX
Iassignvariableop_21_adam_v_bidirectional_3_backward_lstm_3_lstm_cell_bias:	А<
)assignvariableop_22_adam_m_dense_3_kernel:	А<
)assignvariableop_23_adam_v_dense_3_kernel:	А5
'assignvariableop_24_adam_m_dense_3_bias:5
'assignvariableop_25_adam_v_dense_3_bias:#
assignvariableop_26_total: #
assignvariableop_27_count: 
identity_29ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9х
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ы
valueСBОB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH™
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B ∞
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*И
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_2AssignVariableOpBassignvariableop_2_bidirectional_3_forward_lstm_3_lstm_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_3AssignVariableOpLassignvariableop_3_bidirectional_3_forward_lstm_3_lstm_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_4AssignVariableOp@assignvariableop_4_bidirectional_3_forward_lstm_3_lstm_cell_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_5AssignVariableOpCassignvariableop_5_bidirectional_3_backward_lstm_3_lstm_cell_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_6AssignVariableOpMassignvariableop_6_bidirectional_3_backward_lstm_3_lstm_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_7AssignVariableOpAassignvariableop_7_bidirectional_3_backward_lstm_3_lstm_cell_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:≥
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_10AssignVariableOpJassignvariableop_10_adam_m_bidirectional_3_forward_lstm_3_lstm_cell_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOpJassignvariableop_11_adam_v_bidirectional_3_forward_lstm_3_lstm_cell_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:н
AssignVariableOp_12AssignVariableOpTassignvariableop_12_adam_m_bidirectional_3_forward_lstm_3_lstm_cell_recurrent_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:н
AssignVariableOp_13AssignVariableOpTassignvariableop_13_adam_v_bidirectional_3_forward_lstm_3_lstm_cell_recurrent_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_14AssignVariableOpHassignvariableop_14_adam_m_bidirectional_3_forward_lstm_3_lstm_cell_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_15AssignVariableOpHassignvariableop_15_adam_v_bidirectional_3_forward_lstm_3_lstm_cell_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_16AssignVariableOpKassignvariableop_16_adam_m_bidirectional_3_backward_lstm_3_lstm_cell_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_17AssignVariableOpKassignvariableop_17_adam_v_bidirectional_3_backward_lstm_3_lstm_cell_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:о
AssignVariableOp_18AssignVariableOpUassignvariableop_18_adam_m_bidirectional_3_backward_lstm_3_lstm_cell_recurrent_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:о
AssignVariableOp_19AssignVariableOpUassignvariableop_19_adam_v_bidirectional_3_backward_lstm_3_lstm_cell_recurrent_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_20AssignVariableOpIassignvariableop_20_adam_m_bidirectional_3_backward_lstm_3_lstm_cell_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_21AssignVariableOpIassignvariableop_21_adam_v_bidirectional_3_backward_lstm_3_lstm_cell_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_m_dense_3_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_v_dense_3_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_m_dense_3_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_v_dense_3_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_26AssignVariableOpassignvariableop_26_totalIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_27AssignVariableOpassignvariableop_27_countIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Ј
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: А
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_29Identity_29:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_3/bias:OK
I
_user_specified_name1/bidirectional_3/forward_lstm_3/lstm_cell/kernel:YU
S
_user_specified_name;9bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel:MI
G
_user_specified_name/-bidirectional_3/forward_lstm_3/lstm_cell/bias:PL
J
_user_specified_name20bidirectional_3/backward_lstm_3/lstm_cell/kernel:ZV
T
_user_specified_name<:bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel:NJ
H
_user_specified_name0.bidirectional_3/backward_lstm_3/lstm_cell/bias:)	%
#
_user_specified_name	iteration:-
)
'
_user_specified_namelearning_rate:VR
P
_user_specified_name86Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/kernel:VR
P
_user_specified_name86Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/kernel:`\
Z
_user_specified_nameB@Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel:`\
Z
_user_specified_nameB@Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel:TP
N
_user_specified_name64Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/bias:TP
N
_user_specified_name64Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/bias:WS
Q
_user_specified_name97Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/kernel:WS
Q
_user_specified_name97Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/kernel:a]
[
_user_specified_nameCAAdam/m/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel:a]
[
_user_specified_nameCAAdam/v/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel:UQ
O
_user_specified_name75Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/bias:UQ
O
_user_specified_name75Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/bias:51
/
_user_specified_nameAdam/m/dense_3/kernel:51
/
_user_specified_nameAdam/v/dense_3/kernel:3/
-
_user_specified_nameAdam/m/dense_3/bias:3/
-
_user_specified_nameAdam/v/dense_3/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount
џM
ґ
 backward_lstm_3_while_body_65525<
8backward_lstm_3_while_backward_lstm_3_while_loop_counterB
>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations%
!backward_lstm_3_while_placeholder'
#backward_lstm_3_while_placeholder_1'
#backward_lstm_3_while_placeholder_2'
#backward_lstm_3_while_placeholder_3;
7backward_lstm_3_while_backward_lstm_3_strided_slice_1_0w
sbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0:	АV
Bbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0:
ААP
Abackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0:	А"
backward_lstm_3_while_identity$
 backward_lstm_3_while_identity_1$
 backward_lstm_3_while_identity_2$
 backward_lstm_3_while_identity_3$
 backward_lstm_3_while_identity_4$
 backward_lstm_3_while_identity_59
5backward_lstm_3_while_backward_lstm_3_strided_slice_1u
qbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource:	АT
@backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource:
ААN
?backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpҐ5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpҐ7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpШ
Gbackward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ц
9backward_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_3_while_placeholderPbackward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ј
5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0д
&backward_lstm_3/while/lstm_cell/MatMulMatMul@backward_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЉ
7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ћ
(backward_lstm_3/while/lstm_cell/MatMul_1MatMul#backward_lstm_3_while_placeholder_2?backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≈
#backward_lstm_3/while/lstm_cell/addAddV20backward_lstm_3/while/lstm_cell/MatMul:product:02backward_lstm_3/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0ќ
'backward_lstm_3/while/lstm_cell/BiasAddBiasAdd'backward_lstm_3/while/lstm_cell/add:z:0>backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
/backward_lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
%backward_lstm_3/while/lstm_cell/splitSplit8backward_lstm_3/while/lstm_cell/split/split_dim:output:00backward_lstm_3/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitХ
'backward_lstm_3/while/lstm_cell/SigmoidSigmoid.backward_lstm_3/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
)backward_lstm_3/while/lstm_cell/Sigmoid_1Sigmoid.backward_lstm_3/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А±
#backward_lstm_3/while/lstm_cell/mulMul-backward_lstm_3/while/lstm_cell/Sigmoid_1:y:0#backward_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€АП
$backward_lstm_3/while/lstm_cell/ReluRelu.backward_lstm_3/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€Ај
%backward_lstm_3/while/lstm_cell/mul_1Mul+backward_lstm_3/while/lstm_cell/Sigmoid:y:02backward_lstm_3/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
%backward_lstm_3/while/lstm_cell/add_1AddV2'backward_lstm_3/while/lstm_cell/mul:z:0)backward_lstm_3/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
)backward_lstm_3/while/lstm_cell/Sigmoid_2Sigmoid.backward_lstm_3/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АМ
&backward_lstm_3/while/lstm_cell/Relu_1Relu)backward_lstm_3/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аƒ
%backward_lstm_3/while/lstm_cell/mul_2Mul-backward_lstm_3/while/lstm_cell/Sigmoid_2:y:04backward_lstm_3/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
@backward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ™
:backward_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_3_while_placeholder_1Ibackward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0)backward_lstm_3/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“]
backward_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :М
backward_lstm_3/while/addAddV2!backward_lstm_3_while_placeholder$backward_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_3/while/add_1AddV28backward_lstm_3_while_backward_lstm_3_while_loop_counter&backward_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: Й
backward_lstm_3/while/IdentityIdentitybackward_lstm_3/while/add_1:z:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: ™
 backward_lstm_3/while/Identity_1Identity>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: Й
 backward_lstm_3/while/Identity_2Identitybackward_lstm_3/while/add:z:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: ґ
 backward_lstm_3/while/Identity_3IdentityJbackward_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: І
 backward_lstm_3/while/Identity_4Identity)backward_lstm_3/while/lstm_cell/mul_2:z:0^backward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АІ
 backward_lstm_3/while/Identity_5Identity)backward_lstm_3/while/lstm_cell/add_1:z:0^backward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аг
backward_lstm_3/while/NoOpNoOp7^backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp6^backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp8^backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5backward_lstm_3_while_backward_lstm_3_strided_slice_17backward_lstm_3_while_backward_lstm_3_strided_slice_1_0"I
backward_lstm_3_while_identity'backward_lstm_3/while/Identity:output:0"M
 backward_lstm_3_while_identity_1)backward_lstm_3/while/Identity_1:output:0"M
 backward_lstm_3_while_identity_2)backward_lstm_3/while/Identity_2:output:0"M
 backward_lstm_3_while_identity_3)backward_lstm_3/while/Identity_3:output:0"M
 backward_lstm_3_while_identity_4)backward_lstm_3/while/Identity_4:output:0"M
 backward_lstm_3_while_identity_5)backward_lstm_3/while/Identity_5:output:0"Д
?backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resourceAbackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0"Ж
@backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resourceBbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0"В
>backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0"и
qbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2p
6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp2n
5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp2r
7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_3/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_3/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97backward_lstm_3/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ЃK
Р
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_63330

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
АА8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ё
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_63245*
condR
while_cond_63244*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
≤
ю
 backward_lstm_3_while_cond_65524<
8backward_lstm_3_while_backward_lstm_3_while_loop_counterB
>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations%
!backward_lstm_3_while_placeholder'
#backward_lstm_3_while_placeholder_1'
#backward_lstm_3_while_placeholder_2'
#backward_lstm_3_while_placeholder_3>
:backward_lstm_3_while_less_backward_lstm_3_strided_slice_1S
Obackward_lstm_3_while_backward_lstm_3_while_cond_65524___redundant_placeholder0S
Obackward_lstm_3_while_backward_lstm_3_while_cond_65524___redundant_placeholder1S
Obackward_lstm_3_while_backward_lstm_3_while_cond_65524___redundant_placeholder2S
Obackward_lstm_3_while_backward_lstm_3_while_cond_65524___redundant_placeholder3"
backward_lstm_3_while_identity
Ґ
backward_lstm_3/while/LessLess!backward_lstm_3_while_placeholder:backward_lstm_3_while_less_backward_lstm_3_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_3/while/IdentityIdentitybackward_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_3_while_identity'backward_lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_3/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_3/strided_slice_1:

_output_shapes
:
Ѕ	
Њ
while_cond_66797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_66797___redundant_placeholder03
/while_while_cond_66797___redundant_placeholder13
/while_while_cond_66797___redundant_placeholder23
/while_while_cond_66797___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Й;
ю
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_62978

inputs"
lstm_cell_62894:	А#
lstm_cell_62896:
АА
lstm_cell_62898:	А
identityИҐ!lstm_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   е
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskе
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_62894lstm_cell_62896lstm_cell_62898*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_62893n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_62894lstm_cell_62896lstm_cell_62898*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_62908*
condR
while_cond_62907*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name62894:%!

_user_specified_name62896:%!

_user_specified_name62898
і
∞
Umodel_9_bidirectionalLSTM_univariate_bidirectional_3_backward_lstm_3_while_cond_62385І
Ґmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_loop_counter≠
®model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_maximum_iterationsZ
Vmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_placeholder\
Xmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_placeholder_1\
Xmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_placeholder_2\
Xmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_placeholder_3©
§model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_less_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_strided_slice_1Њ
єmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_cond_62385___redundant_placeholder0Њ
єmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_cond_62385___redundant_placeholder1Њ
єmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_cond_62385___redundant_placeholder2Њ
єmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_cond_62385___redundant_placeholder3W
Smodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_identity
ч
Omodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/LessLessVmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_placeholder§model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_less_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_strided_slice_1*
T0*
_output_shapes
: ’
Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/IdentityIdentitySmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "≥
Smodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_identity\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::Р Л

_output_shapes
: 
q
_user_specified_nameYWmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/loop_counter:ЦС

_output_shapes
: 
w
_user_specified_name_]model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:НИ

_output_shapes
: 
n
_user_specified_nameVTmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_1:

_output_shapes
:
»
Г
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67341

inputs
states_0
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€АV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€АO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€А`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€АL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
–
_
C__inference_lambda_3_layer_call_and_return_conditional_losses_64222

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
сL
У
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_66883
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
АА8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   е
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ё
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_66798*
condR
while_cond_66797*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
јL
Ц
forward_lstm_3_while_body_63954:
6forward_lstm_3_while_forward_lstm_3_while_loop_counter@
<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations$
 forward_lstm_3_while_placeholder&
"forward_lstm_3_while_placeholder_1&
"forward_lstm_3_while_placeholder_2&
"forward_lstm_3_while_placeholder_39
5forward_lstm_3_while_forward_lstm_3_strided_slice_1_0u
qforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0:	АU
Aforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0:
ААO
@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0:	А!
forward_lstm_3_while_identity#
forward_lstm_3_while_identity_1#
forward_lstm_3_while_identity_2#
forward_lstm_3_while_identity_3#
forward_lstm_3_while_identity_4#
forward_lstm_3_while_identity_57
3forward_lstm_3_while_forward_lstm_3_strided_slice_1s
oforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource:	АS
?forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource:
ААM
>forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpҐ4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpҐ6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpЧ
Fforward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   с
8forward_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_3_while_placeholderOforward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0µ
4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0б
%forward_lstm_3/while/lstm_cell/MatMulMatMul?forward_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0»
'forward_lstm_3/while/lstm_cell/MatMul_1MatMul"forward_lstm_3_while_placeholder_2>forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¬
"forward_lstm_3/while/lstm_cell/addAddV2/forward_lstm_3/while/lstm_cell/MatMul:product:01forward_lstm_3/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ћ
&forward_lstm_3/while/lstm_cell/BiasAddBiasAdd&forward_lstm_3/while/lstm_cell/add:z:0=forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
.forward_lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ч
$forward_lstm_3/while/lstm_cell/splitSplit7forward_lstm_3/while/lstm_cell/split/split_dim:output:0/forward_lstm_3/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitУ
&forward_lstm_3/while/lstm_cell/SigmoidSigmoid-forward_lstm_3/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
(forward_lstm_3/while/lstm_cell/Sigmoid_1Sigmoid-forward_lstm_3/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЃ
"forward_lstm_3/while/lstm_cell/mulMul,forward_lstm_3/while/lstm_cell/Sigmoid_1:y:0"forward_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€АН
#forward_lstm_3/while/lstm_cell/ReluRelu-forward_lstm_3/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€Аљ
$forward_lstm_3/while/lstm_cell/mul_1Mul*forward_lstm_3/while/lstm_cell/Sigmoid:y:01forward_lstm_3/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
$forward_lstm_3/while/lstm_cell/add_1AddV2&forward_lstm_3/while/lstm_cell/mul:z:0(forward_lstm_3/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
(forward_lstm_3/while/lstm_cell/Sigmoid_2Sigmoid-forward_lstm_3/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АК
%forward_lstm_3/while/lstm_cell/Relu_1Relu(forward_lstm_3/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЅ
$forward_lstm_3/while/lstm_cell/mul_2Mul,forward_lstm_3/while/lstm_cell/Sigmoid_2:y:03forward_lstm_3/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
?forward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¶
9forward_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_3_while_placeholder_1Hforward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0(forward_lstm_3/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“\
forward_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Й
forward_lstm_3/while/addAddV2 forward_lstm_3_while_placeholder#forward_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_3/while/add_1AddV26forward_lstm_3_while_forward_lstm_3_while_loop_counter%forward_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: Ж
forward_lstm_3/while/IdentityIdentityforward_lstm_3/while/add_1:z:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: ¶
forward_lstm_3/while/Identity_1Identity<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: Ж
forward_lstm_3/while/Identity_2Identityforward_lstm_3/while/add:z:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: ≥
forward_lstm_3/while/Identity_3IdentityIforward_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_3/while/Identity_4Identity(forward_lstm_3/while/lstm_cell/mul_2:z:0^forward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А§
forward_lstm_3/while/Identity_5Identity(forward_lstm_3/while/lstm_cell/add_1:z:0^forward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Ая
forward_lstm_3/while/NoOpNoOp6^forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp5^forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp7^forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "l
3forward_lstm_3_while_forward_lstm_3_strided_slice_15forward_lstm_3_while_forward_lstm_3_strided_slice_1_0"G
forward_lstm_3_while_identity&forward_lstm_3/while/Identity:output:0"K
forward_lstm_3_while_identity_1(forward_lstm_3/while/Identity_1:output:0"K
forward_lstm_3_while_identity_2(forward_lstm_3/while/Identity_2:output:0"K
forward_lstm_3_while_identity_3(forward_lstm_3/while/Identity_3:output:0"K
forward_lstm_3_while_identity_4(forward_lstm_3/while/Identity_4:output:0"K
forward_lstm_3_while_identity_5(forward_lstm_3/while/Identity_5:output:0"В
>forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0"Д
?forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resourceAforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0"А
=forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0"д
oforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensorqforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2n
5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp2l
4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp2p
6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_3/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_3/strided_slice_1:nj

_output_shapes
: 
P
_user_specified_name86forward_lstm_3/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
≠
и
D__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_64575
lambda_3_input
unknown:	А
	unknown_0:
АА
	unknown_1:	А
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИҐStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCalllambda_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *h
fcRa
___inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_64533o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namelambda_3_input:%!

_user_specified_name64557:%!

_user_specified_name64559:%!

_user_specified_name64561:%!

_user_specified_name64563:%!

_user_specified_name64565:%!

_user_specified_name64567:%!

_user_specified_name64569:%!

_user_specified_name64571
У
к
forward_lstm_3_while_cond_64801:
6forward_lstm_3_while_forward_lstm_3_while_loop_counter@
<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations$
 forward_lstm_3_while_placeholder&
"forward_lstm_3_while_placeholder_1&
"forward_lstm_3_while_placeholder_2&
"forward_lstm_3_while_placeholder_3<
8forward_lstm_3_while_less_forward_lstm_3_strided_slice_1Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_64801___redundant_placeholder0Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_64801___redundant_placeholder1Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_64801___redundant_placeholder2Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_64801___redundant_placeholder3!
forward_lstm_3_while_identity
Ю
forward_lstm_3/while/LessLess forward_lstm_3_while_placeholder8forward_lstm_3_while_less_forward_lstm_3_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_3/while/IdentityIdentityforward_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_3_while_identity&forward_lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_3/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_3/strided_slice_1:

_output_shapes
:
с
њ
/__inference_backward_lstm_3_layer_call_fn_66567
inputs_0
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identityИҐStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_63127p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:%!

_user_specified_name66559:%!

_user_specified_name66561:%!

_user_specified_name66563
“

Ф
/__inference_bidirectional_3_layer_call_fn_64742

inputs
unknown:	А
	unknown_0:
АА
	unknown_1:	А
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
identityИҐStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_64513p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name64728:%!

_user_specified_name64730:%!

_user_specified_name64732:%!

_user_specified_name64734:%!

_user_specified_name64736:%!

_user_specified_name64738
Х
Ь
Tmodel_9_bidirectionalLSTM_univariate_bidirectional_3_forward_lstm_3_while_cond_62242•
†model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_loop_counterЂ
¶model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_maximum_iterationsY
Umodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_placeholder[
Wmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_placeholder_1[
Wmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_placeholder_2[
Wmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_placeholder_3І
Ґmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_less_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_strided_slice_1Љ
Јmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_cond_62242___redundant_placeholder0Љ
Јmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_cond_62242___redundant_placeholder1Љ
Јmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_cond_62242___redundant_placeholder2Љ
Јmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_cond_62242___redundant_placeholder3V
Rmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_identity
у
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/LessLessUmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_placeholderҐmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_less_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_strided_slice_1*
T0*
_output_shapes
: ”
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/IdentityIdentityRmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "±
Rmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_identity[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::П К

_output_shapes
: 
p
_user_specified_nameXVmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/loop_counter:ХР

_output_shapes
: 
v
_user_specified_name^\model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:МЗ

_output_shapes
: 
m
_user_specified_nameUSmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_1:

_output_shapes
:
ЧM
С
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_67177

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
АА8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ж
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€е
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ё
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_67092*
condR
while_cond_67091*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ЧM
С
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_63484

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
АА8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ж
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€е
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ё
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_63399*
condR
while_cond_63398*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
’%
…
while_body_62556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_62580_0:	А+
while_lstm_cell_62582_0:
АА&
while_lstm_cell_62584_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_62580:	А)
while_lstm_cell_62582:
АА$
while_lstm_cell_62584:	АИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0£
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_62580_0while_lstm_cell_62582_0while_lstm_cell_62584_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_62541r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: О
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АО
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_62580while_lstm_cell_62580_0"0
while_lstm_cell_62582while_lstm_cell_62582_0"0
while_lstm_cell_62584while_lstm_cell_62584_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:%!

_user_specified_name62580:%	!

_user_specified_name62582:%
!

_user_specified_name62584
ф
ѓ
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_63807

inputs'
forward_lstm_3_63643:	А(
forward_lstm_3_63645:
АА#
forward_lstm_3_63647:	А(
backward_lstm_3_63797:	А)
backward_lstm_3_63799:
АА$
backward_lstm_3_63801:	А
identityИҐ'backward_lstm_3/StatefulPartitionedCallҐ&forward_lstm_3/StatefulPartitionedCallЮ
&forward_lstm_3/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_3_63643forward_lstm_3_63645forward_lstm_3_63647*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_63642£
'backward_lstm_3/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_3_63797backward_lstm_3_63799backward_lstm_3_63801*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_63796M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :«
concatConcatV2/forward_lstm_3/StatefulPartitionedCall:output:00backward_lstm_3/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€А_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аu
NoOpNoOp(^backward_lstm_3/StatefulPartitionedCall'^forward_lstm_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : 2R
'backward_lstm_3/StatefulPartitionedCall'backward_lstm_3/StatefulPartitionedCall2P
&forward_lstm_3/StatefulPartitionedCall&forward_lstm_3/StatefulPartitionedCall:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name63643:%!

_user_specified_name63645:%!

_user_specified_name63647:%!

_user_specified_name63797:%!

_user_specified_name63799:%!

_user_specified_name63801
Ы:
ґ
while_body_66651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
АА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
АА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€Аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Ѕ	
Њ
while_cond_66169
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_66169___redundant_placeholder03
/while_while_cond_66169___redundant_placeholder13
/while_while_cond_66169___redundant_placeholder23
/while_while_cond_66169___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
¶љ
Ф
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65032
inputs_0J
7forward_lstm_3_lstm_cell_matmul_readvariableop_resource:	АM
9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource:
ААG
8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource:	АK
8backward_lstm_3_lstm_cell_matmul_readvariableop_resource:	АN
:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource:
ААH
9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpҐ/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpҐ1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpҐbackward_lstm_3/whileҐ/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpҐ.forward_lstm_3/lstm_cell/MatMul/ReadVariableOpҐ0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpҐforward_lstm_3/whileZ
forward_lstm_3/ShapeShapeinputs_0*
T0*
_output_shapes
::нѕl
"forward_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
forward_lstm_3/strided_sliceStridedSliceforward_lstm_3/Shape:output:0+forward_lstm_3/strided_slice/stack:output:0-forward_lstm_3/strided_slice/stack_1:output:0-forward_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А†
forward_lstm_3/zeros/packedPack%forward_lstm_3/strided_slice:output:0&forward_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
forward_lstm_3/zerosFill$forward_lstm_3/zeros/packed:output:0#forward_lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
forward_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А§
forward_lstm_3/zeros_1/packedPack%forward_lstm_3/strided_slice:output:0(forward_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    †
forward_lstm_3/zeros_1Fill&forward_lstm_3/zeros_1/packed:output:0%forward_lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
forward_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
forward_lstm_3/transpose	Transposeinputs_0&forward_lstm_3/transpose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€p
forward_lstm_3/Shape_1Shapeforward_lstm_3/transpose:y:0*
T0*
_output_shapes
::нѕn
$forward_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
forward_lstm_3/strided_slice_1StridedSliceforward_lstm_3/Shape_1:output:0-forward_lstm_3/strided_slice_1/stack:output:0/forward_lstm_3/strided_slice_1/stack_1:output:0/forward_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€б
forward_lstm_3/TensorArrayV2TensorListReserve3forward_lstm_3/TensorArrayV2/element_shape:output:0'forward_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Х
Dforward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€Н
6forward_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_3/transpose:y:0Mforward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“n
$forward_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
forward_lstm_3/strided_slice_2StridedSliceforward_lstm_3/transpose:y:0-forward_lstm_3/strided_slice_2/stack:output:0/forward_lstm_3/strided_slice_2/stack_1:output:0/forward_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_maskІ
.forward_lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOp7forward_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0љ
forward_lstm_3/lstm_cell/MatMulMatMul'forward_lstm_3/strided_slice_2:output:06forward_lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ађ
0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ј
!forward_lstm_3/lstm_cell/MatMul_1MatMulforward_lstm_3/zeros:output:08forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А∞
forward_lstm_3/lstm_cell/addAddV2)forward_lstm_3/lstm_cell/MatMul:product:0+forward_lstm_3/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А•
/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0є
 forward_lstm_3/lstm_cell/BiasAddBiasAdd forward_lstm_3/lstm_cell/add:z:07forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аj
(forward_lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
forward_lstm_3/lstm_cell/splitSplit1forward_lstm_3/lstm_cell/split/split_dim:output:0)forward_lstm_3/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЗ
 forward_lstm_3/lstm_cell/SigmoidSigmoid'forward_lstm_3/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
"forward_lstm_3/lstm_cell/Sigmoid_1Sigmoid'forward_lstm_3/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЯ
forward_lstm_3/lstm_cell/mulMul&forward_lstm_3/lstm_cell/Sigmoid_1:y:0forward_lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
forward_lstm_3/lstm_cell/ReluRelu'forward_lstm_3/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЂ
forward_lstm_3/lstm_cell/mul_1Mul$forward_lstm_3/lstm_cell/Sigmoid:y:0+forward_lstm_3/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А†
forward_lstm_3/lstm_cell/add_1AddV2 forward_lstm_3/lstm_cell/mul:z:0"forward_lstm_3/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
"forward_lstm_3/lstm_cell/Sigmoid_2Sigmoid'forward_lstm_3/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А~
forward_lstm_3/lstm_cell/Relu_1Relu"forward_lstm_3/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аѓ
forward_lstm_3/lstm_cell/mul_2Mul&forward_lstm_3/lstm_cell/Sigmoid_2:y:0-forward_lstm_3/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А}
,forward_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   m
+forward_lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :т
forward_lstm_3/TensorArrayV2_1TensorListReserve5forward_lstm_3/TensorArrayV2_1/element_shape:output:04forward_lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“U
forward_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€c
!forward_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ∞
forward_lstm_3/whileWhile*forward_lstm_3/while/loop_counter:output:00forward_lstm_3/while/maximum_iterations:output:0forward_lstm_3/time:output:0'forward_lstm_3/TensorArrayV2_1:handle:0forward_lstm_3/zeros:output:0forward_lstm_3/zeros_1:output:0'forward_lstm_3/strided_slice_1:output:0Fforward_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_3_lstm_cell_matmul_readvariableop_resource9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*+
body#R!
forward_lstm_3_while_body_64802*+
cond#R!
forward_lstm_3_while_cond_64801*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Р
?forward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Д
1forward_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_3/while:output:3Hforward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsw
$forward_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€p
&forward_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_3/strided_slice_3StridedSlice:forward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_3/strided_slice_3/stack:output:0/forward_lstm_3/strided_slice_3/stack_1:output:0/forward_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maskt
forward_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ƒ
forward_lstm_3/transpose_1	Transpose:forward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Аj
forward_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    [
backward_lstm_3/ShapeShapeinputs_0*
T0*
_output_shapes
::нѕm
#backward_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
backward_lstm_3/strided_sliceStridedSlicebackward_lstm_3/Shape:output:0,backward_lstm_3/strided_slice/stack:output:0.backward_lstm_3/strided_slice/stack_1:output:0.backward_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А£
backward_lstm_3/zeros/packedPack&backward_lstm_3/strided_slice:output:0'backward_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
backward_lstm_3/zerosFill%backward_lstm_3/zeros/packed:output:0$backward_lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
 backward_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :АІ
backward_lstm_3/zeros_1/packedPack&backward_lstm_3/strided_slice:output:0)backward_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_3/zeros_1Fill'backward_lstm_3/zeros_1/packed:output:0&backward_lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
backward_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          °
backward_lstm_3/transpose	Transposeinputs_0'backward_lstm_3/transpose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€r
backward_lstm_3/Shape_1Shapebackward_lstm_3/transpose:y:0*
T0*
_output_shapes
::нѕo
%backward_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
backward_lstm_3/strided_slice_1StridedSlice backward_lstm_3/Shape_1:output:0.backward_lstm_3/strided_slice_1/stack:output:00backward_lstm_3/strided_slice_1/stack_1:output:00backward_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€д
backward_lstm_3/TensorArrayV2TensorListReserve4backward_lstm_3/TensorArrayV2/element_shape:output:0(backward_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“h
backward_lstm_3/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ґ
backward_lstm_3/ReverseV2	ReverseV2backward_lstm_3/transpose:y:0'backward_lstm_3/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€Ц
Ebackward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€Х
7backward_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_3/ReverseV2:output:0Nbackward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“o
%backward_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
backward_lstm_3/strided_slice_2StridedSlicebackward_lstm_3/transpose:y:0.backward_lstm_3/strided_slice_2/stack:output:00backward_lstm_3/strided_slice_2/stack_1:output:00backward_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_mask©
/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOp8backward_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ј
 backward_lstm_3/lstm_cell/MatMulMatMul(backward_lstm_3/strided_slice_2:output:07backward_lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ї
"backward_lstm_3/lstm_cell/MatMul_1MatMulbackward_lstm_3/zeros:output:09backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
backward_lstm_3/lstm_cell/addAddV2*backward_lstm_3/lstm_cell/MatMul:product:0,backward_lstm_3/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АІ
0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
!backward_lstm_3/lstm_cell/BiasAddBiasAdd!backward_lstm_3/lstm_cell/add:z:08backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
)backward_lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
backward_lstm_3/lstm_cell/splitSplit2backward_lstm_3/lstm_cell/split/split_dim:output:0*backward_lstm_3/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЙ
!backward_lstm_3/lstm_cell/SigmoidSigmoid(backward_lstm_3/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
#backward_lstm_3/lstm_cell/Sigmoid_1Sigmoid(backward_lstm_3/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АҐ
backward_lstm_3/lstm_cell/mulMul'backward_lstm_3/lstm_cell/Sigmoid_1:y:0 backward_lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
backward_lstm_3/lstm_cell/ReluRelu(backward_lstm_3/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЃ
backward_lstm_3/lstm_cell/mul_1Mul%backward_lstm_3/lstm_cell/Sigmoid:y:0,backward_lstm_3/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А£
backward_lstm_3/lstm_cell/add_1AddV2!backward_lstm_3/lstm_cell/mul:z:0#backward_lstm_3/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
#backward_lstm_3/lstm_cell/Sigmoid_2Sigmoid(backward_lstm_3/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АА
 backward_lstm_3/lstm_cell/Relu_1Relu#backward_lstm_3/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
backward_lstm_3/lstm_cell/mul_2Mul'backward_lstm_3/lstm_cell/Sigmoid_2:y:0.backward_lstm_3/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А~
-backward_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   n
,backward_lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :х
backward_lstm_3/TensorArrayV2_1TensorListReserve6backward_lstm_3/TensorArrayV2_1/element_shape:output:05backward_lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“V
backward_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€d
"backward_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Њ
backward_lstm_3/whileWhile+backward_lstm_3/while/loop_counter:output:01backward_lstm_3/while/maximum_iterations:output:0backward_lstm_3/time:output:0(backward_lstm_3/TensorArrayV2_1:handle:0backward_lstm_3/zeros:output:0 backward_lstm_3/zeros_1:output:0(backward_lstm_3/strided_slice_1:output:0Gbackward_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_3_lstm_cell_matmul_readvariableop_resource:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 backward_lstm_3_while_body_64945*,
cond$R"
 backward_lstm_3_while_cond_64944*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations С
@backward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   З
2backward_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_3/while:output:3Ibackward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsx
%backward_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€q
'backward_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
backward_lstm_3/strided_slice_3StridedSlice;backward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_3/strided_slice_3/stack:output:00backward_lstm_3/strided_slice_3/stack_1:output:00backward_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_masku
 backward_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
backward_lstm_3/transpose_1	Transpose;backward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Аk
backward_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ј
concatConcatV2'forward_lstm_3/strided_slice_3:output:0(backward_lstm_3/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€А_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АА
NoOpNoOp1^backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp0^backward_lstm_3/lstm_cell/MatMul/ReadVariableOp2^backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_3/while0^forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp/^forward_lstm_3/lstm_cell/MatMul/ReadVariableOp1^forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_3/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : 2d
0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp2b
/backward_lstm_3/lstm_cell/MatMul/ReadVariableOp/backward_lstm_3/lstm_cell/MatMul/ReadVariableOp2f
1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp2.
backward_lstm_3/whilebackward_lstm_3/while2b
/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp2`
.forward_lstm_3/lstm_cell/MatMul/ReadVariableOp.forward_lstm_3/lstm_cell/MatMul/ReadVariableOp2d
0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp2,
forward_lstm_3/whileforward_lstm_3/while:g c
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ь

Ц
/__inference_bidirectional_3_layer_call_fn_64708
inputs_0
unknown:	А
	unknown_0:
АА
	unknown_1:	А
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
identityИҐStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_63807p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:%!

_user_specified_name64694:%!

_user_specified_name64696:%!

_user_specified_name64698:%!

_user_specified_name64700:%!

_user_specified_name64702:%!

_user_specified_name64704
≠
и
D__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_64554
lambda_3_input
unknown:	А
	unknown_0:
АА
	unknown_1:	А
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИҐStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCalllambda_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *h
fcRa
___inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_64214o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namelambda_3_input:%!

_user_specified_name64536:%!

_user_specified_name64538:%!

_user_specified_name64540:%!

_user_specified_name64542:%!

_user_specified_name64544:%!

_user_specified_name64546:%!

_user_specified_name64548:%!

_user_specified_name64550
ф
ѓ
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_63495

inputs'
forward_lstm_3_63331:	А(
forward_lstm_3_63333:
АА#
forward_lstm_3_63335:	А(
backward_lstm_3_63485:	А)
backward_lstm_3_63487:
АА$
backward_lstm_3_63489:	А
identityИҐ'backward_lstm_3/StatefulPartitionedCallҐ&forward_lstm_3/StatefulPartitionedCallЮ
&forward_lstm_3/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_3_63331forward_lstm_3_63333forward_lstm_3_63335*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_63330£
'backward_lstm_3/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_3_63485backward_lstm_3_63487backward_lstm_3_63489*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_63484M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :«
concatConcatV2/forward_lstm_3/StatefulPartitionedCall:output:00backward_lstm_3/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€А_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аu
NoOpNoOp(^backward_lstm_3/StatefulPartitionedCall'^forward_lstm_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : 2R
'backward_lstm_3/StatefulPartitionedCall'backward_lstm_3/StatefulPartitionedCall2P
&forward_lstm_3/StatefulPartitionedCall&forward_lstm_3/StatefulPartitionedCall:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name63331:%!

_user_specified_name63333:%!

_user_specified_name63335:%!

_user_specified_name63485:%!

_user_specified_name63487:%!

_user_specified_name63489
Ы:
ґ
while_body_66025
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
АА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
АА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€Аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
э
љ
/__inference_backward_lstm_3_layer_call_fn_66589

inputs
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identityИҐStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_63796p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name66581:%!

_user_specified_name66583:%!

_user_specified_name66585
јL
Ц
forward_lstm_3_while_body_65382:
6forward_lstm_3_while_forward_lstm_3_while_loop_counter@
<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations$
 forward_lstm_3_while_placeholder&
"forward_lstm_3_while_placeholder_1&
"forward_lstm_3_while_placeholder_2&
"forward_lstm_3_while_placeholder_39
5forward_lstm_3_while_forward_lstm_3_strided_slice_1_0u
qforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0:	АU
Aforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0:
ААO
@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0:	А!
forward_lstm_3_while_identity#
forward_lstm_3_while_identity_1#
forward_lstm_3_while_identity_2#
forward_lstm_3_while_identity_3#
forward_lstm_3_while_identity_4#
forward_lstm_3_while_identity_57
3forward_lstm_3_while_forward_lstm_3_strided_slice_1s
oforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource:	АS
?forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource:
ААM
>forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpҐ4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpҐ6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpЧ
Fforward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   с
8forward_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_3_while_placeholderOforward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0µ
4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0б
%forward_lstm_3/while/lstm_cell/MatMulMatMul?forward_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0»
'forward_lstm_3/while/lstm_cell/MatMul_1MatMul"forward_lstm_3_while_placeholder_2>forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¬
"forward_lstm_3/while/lstm_cell/addAddV2/forward_lstm_3/while/lstm_cell/MatMul:product:01forward_lstm_3/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ћ
&forward_lstm_3/while/lstm_cell/BiasAddBiasAdd&forward_lstm_3/while/lstm_cell/add:z:0=forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
.forward_lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ч
$forward_lstm_3/while/lstm_cell/splitSplit7forward_lstm_3/while/lstm_cell/split/split_dim:output:0/forward_lstm_3/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitУ
&forward_lstm_3/while/lstm_cell/SigmoidSigmoid-forward_lstm_3/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
(forward_lstm_3/while/lstm_cell/Sigmoid_1Sigmoid-forward_lstm_3/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЃ
"forward_lstm_3/while/lstm_cell/mulMul,forward_lstm_3/while/lstm_cell/Sigmoid_1:y:0"forward_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€АН
#forward_lstm_3/while/lstm_cell/ReluRelu-forward_lstm_3/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€Аљ
$forward_lstm_3/while/lstm_cell/mul_1Mul*forward_lstm_3/while/lstm_cell/Sigmoid:y:01forward_lstm_3/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
$forward_lstm_3/while/lstm_cell/add_1AddV2&forward_lstm_3/while/lstm_cell/mul:z:0(forward_lstm_3/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
(forward_lstm_3/while/lstm_cell/Sigmoid_2Sigmoid-forward_lstm_3/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АК
%forward_lstm_3/while/lstm_cell/Relu_1Relu(forward_lstm_3/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЅ
$forward_lstm_3/while/lstm_cell/mul_2Mul,forward_lstm_3/while/lstm_cell/Sigmoid_2:y:03forward_lstm_3/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
?forward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¶
9forward_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_3_while_placeholder_1Hforward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0(forward_lstm_3/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“\
forward_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Й
forward_lstm_3/while/addAddV2 forward_lstm_3_while_placeholder#forward_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_3/while/add_1AddV26forward_lstm_3_while_forward_lstm_3_while_loop_counter%forward_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: Ж
forward_lstm_3/while/IdentityIdentityforward_lstm_3/while/add_1:z:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: ¶
forward_lstm_3/while/Identity_1Identity<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: Ж
forward_lstm_3/while/Identity_2Identityforward_lstm_3/while/add:z:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: ≥
forward_lstm_3/while/Identity_3IdentityIforward_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_3/while/Identity_4Identity(forward_lstm_3/while/lstm_cell/mul_2:z:0^forward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А§
forward_lstm_3/while/Identity_5Identity(forward_lstm_3/while/lstm_cell/add_1:z:0^forward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Ая
forward_lstm_3/while/NoOpNoOp6^forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp5^forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp7^forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "l
3forward_lstm_3_while_forward_lstm_3_strided_slice_15forward_lstm_3_while_forward_lstm_3_strided_slice_1_0"G
forward_lstm_3_while_identity&forward_lstm_3/while/Identity:output:0"K
forward_lstm_3_while_identity_1(forward_lstm_3/while/Identity_1:output:0"K
forward_lstm_3_while_identity_2(forward_lstm_3/while/Identity_2:output:0"K
forward_lstm_3_while_identity_3(forward_lstm_3/while/Identity_3:output:0"K
forward_lstm_3_while_identity_4(forward_lstm_3/while/Identity_4:output:0"K
forward_lstm_3_while_identity_5(forward_lstm_3/while/Identity_5:output:0"В
>forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0"Д
?forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resourceAforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0"А
=forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0"д
oforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensorqforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2n
5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp2l
4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp2p
6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_3/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_3/strided_slice_1:nj

_output_shapes
: 
P
_user_specified_name86forward_lstm_3/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
»
Г
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67275

inputs
states_0
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€АV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€АO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€А`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€АL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
§:
ґ
while_body_66460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
АА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
АА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€ѓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€Аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ЃK
Р
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66400

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
АА8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ё
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_66315*
condR
while_cond_66314*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ы
Љ
.__inference_forward_lstm_3_layer_call_fn_65965

inputs
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_63642p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name65957:%!

_user_specified_name65959:%!

_user_specified_name65961
Ѕ	
Њ
while_cond_62907
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_62907___redundant_placeholder03
/while_while_cond_62907___redundant_placeholder13
/while_while_cond_62907___redundant_placeholder23
/while_while_cond_62907___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
сL
У
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_66736
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
АА8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   е
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ё
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_66651*
condR
while_cond_66650*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ЃK
Р
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66545

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
АА8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ё
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_66460*
condR
while_cond_66459*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ЗН
»
Tmodel_9_bidirectionalLSTM_univariate_bidirectional_3_forward_lstm_3_while_body_62243•
†model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_loop_counterЂ
¶model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_maximum_iterationsY
Umodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_placeholder[
Wmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_placeholder_1[
Wmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_placeholder_2[
Wmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_placeholder_3§
Яmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_strided_slice_1_0а
џmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0З
tmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0:	АК
vmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0:
ААД
umodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0:	АV
Rmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_identityX
Tmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_identity_1X
Tmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_identity_2X
Tmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_identity_3X
Tmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_identity_4X
Tmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_identity_5Ґ
Эmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_strided_slice_1ё
ўmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_tensorarrayunstack_tensorlistfromtensorЕ
rmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource:	АИ
tmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource:
ААВ
smodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource:	АИҐjmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpҐimodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpҐkmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpћ
{model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ь
mmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemџmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0Umodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_placeholderДmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Я
imodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpReadVariableOptmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0А
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMulMatMultmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0qmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А§
kmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpvmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0з
\model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMul_1MatMulWmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_placeholder_2smodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аб
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/addAddV2dmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMul:product:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЭ
jmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpumodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0к
[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/BiasAddBiasAdd[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/add:z:0rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А•
cmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/splitSplitlmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/split/split_dim:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitэ
[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/SigmoidSigmoidbmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А€
]model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/Sigmoid_1Sigmoidbmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЌ
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/mulMulamodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/Sigmoid_1:y:0Wmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€Ач
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/ReluRelubmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А№
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/mul_1Mul_model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/Sigmoid:y:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А—
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/add_1AddV2[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/mul:z:0]model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А€
]model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/Sigmoid_2Sigmoidbmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Аф
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/Relu_1Relu]model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аа
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/mul_2Mulamodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/Sigmoid_2:y:0hmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аґ
tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ъ
nmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemWmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_placeholder_1}model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“С
Omodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :®
Mmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/addAddV2Umodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_placeholderXmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: У
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ш
Omodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/add_1AddV2†model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_loop_counterZmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: •
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/IdentityIdentitySmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/add_1:z:0O^model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/NoOp*
T0*
_output_shapes
: ы
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/Identity_1Identity¶model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_maximum_iterationsO^model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/NoOp*
T0*
_output_shapes
: •
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/Identity_2IdentityQmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/add:z:0O^model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/NoOp*
T0*
_output_shapes
: “
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/Identity_3Identity~model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0O^model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/NoOp*
T0*
_output_shapes
: √
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/Identity_4Identity]model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/mul_2:z:0O^model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А√
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/Identity_5Identity]model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/add_1:z:0O^model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А≥
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/NoOpNoOpk^model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpj^model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpl^model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "±
Rmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_identity[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/Identity:output:0"µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_identity_1]model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/Identity_1:output:0"µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_identity_2]model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/Identity_2:output:0"µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_identity_3]model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/Identity_3:output:0"µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_identity_4]model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/Identity_4:output:0"µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_identity_5]model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/Identity_5:output:0"м
smodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resourceumodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0"о
tmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resourcevmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0"к
rmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_lstm_cell_matmul_readvariableop_resourcetmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0"¬
Эmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_strided_slice_1Яmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_strided_slice_1_0"Ї
ўmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_tensorarrayunstack_tensorlistfromtensorџmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2Ў
jmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpjmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp2÷
imodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpimodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp2Џ
kmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpkmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:П К

_output_shapes
: 
p
_user_specified_nameXVmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/loop_counter:ХР

_output_shapes
: 
v
_user_specified_name^\model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:МЗ

_output_shapes
: 
m
_user_specified_nameUSmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_1:•†

_output_shapes
: 
Е
_user_specified_namemkmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ј
Б
D__inference_lstm_cell_layer_call_and_return_conditional_losses_62893

inputs

states
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€АV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€АO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€А`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€АL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
–
_
C__inference_lambda_3_layer_call_and_return_conditional_losses_64668

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ТK
Т
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66110
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
АА8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ё
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_66025*
condR
while_cond_66024*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
»
Г
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67373

inputs
states_0
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€АV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€АO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€А`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€АL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ѕ	
Њ
while_cond_63244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_63244___redundant_placeholder03
/while_while_cond_63244___redundant_placeholder13
/while_while_cond_63244___redundant_placeholder23
/while_while_cond_63244___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ј
Б
D__inference_lstm_cell_layer_call_and_return_conditional_losses_62541

inputs

states
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€АV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€АO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€А`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€АL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ј
Б
D__inference_lstm_cell_layer_call_and_return_conditional_losses_62688

inputs

states
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€АV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€АO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€А`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€АL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
њ
у
)__inference_lstm_cell_layer_call_fn_67211

inputs
states_0
states_1
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_62688p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_1:%!

_user_specified_name67199:%!

_user_specified_name67201:%!

_user_specified_name67203
ТK
Т
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66255
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
АА8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ё
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_66170*
condR
while_cond_66169*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
…L
Ц
forward_lstm_3_while_body_64802:
6forward_lstm_3_while_forward_lstm_3_while_loop_counter@
<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations$
 forward_lstm_3_while_placeholder&
"forward_lstm_3_while_placeholder_1&
"forward_lstm_3_while_placeholder_2&
"forward_lstm_3_while_placeholder_39
5forward_lstm_3_while_forward_lstm_3_strided_slice_1_0u
qforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0:	АU
Aforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0:
ААO
@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0:	А!
forward_lstm_3_while_identity#
forward_lstm_3_while_identity_1#
forward_lstm_3_while_identity_2#
forward_lstm_3_while_identity_3#
forward_lstm_3_while_identity_4#
forward_lstm_3_while_identity_57
3forward_lstm_3_while_forward_lstm_3_strided_slice_1s
oforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource:	АS
?forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource:
ААM
>forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpҐ4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpҐ6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpЧ
Fforward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€ъ
8forward_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_3_while_placeholderOforward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0µ
4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0б
%forward_lstm_3/while/lstm_cell/MatMulMatMul?forward_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0»
'forward_lstm_3/while/lstm_cell/MatMul_1MatMul"forward_lstm_3_while_placeholder_2>forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¬
"forward_lstm_3/while/lstm_cell/addAddV2/forward_lstm_3/while/lstm_cell/MatMul:product:01forward_lstm_3/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ћ
&forward_lstm_3/while/lstm_cell/BiasAddBiasAdd&forward_lstm_3/while/lstm_cell/add:z:0=forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
.forward_lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ч
$forward_lstm_3/while/lstm_cell/splitSplit7forward_lstm_3/while/lstm_cell/split/split_dim:output:0/forward_lstm_3/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitУ
&forward_lstm_3/while/lstm_cell/SigmoidSigmoid-forward_lstm_3/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
(forward_lstm_3/while/lstm_cell/Sigmoid_1Sigmoid-forward_lstm_3/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЃ
"forward_lstm_3/while/lstm_cell/mulMul,forward_lstm_3/while/lstm_cell/Sigmoid_1:y:0"forward_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€АН
#forward_lstm_3/while/lstm_cell/ReluRelu-forward_lstm_3/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€Аљ
$forward_lstm_3/while/lstm_cell/mul_1Mul*forward_lstm_3/while/lstm_cell/Sigmoid:y:01forward_lstm_3/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
$forward_lstm_3/while/lstm_cell/add_1AddV2&forward_lstm_3/while/lstm_cell/mul:z:0(forward_lstm_3/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
(forward_lstm_3/while/lstm_cell/Sigmoid_2Sigmoid-forward_lstm_3/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АК
%forward_lstm_3/while/lstm_cell/Relu_1Relu(forward_lstm_3/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЅ
$forward_lstm_3/while/lstm_cell/mul_2Mul,forward_lstm_3/while/lstm_cell/Sigmoid_2:y:03forward_lstm_3/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
?forward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¶
9forward_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_3_while_placeholder_1Hforward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0(forward_lstm_3/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“\
forward_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Й
forward_lstm_3/while/addAddV2 forward_lstm_3_while_placeholder#forward_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_3/while/add_1AddV26forward_lstm_3_while_forward_lstm_3_while_loop_counter%forward_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: Ж
forward_lstm_3/while/IdentityIdentityforward_lstm_3/while/add_1:z:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: ¶
forward_lstm_3/while/Identity_1Identity<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: Ж
forward_lstm_3/while/Identity_2Identityforward_lstm_3/while/add:z:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: ≥
forward_lstm_3/while/Identity_3IdentityIforward_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_3/while/Identity_4Identity(forward_lstm_3/while/lstm_cell/mul_2:z:0^forward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А§
forward_lstm_3/while/Identity_5Identity(forward_lstm_3/while/lstm_cell/add_1:z:0^forward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Ая
forward_lstm_3/while/NoOpNoOp6^forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp5^forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp7^forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "l
3forward_lstm_3_while_forward_lstm_3_strided_slice_15forward_lstm_3_while_forward_lstm_3_strided_slice_1_0"G
forward_lstm_3_while_identity&forward_lstm_3/while/Identity:output:0"K
forward_lstm_3_while_identity_1(forward_lstm_3/while/Identity_1:output:0"K
forward_lstm_3_while_identity_2(forward_lstm_3/while/Identity_2:output:0"K
forward_lstm_3_while_identity_3(forward_lstm_3/while/Identity_3:output:0"K
forward_lstm_3_while_identity_4(forward_lstm_3/while/Identity_4:output:0"K
forward_lstm_3_while_identity_5(forward_lstm_3/while/Identity_5:output:0"В
>forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0"Д
?forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resourceAforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0"А
=forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0"д
oforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensorqforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2n
5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp2l
4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp2p
6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_3/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_3/strided_slice_1:nj

_output_shapes
: 
P
_user_specified_name86forward_lstm_3/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
’%
…
while_body_62703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_62727_0:	А+
while_lstm_cell_62729_0:
АА&
while_lstm_cell_62731_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_62727:	А)
while_lstm_cell_62729:
АА$
while_lstm_cell_62731:	АИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0£
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_62727_0while_lstm_cell_62729_0while_lstm_cell_62731_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_62688r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: О
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АО
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_62727while_lstm_cell_62727_0"0
while_lstm_cell_62729while_lstm_cell_62729_0"0
while_lstm_cell_62731while_lstm_cell_62731_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:%!

_user_specified_name62727:%	!

_user_specified_name62729:%
!

_user_specified_name62731
ЧM
С
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_63796

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
АА8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ж
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€е
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ё
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_63711*
condR
while_cond_63710*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ҐО
и
Umodel_9_bidirectionalLSTM_univariate_bidirectional_3_backward_lstm_3_while_body_62386І
Ґmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_loop_counter≠
®model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_maximum_iterationsZ
Vmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_placeholder\
Xmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_placeholder_1\
Xmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_placeholder_2\
Xmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_placeholder_3¶
°model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_strided_slice_1_0в
Ёmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0И
umodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0:	АЛ
wmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0:
ААЕ
vmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0:	АW
Smodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_identityY
Umodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_identity_1Y
Umodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_identity_2Y
Umodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_identity_3Y
Umodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_identity_4Y
Umodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_identity_5§
Яmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_strided_slice_1а
џmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_tensorarrayunstack_tensorlistfromtensorЖ
smodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource:	АЙ
umodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource:
ААГ
tmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource:	АИҐkmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpҐjmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpҐlmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpЌ
|model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Б
nmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЁmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0Vmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_placeholderЕmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0°
jmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpumodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0Г
[model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMulMatMulumodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¶
lmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpwmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0к
]model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMul_1MatMulXmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_placeholder_2tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ад
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/addAddV2emodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMul:product:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЯ
kmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpvmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0н
\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/BiasAddBiasAdd\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/add:z:0smodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¶
dmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/splitSplitmmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/split/split_dim:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split€
\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/SigmoidSigmoidcmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/Sigmoid_1Sigmoidcmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А–
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/mulMulbmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/Sigmoid_1:y:0Xmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€Ащ
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/ReluRelucmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€Ая
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/mul_1Mul`model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/Sigmoid:y:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А‘
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/add_1AddV2\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/mul:z:0^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/Sigmoid_2Sigmoidcmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Ац
[model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/Relu_1Relu^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аг
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/mul_2Mulbmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/Sigmoid_2:y:0imodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЈ
umodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ю
omodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemXmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_placeholder_1~model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“Т
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ђ
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/addAddV2Vmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_placeholderYmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: Ф
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ь
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/add_1AddV2Ґmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_loop_counter[model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: ®
Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/IdentityIdentityTmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/add_1:z:0P^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/NoOp*
T0*
_output_shapes
: €
Umodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/Identity_1Identity®model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_maximum_iterationsP^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/NoOp*
T0*
_output_shapes
: ®
Umodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/Identity_2IdentityRmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/add:z:0P^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/NoOp*
T0*
_output_shapes
: ’
Umodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/Identity_3Identitymodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0P^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/NoOp*
T0*
_output_shapes
: ∆
Umodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/Identity_4Identity^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/mul_2:z:0P^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А∆
Umodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/Identity_5Identity^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/add_1:z:0P^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АЈ
Omodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/NoOpNoOpl^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpk^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpm^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "≥
Smodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_identity\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/Identity:output:0"Ј
Umodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_identity_1^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/Identity_1:output:0"Ј
Umodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_identity_2^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/Identity_2:output:0"Ј
Umodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_identity_3^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/Identity_3:output:0"Ј
Umodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_identity_4^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/Identity_4:output:0"Ј
Umodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_identity_5^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/Identity_5:output:0"о
tmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resourcevmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0"р
umodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resourcewmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0"м
smodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_lstm_cell_matmul_readvariableop_resourceumodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0"∆
Яmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_strided_slice_1°model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_strided_slice_1_0"Њ
џmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_tensorarrayunstack_tensorlistfromtensorЁmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2Џ
kmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpkmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp2Ў
jmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpjmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp2№
lmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOplmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:Р Л

_output_shapes
: 
q
_user_specified_nameYWmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/loop_counter:ЦС

_output_shapes
: 
w
_user_specified_name_]model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:НИ

_output_shapes
: 
n
_user_specified_nameVTmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_1:¶°

_output_shapes
: 
Ж
_user_specified_namenlmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
…L
Ц
forward_lstm_3_while_body_65092:
6forward_lstm_3_while_forward_lstm_3_while_loop_counter@
<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations$
 forward_lstm_3_while_placeholder&
"forward_lstm_3_while_placeholder_1&
"forward_lstm_3_while_placeholder_2&
"forward_lstm_3_while_placeholder_39
5forward_lstm_3_while_forward_lstm_3_strided_slice_1_0u
qforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0:	АU
Aforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0:
ААO
@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0:	А!
forward_lstm_3_while_identity#
forward_lstm_3_while_identity_1#
forward_lstm_3_while_identity_2#
forward_lstm_3_while_identity_3#
forward_lstm_3_while_identity_4#
forward_lstm_3_while_identity_57
3forward_lstm_3_while_forward_lstm_3_strided_slice_1s
oforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource:	АS
?forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource:
ААM
>forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpҐ4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpҐ6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpЧ
Fforward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€ъ
8forward_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_3_while_placeholderOforward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0µ
4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0б
%forward_lstm_3/while/lstm_cell/MatMulMatMul?forward_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0»
'forward_lstm_3/while/lstm_cell/MatMul_1MatMul"forward_lstm_3_while_placeholder_2>forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¬
"forward_lstm_3/while/lstm_cell/addAddV2/forward_lstm_3/while/lstm_cell/MatMul:product:01forward_lstm_3/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ћ
&forward_lstm_3/while/lstm_cell/BiasAddBiasAdd&forward_lstm_3/while/lstm_cell/add:z:0=forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
.forward_lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ч
$forward_lstm_3/while/lstm_cell/splitSplit7forward_lstm_3/while/lstm_cell/split/split_dim:output:0/forward_lstm_3/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitУ
&forward_lstm_3/while/lstm_cell/SigmoidSigmoid-forward_lstm_3/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
(forward_lstm_3/while/lstm_cell/Sigmoid_1Sigmoid-forward_lstm_3/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЃ
"forward_lstm_3/while/lstm_cell/mulMul,forward_lstm_3/while/lstm_cell/Sigmoid_1:y:0"forward_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€АН
#forward_lstm_3/while/lstm_cell/ReluRelu-forward_lstm_3/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€Аљ
$forward_lstm_3/while/lstm_cell/mul_1Mul*forward_lstm_3/while/lstm_cell/Sigmoid:y:01forward_lstm_3/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
$forward_lstm_3/while/lstm_cell/add_1AddV2&forward_lstm_3/while/lstm_cell/mul:z:0(forward_lstm_3/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
(forward_lstm_3/while/lstm_cell/Sigmoid_2Sigmoid-forward_lstm_3/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АК
%forward_lstm_3/while/lstm_cell/Relu_1Relu(forward_lstm_3/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЅ
$forward_lstm_3/while/lstm_cell/mul_2Mul,forward_lstm_3/while/lstm_cell/Sigmoid_2:y:03forward_lstm_3/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
?forward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¶
9forward_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_3_while_placeholder_1Hforward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0(forward_lstm_3/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“\
forward_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Й
forward_lstm_3/while/addAddV2 forward_lstm_3_while_placeholder#forward_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_3/while/add_1AddV26forward_lstm_3_while_forward_lstm_3_while_loop_counter%forward_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: Ж
forward_lstm_3/while/IdentityIdentityforward_lstm_3/while/add_1:z:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: ¶
forward_lstm_3/while/Identity_1Identity<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: Ж
forward_lstm_3/while/Identity_2Identityforward_lstm_3/while/add:z:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: ≥
forward_lstm_3/while/Identity_3IdentityIforward_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_3/while/Identity_4Identity(forward_lstm_3/while/lstm_cell/mul_2:z:0^forward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А§
forward_lstm_3/while/Identity_5Identity(forward_lstm_3/while/lstm_cell/add_1:z:0^forward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Ая
forward_lstm_3/while/NoOpNoOp6^forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp5^forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp7^forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "l
3forward_lstm_3_while_forward_lstm_3_strided_slice_15forward_lstm_3_while_forward_lstm_3_strided_slice_1_0"G
forward_lstm_3_while_identity&forward_lstm_3/while/Identity:output:0"K
forward_lstm_3_while_identity_1(forward_lstm_3/while/Identity_1:output:0"K
forward_lstm_3_while_identity_2(forward_lstm_3/while/Identity_2:output:0"K
forward_lstm_3_while_identity_3(forward_lstm_3/while/Identity_3:output:0"K
forward_lstm_3_while_identity_4(forward_lstm_3/while/Identity_4:output:0"K
forward_lstm_3_while_identity_5(forward_lstm_3/while/Identity_5:output:0"В
>forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0"Д
?forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resourceAforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0"А
=forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0"д
oforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensorqforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2n
5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp2l
4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp2p
6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_3/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_3/strided_slice_1:nj

_output_shapes
: 
P
_user_specified_name86forward_lstm_3/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
–
_
C__inference_lambda_3_layer_call_and_return_conditional_losses_63893

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
“

Ф
/__inference_bidirectional_3_layer_call_fn_64725

inputs
unknown:	А
	unknown_0:
АА
	unknown_1:	А
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
identityИҐStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_64184p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name64711:%!

_user_specified_name64713:%!

_user_specified_name64715:%!

_user_specified_name64717:%!

_user_specified_name64719:%!

_user_specified_name64721
ЃЉ
Т
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65902

inputsJ
7forward_lstm_3_lstm_cell_matmul_readvariableop_resource:	АM
9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource:
ААG
8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource:	АK
8backward_lstm_3_lstm_cell_matmul_readvariableop_resource:	АN
:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource:
ААH
9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpҐ/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpҐ1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpҐbackward_lstm_3/whileҐ/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpҐ.forward_lstm_3/lstm_cell/MatMul/ReadVariableOpҐ0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpҐforward_lstm_3/whileX
forward_lstm_3/ShapeShapeinputs*
T0*
_output_shapes
::нѕl
"forward_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
forward_lstm_3/strided_sliceStridedSliceforward_lstm_3/Shape:output:0+forward_lstm_3/strided_slice/stack:output:0-forward_lstm_3/strided_slice/stack_1:output:0-forward_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А†
forward_lstm_3/zeros/packedPack%forward_lstm_3/strided_slice:output:0&forward_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
forward_lstm_3/zerosFill$forward_lstm_3/zeros/packed:output:0#forward_lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
forward_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А§
forward_lstm_3/zeros_1/packedPack%forward_lstm_3/strided_slice:output:0(forward_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    †
forward_lstm_3/zeros_1Fill&forward_lstm_3/zeros_1/packed:output:0%forward_lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
forward_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Л
forward_lstm_3/transpose	Transposeinputs&forward_lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€p
forward_lstm_3/Shape_1Shapeforward_lstm_3/transpose:y:0*
T0*
_output_shapes
::нѕn
$forward_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
forward_lstm_3/strided_slice_1StridedSliceforward_lstm_3/Shape_1:output:0-forward_lstm_3/strided_slice_1/stack:output:0/forward_lstm_3/strided_slice_1/stack_1:output:0/forward_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€б
forward_lstm_3/TensorArrayV2TensorListReserve3forward_lstm_3/TensorArrayV2/element_shape:output:0'forward_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Х
Dforward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Н
6forward_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_3/transpose:y:0Mforward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“n
$forward_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:і
forward_lstm_3/strided_slice_2StridedSliceforward_lstm_3/transpose:y:0-forward_lstm_3/strided_slice_2/stack:output:0/forward_lstm_3/strided_slice_2/stack_1:output:0/forward_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskІ
.forward_lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOp7forward_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0љ
forward_lstm_3/lstm_cell/MatMulMatMul'forward_lstm_3/strided_slice_2:output:06forward_lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ађ
0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ј
!forward_lstm_3/lstm_cell/MatMul_1MatMulforward_lstm_3/zeros:output:08forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А∞
forward_lstm_3/lstm_cell/addAddV2)forward_lstm_3/lstm_cell/MatMul:product:0+forward_lstm_3/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А•
/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0є
 forward_lstm_3/lstm_cell/BiasAddBiasAdd forward_lstm_3/lstm_cell/add:z:07forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аj
(forward_lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
forward_lstm_3/lstm_cell/splitSplit1forward_lstm_3/lstm_cell/split/split_dim:output:0)forward_lstm_3/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЗ
 forward_lstm_3/lstm_cell/SigmoidSigmoid'forward_lstm_3/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
"forward_lstm_3/lstm_cell/Sigmoid_1Sigmoid'forward_lstm_3/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЯ
forward_lstm_3/lstm_cell/mulMul&forward_lstm_3/lstm_cell/Sigmoid_1:y:0forward_lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
forward_lstm_3/lstm_cell/ReluRelu'forward_lstm_3/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЂ
forward_lstm_3/lstm_cell/mul_1Mul$forward_lstm_3/lstm_cell/Sigmoid:y:0+forward_lstm_3/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А†
forward_lstm_3/lstm_cell/add_1AddV2 forward_lstm_3/lstm_cell/mul:z:0"forward_lstm_3/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
"forward_lstm_3/lstm_cell/Sigmoid_2Sigmoid'forward_lstm_3/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А~
forward_lstm_3/lstm_cell/Relu_1Relu"forward_lstm_3/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аѓ
forward_lstm_3/lstm_cell/mul_2Mul&forward_lstm_3/lstm_cell/Sigmoid_2:y:0-forward_lstm_3/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А}
,forward_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   m
+forward_lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :т
forward_lstm_3/TensorArrayV2_1TensorListReserve5forward_lstm_3/TensorArrayV2_1/element_shape:output:04forward_lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“U
forward_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€c
!forward_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ∞
forward_lstm_3/whileWhile*forward_lstm_3/while/loop_counter:output:00forward_lstm_3/while/maximum_iterations:output:0forward_lstm_3/time:output:0'forward_lstm_3/TensorArrayV2_1:handle:0forward_lstm_3/zeros:output:0forward_lstm_3/zeros_1:output:0'forward_lstm_3/strided_slice_1:output:0Fforward_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_3_lstm_cell_matmul_readvariableop_resource9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*+
body#R!
forward_lstm_3_while_body_65672*+
cond#R!
forward_lstm_3_while_cond_65671*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Р
?forward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Д
1forward_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_3/while:output:3Hforward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsw
$forward_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€p
&forward_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_3/strided_slice_3StridedSlice:forward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_3/strided_slice_3/stack:output:0/forward_lstm_3/strided_slice_3/stack_1:output:0/forward_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maskt
forward_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ƒ
forward_lstm_3/transpose_1	Transpose:forward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Аj
forward_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Y
backward_lstm_3/ShapeShapeinputs*
T0*
_output_shapes
::нѕm
#backward_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
backward_lstm_3/strided_sliceStridedSlicebackward_lstm_3/Shape:output:0,backward_lstm_3/strided_slice/stack:output:0.backward_lstm_3/strided_slice/stack_1:output:0.backward_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А£
backward_lstm_3/zeros/packedPack&backward_lstm_3/strided_slice:output:0'backward_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
backward_lstm_3/zerosFill%backward_lstm_3/zeros/packed:output:0$backward_lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
 backward_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :АІ
backward_lstm_3/zeros_1/packedPack&backward_lstm_3/strided_slice:output:0)backward_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_3/zeros_1Fill'backward_lstm_3/zeros_1/packed:output:0&backward_lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
backward_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
backward_lstm_3/transpose	Transposeinputs'backward_lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€r
backward_lstm_3/Shape_1Shapebackward_lstm_3/transpose:y:0*
T0*
_output_shapes
::нѕo
%backward_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
backward_lstm_3/strided_slice_1StridedSlice backward_lstm_3/Shape_1:output:0.backward_lstm_3/strided_slice_1/stack:output:00backward_lstm_3/strided_slice_1/stack_1:output:00backward_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€д
backward_lstm_3/TensorArrayV2TensorListReserve4backward_lstm_3/TensorArrayV2/element_shape:output:0(backward_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“h
backward_lstm_3/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_3/ReverseV2	ReverseV2backward_lstm_3/transpose:y:0'backward_lstm_3/ReverseV2/axis:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ц
Ebackward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Х
7backward_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_3/ReverseV2:output:0Nbackward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“o
%backward_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
backward_lstm_3/strided_slice_2StridedSlicebackward_lstm_3/transpose:y:0.backward_lstm_3/strided_slice_2/stack:output:00backward_lstm_3/strided_slice_2/stack_1:output:00backward_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask©
/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOp8backward_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ј
 backward_lstm_3/lstm_cell/MatMulMatMul(backward_lstm_3/strided_slice_2:output:07backward_lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ї
"backward_lstm_3/lstm_cell/MatMul_1MatMulbackward_lstm_3/zeros:output:09backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
backward_lstm_3/lstm_cell/addAddV2*backward_lstm_3/lstm_cell/MatMul:product:0,backward_lstm_3/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АІ
0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
!backward_lstm_3/lstm_cell/BiasAddBiasAdd!backward_lstm_3/lstm_cell/add:z:08backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
)backward_lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
backward_lstm_3/lstm_cell/splitSplit2backward_lstm_3/lstm_cell/split/split_dim:output:0*backward_lstm_3/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЙ
!backward_lstm_3/lstm_cell/SigmoidSigmoid(backward_lstm_3/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
#backward_lstm_3/lstm_cell/Sigmoid_1Sigmoid(backward_lstm_3/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АҐ
backward_lstm_3/lstm_cell/mulMul'backward_lstm_3/lstm_cell/Sigmoid_1:y:0 backward_lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
backward_lstm_3/lstm_cell/ReluRelu(backward_lstm_3/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЃ
backward_lstm_3/lstm_cell/mul_1Mul%backward_lstm_3/lstm_cell/Sigmoid:y:0,backward_lstm_3/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А£
backward_lstm_3/lstm_cell/add_1AddV2!backward_lstm_3/lstm_cell/mul:z:0#backward_lstm_3/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
#backward_lstm_3/lstm_cell/Sigmoid_2Sigmoid(backward_lstm_3/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АА
 backward_lstm_3/lstm_cell/Relu_1Relu#backward_lstm_3/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
backward_lstm_3/lstm_cell/mul_2Mul'backward_lstm_3/lstm_cell/Sigmoid_2:y:0.backward_lstm_3/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А~
-backward_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   n
,backward_lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :х
backward_lstm_3/TensorArrayV2_1TensorListReserve6backward_lstm_3/TensorArrayV2_1/element_shape:output:05backward_lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“V
backward_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€d
"backward_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Њ
backward_lstm_3/whileWhile+backward_lstm_3/while/loop_counter:output:01backward_lstm_3/while/maximum_iterations:output:0backward_lstm_3/time:output:0(backward_lstm_3/TensorArrayV2_1:handle:0backward_lstm_3/zeros:output:0 backward_lstm_3/zeros_1:output:0(backward_lstm_3/strided_slice_1:output:0Gbackward_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_3_lstm_cell_matmul_readvariableop_resource:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 backward_lstm_3_while_body_65815*,
cond$R"
 backward_lstm_3_while_cond_65814*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations С
@backward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   З
2backward_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_3/while:output:3Ibackward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsx
%backward_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€q
'backward_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
backward_lstm_3/strided_slice_3StridedSlice;backward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_3/strided_slice_3/stack:output:00backward_lstm_3/strided_slice_3/stack_1:output:00backward_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_masku
 backward_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
backward_lstm_3/transpose_1	Transpose;backward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Аk
backward_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ј
concatConcatV2'forward_lstm_3/strided_slice_3:output:0(backward_lstm_3/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€А_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АА
NoOpNoOp1^backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp0^backward_lstm_3/lstm_cell/MatMul/ReadVariableOp2^backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_3/while0^forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp/^forward_lstm_3/lstm_cell/MatMul/ReadVariableOp1^forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_3/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2d
0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp2b
/backward_lstm_3/lstm_cell/MatMul/ReadVariableOp/backward_lstm_3/lstm_cell/MatMul/ReadVariableOp2f
1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp2.
backward_lstm_3/whilebackward_lstm_3/while2b
/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp2`
.forward_lstm_3/lstm_cell/MatMul/ReadVariableOp.forward_lstm_3/lstm_cell/MatMul/ReadVariableOp2d
0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp2,
forward_lstm_3/whileforward_lstm_3/while:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ѕ	
Њ
while_cond_66650
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_66650___redundant_placeholder03
/while_while_cond_66650___redundant_placeholder13
/while_while_cond_66650___redundant_placeholder23
/while_while_cond_66650___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
џM
ґ
 backward_lstm_3_while_body_64426<
8backward_lstm_3_while_backward_lstm_3_while_loop_counterB
>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations%
!backward_lstm_3_while_placeholder'
#backward_lstm_3_while_placeholder_1'
#backward_lstm_3_while_placeholder_2'
#backward_lstm_3_while_placeholder_3;
7backward_lstm_3_while_backward_lstm_3_strided_slice_1_0w
sbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0:	АV
Bbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0:
ААP
Abackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0:	А"
backward_lstm_3_while_identity$
 backward_lstm_3_while_identity_1$
 backward_lstm_3_while_identity_2$
 backward_lstm_3_while_identity_3$
 backward_lstm_3_while_identity_4$
 backward_lstm_3_while_identity_59
5backward_lstm_3_while_backward_lstm_3_strided_slice_1u
qbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource:	АT
@backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource:
ААN
?backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpҐ5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpҐ7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpШ
Gbackward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ц
9backward_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_3_while_placeholderPbackward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ј
5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0д
&backward_lstm_3/while/lstm_cell/MatMulMatMul@backward_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЉ
7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ћ
(backward_lstm_3/while/lstm_cell/MatMul_1MatMul#backward_lstm_3_while_placeholder_2?backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≈
#backward_lstm_3/while/lstm_cell/addAddV20backward_lstm_3/while/lstm_cell/MatMul:product:02backward_lstm_3/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0ќ
'backward_lstm_3/while/lstm_cell/BiasAddBiasAdd'backward_lstm_3/while/lstm_cell/add:z:0>backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
/backward_lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
%backward_lstm_3/while/lstm_cell/splitSplit8backward_lstm_3/while/lstm_cell/split/split_dim:output:00backward_lstm_3/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitХ
'backward_lstm_3/while/lstm_cell/SigmoidSigmoid.backward_lstm_3/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
)backward_lstm_3/while/lstm_cell/Sigmoid_1Sigmoid.backward_lstm_3/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А±
#backward_lstm_3/while/lstm_cell/mulMul-backward_lstm_3/while/lstm_cell/Sigmoid_1:y:0#backward_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€АП
$backward_lstm_3/while/lstm_cell/ReluRelu.backward_lstm_3/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€Ај
%backward_lstm_3/while/lstm_cell/mul_1Mul+backward_lstm_3/while/lstm_cell/Sigmoid:y:02backward_lstm_3/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
%backward_lstm_3/while/lstm_cell/add_1AddV2'backward_lstm_3/while/lstm_cell/mul:z:0)backward_lstm_3/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
)backward_lstm_3/while/lstm_cell/Sigmoid_2Sigmoid.backward_lstm_3/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АМ
&backward_lstm_3/while/lstm_cell/Relu_1Relu)backward_lstm_3/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аƒ
%backward_lstm_3/while/lstm_cell/mul_2Mul-backward_lstm_3/while/lstm_cell/Sigmoid_2:y:04backward_lstm_3/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
@backward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ™
:backward_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_3_while_placeholder_1Ibackward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0)backward_lstm_3/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“]
backward_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :М
backward_lstm_3/while/addAddV2!backward_lstm_3_while_placeholder$backward_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_3/while/add_1AddV28backward_lstm_3_while_backward_lstm_3_while_loop_counter&backward_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: Й
backward_lstm_3/while/IdentityIdentitybackward_lstm_3/while/add_1:z:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: ™
 backward_lstm_3/while/Identity_1Identity>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: Й
 backward_lstm_3/while/Identity_2Identitybackward_lstm_3/while/add:z:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: ґ
 backward_lstm_3/while/Identity_3IdentityJbackward_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: І
 backward_lstm_3/while/Identity_4Identity)backward_lstm_3/while/lstm_cell/mul_2:z:0^backward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АІ
 backward_lstm_3/while/Identity_5Identity)backward_lstm_3/while/lstm_cell/add_1:z:0^backward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аг
backward_lstm_3/while/NoOpNoOp7^backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp6^backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp8^backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5backward_lstm_3_while_backward_lstm_3_strided_slice_17backward_lstm_3_while_backward_lstm_3_strided_slice_1_0"I
backward_lstm_3_while_identity'backward_lstm_3/while/Identity:output:0"M
 backward_lstm_3_while_identity_1)backward_lstm_3/while/Identity_1:output:0"M
 backward_lstm_3_while_identity_2)backward_lstm_3/while/Identity_2:output:0"M
 backward_lstm_3_while_identity_3)backward_lstm_3/while/Identity_3:output:0"M
 backward_lstm_3_while_identity_4)backward_lstm_3/while/Identity_4:output:0"M
 backward_lstm_3_while_identity_5)backward_lstm_3/while/Identity_5:output:0"Д
?backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resourceAbackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0"Ж
@backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resourceBbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0"В
>backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0"и
qbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2p
6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp2n
5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp2r
7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_3/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_3/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97backward_lstm_3/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ь

Ц
/__inference_bidirectional_3_layer_call_fn_64691
inputs_0
unknown:	А
	unknown_0:
АА
	unknown_1:	А
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
identityИҐStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_63495p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:%!

_user_specified_name64677:%!

_user_specified_name64679:%!

_user_specified_name64681:%!

_user_specified_name64683:%!

_user_specified_name64685:%!

_user_specified_name64687
У
к
forward_lstm_3_while_cond_63953:
6forward_lstm_3_while_forward_lstm_3_while_loop_counter@
<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations$
 forward_lstm_3_while_placeholder&
"forward_lstm_3_while_placeholder_1&
"forward_lstm_3_while_placeholder_2&
"forward_lstm_3_while_placeholder_3<
8forward_lstm_3_while_less_forward_lstm_3_strided_slice_1Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_63953___redundant_placeholder0Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_63953___redundant_placeholder1Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_63953___redundant_placeholder2Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_63953___redundant_placeholder3!
forward_lstm_3_while_identity
Ю
forward_lstm_3/while/LessLess forward_lstm_3_while_placeholder8forward_lstm_3_while_less_forward_lstm_3_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_3/while/IdentityIdentityforward_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_3_while_identity&forward_lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_3/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_3/strided_slice_1:

_output_shapes
:
Ѕ	
Њ
while_cond_63710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_63710___redundant_placeholder03
/while_while_cond_63710___redundant_placeholder13
/while_while_cond_63710___redundant_placeholder23
/while_while_cond_63710___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
≤
ю
 backward_lstm_3_while_cond_65814<
8backward_lstm_3_while_backward_lstm_3_while_loop_counterB
>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations%
!backward_lstm_3_while_placeholder'
#backward_lstm_3_while_placeholder_1'
#backward_lstm_3_while_placeholder_2'
#backward_lstm_3_while_placeholder_3>
:backward_lstm_3_while_less_backward_lstm_3_strided_slice_1S
Obackward_lstm_3_while_backward_lstm_3_while_cond_65814___redundant_placeholder0S
Obackward_lstm_3_while_backward_lstm_3_while_cond_65814___redundant_placeholder1S
Obackward_lstm_3_while_backward_lstm_3_while_cond_65814___redundant_placeholder2S
Obackward_lstm_3_while_backward_lstm_3_while_cond_65814___redundant_placeholder3"
backward_lstm_3_while_identity
Ґ
backward_lstm_3/while/LessLess!backward_lstm_3_while_placeholder:backward_lstm_3_while_less_backward_lstm_3_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_3/while/IdentityIdentitybackward_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_3_while_identity'backward_lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_3/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_3/strided_slice_1:

_output_shapes
:
У
к
forward_lstm_3_while_cond_65671:
6forward_lstm_3_while_forward_lstm_3_while_loop_counter@
<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations$
 forward_lstm_3_while_placeholder&
"forward_lstm_3_while_placeholder_1&
"forward_lstm_3_while_placeholder_2&
"forward_lstm_3_while_placeholder_3<
8forward_lstm_3_while_less_forward_lstm_3_strided_slice_1Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_65671___redundant_placeholder0Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_65671___redundant_placeholder1Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_65671___redundant_placeholder2Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_65671___redundant_placeholder3!
forward_lstm_3_while_identity
Ю
forward_lstm_3/while/LessLess forward_lstm_3_while_placeholder8forward_lstm_3_while_less_forward_lstm_3_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_3/while/IdentityIdentityforward_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_3_while_identity&forward_lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_3/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_3/strided_slice_1:

_output_shapes
:
™‘
†
 __inference__wrapped_model_62479
lambda_3_input
lmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_lstm_cell_matmul_readvariableop_resource:	АВ
nmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource:
АА|
mmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_lstm_cell_biasadd_readvariableop_resource:	АА
mmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_lstm_cell_matmul_readvariableop_resource:	АГ
omodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource:
АА}
nmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_lstm_cell_biasadd_readvariableop_resource:	А^
Kmodel_9_bidirectionallstm_univariate_dense_3_matmul_readvariableop_resource:	АZ
Lmodel_9_bidirectionallstm_univariate_dense_3_biasadd_readvariableop_resource:
identityИҐemodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpҐdmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpҐfmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpҐJmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/whileҐdmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpҐcmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMul/ReadVariableOpҐemodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpҐImodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/whileҐCmodel_9_bidirectionalLSTM_univariate/dense_3/BiasAdd/ReadVariableOpҐBmodel_9_bidirectionalLSTM_univariate/dense_3/MatMul/ReadVariableOpЗ
<model_9_bidirectionalLSTM_univariate/lambda_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€”
8model_9_bidirectionalLSTM_univariate/lambda_3/ExpandDims
ExpandDimslambda_3_inputEmodel_9_bidirectionalLSTM_univariate/lambda_3/ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€»
Imodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/ShapeShapeAmodel_9_bidirectionalLSTM_univariate/lambda_3/ExpandDims:output:0*
T0*
_output_shapes
::нѕ°
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: £
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:£
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:•
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_sliceStridedSliceRmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/Shape:output:0`model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice/stack:output:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice/stack_1:output:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskХ
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ањ
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros/packedPackZmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice:output:0[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Ф
Omodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    є
Imodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zerosFillYmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros/packed:output:0Xmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А√
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros_1/packedPackZmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Ц
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    њ
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros_1Fill[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros_1/packed:output:0Zmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АІ
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ∞
Mmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/transpose	TransposeAmodel_9_bidirectionalLSTM_univariate/lambda_3/ExpandDims:output:0[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€Џ
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/Shape_1ShapeQmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/transpose:y:0*
T0*
_output_shapes
::нѕ£
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: •
[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:•
[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_1StridedSliceTmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/Shape_1:output:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_1/stack:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_1/stack_1:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask™
_model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€А
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayV2TensorListReservehmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayV2/element_shape:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“ 
ymodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ≠
kmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorQmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/transpose:y:0Вmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“£
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: •
[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:•
[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_2StridedSliceQmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/transpose:y:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_2/stack:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_2/stack_1:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskС
cmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOplmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0№
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMulMatMul\model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_2:output:0kmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЦ
emodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpnmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0÷
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMul_1MatMulRmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros:output:0mmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аѕ
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/addAddV2^model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMul:product:0`model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АП
dmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpmmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ў
Umodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/BiasAddBiasAddUmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/add:z:0lmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЯ
]model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :§
Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/splitSplitfmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/split/split_dim:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitс
Umodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/SigmoidSigmoid\model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ау
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/Sigmoid_1Sigmoid\model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЊ
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/mulMul[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/Sigmoid_1:y:0Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ал
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/ReluRelu\model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А 
Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/mul_1MulYmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/Sigmoid:y:0`model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Ањ
Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/add_1AddV2Umodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/mul:z:0Wmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ау
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/Sigmoid_2Sigmoid\model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Аи
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/Relu_1ReluWmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аќ
Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/mul_2Mul[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/Sigmoid_2:y:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
amodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ґ
`model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :С
Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayV2_1TensorListReservejmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayV2_1/element_shape:output:0imodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“К
Hmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : І
\model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ш
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ц
Imodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/whileWhile_model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/loop_counter:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while/maximum_iterations:output:0Qmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/time:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayV2_1:handle:0Rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros:output:0Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/zeros_1:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_1:output:0{model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0lmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_lstm_cell_matmul_readvariableop_resourcenmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_lstm_cell_matmul_1_readvariableop_resourcemmodel_9_bidirectionallstm_univariate_bidirectional_3_forward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*`
bodyXRV
Tmodel_9_bidirectionalLSTM_univariate_bidirectional_3_forward_lstm_3_while_body_62243*`
condXRV
Tmodel_9_bidirectionalLSTM_univariate_bidirectional_3_forward_lstm_3_while_cond_62242*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations ≈
tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   £
fmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackRmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while:output:3}model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsђ
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€•
[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: •
[model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_3StridedSliceomodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_3/stack:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_3/stack_1:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask©
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          г
Omodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/transpose_1	Transposeomodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0]model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€АЯ
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    …
Jmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/ShapeShapeAmodel_9_bidirectionalLSTM_univariate/lambda_3/ExpandDims:output:0*
T0*
_output_shapes
::нѕҐ
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: §
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:§
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:™
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_sliceStridedSliceSmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/Shape:output:0amodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice/stack:output:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice/stack_1:output:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЦ
Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А¬
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros/packedPack[model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Х
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
Jmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zerosFillZmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros/packed:output:0Ymodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АШ
Umodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А∆
Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros_1/packedPack[model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Ч
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¬
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros_1Fill\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros_1/packed:output:0[model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А®
Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ≤
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/transpose	TransposeAmodel_9_bidirectionalLSTM_univariate/lambda_3/ExpandDims:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€№
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/Shape_1ShapeRmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/transpose:y:0*
T0*
_output_shapes
::нѕ§
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ¶
\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¶
\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:і
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_1StridedSliceUmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/Shape_1:output:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_1/stack:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_1/stack_1:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЂ
`model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Г
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayV2TensorListReserveimodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayV2/element_shape:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Э
Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: √
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/ReverseV2	ReverseV2Rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/transpose:y:0\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/ReverseV2/axis:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ћ
zmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   µ
lmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorWmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/ReverseV2:output:0Гmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“§
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: ¶
\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¶
\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_2StridedSliceRmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/transpose:y:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_2/stack:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_2/stack_1:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskУ
dmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOpmmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0я
Umodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMulMatMul]model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_2:output:0lmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АШ
fmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpomodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0ў
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMul_1MatMulSmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros:output:0nmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А“
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/addAddV2_model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMul:product:0amodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АС
emodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpnmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0џ
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/BiasAddBiasAddVmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/add:z:0mmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А†
^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :І
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/splitSplitgmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/split/split_dim:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitу
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/SigmoidSigmoid]model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ах
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/Sigmoid_1Sigmoid]model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЅ
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/mulMul\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/Sigmoid_1:y:0Umodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ан
Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/ReluRelu]model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЌ
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/mul_1MulZmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/Sigmoid:y:0amodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А¬
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/add_1AddV2Vmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/mul:z:0Xmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ах
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/Sigmoid_2Sigmoid]model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Ак
Umodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/Relu_1ReluXmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А—
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/mul_2Mul\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/Sigmoid_2:y:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
bmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   £
amodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ф
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayV2_1TensorListReservekmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayV2_1/element_shape:output:0jmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Л
Imodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : ®
]model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Щ
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : §
Jmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/whileWhile`model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/loop_counter:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while/maximum_iterations:output:0Rmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/time:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayV2_1:handle:0Smodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros:output:0Umodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/zeros_1:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_1:output:0|model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0mmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_lstm_cell_matmul_readvariableop_resourceomodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_lstm_cell_matmul_1_readvariableop_resourcenmodel_9_bidirectionallstm_univariate_bidirectional_3_backward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*a
bodyYRW
Umodel_9_bidirectionalLSTM_univariate_bidirectional_3_backward_lstm_3_while_body_62386*a
condYRW
Umodel_9_bidirectionalLSTM_univariate_bidirectional_3_backward_lstm_3_while_cond_62385*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations ∆
umodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
gmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackSmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while:output:3~model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elements≠
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€¶
\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
\model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_3StridedSlicepmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_3/stack:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_3/stack_1:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask™
Umodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ж
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/transpose_1	Transposepmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А†
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    В
@model_9_bidirectionalLSTM_univariate/bidirectional_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Л
;model_9_bidirectionalLSTM_univariate/bidirectional_3/concatConcatV2\model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/strided_slice_3:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/strided_slice_3:output:0Imodel_9_bidirectionalLSTM_univariate/bidirectional_3/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€Аѕ
Bmodel_9_bidirectionalLSTM_univariate/dense_3/MatMul/ReadVariableOpReadVariableOpKmodel_9_bidirectionallstm_univariate_dense_3_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Б
3model_9_bidirectionalLSTM_univariate/dense_3/MatMulMatMulDmodel_9_bidirectionalLSTM_univariate/bidirectional_3/concat:output:0Jmodel_9_bidirectionalLSTM_univariate/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ћ
Cmodel_9_bidirectionalLSTM_univariate/dense_3/BiasAdd/ReadVariableOpReadVariableOpLmodel_9_bidirectionallstm_univariate_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0э
4model_9_bidirectionalLSTM_univariate/dense_3/BiasAddBiasAdd=model_9_bidirectionalLSTM_univariate/dense_3/MatMul:product:0Kmodel_9_bidirectionalLSTM_univariate/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€М
IdentityIdentity=model_9_bidirectionalLSTM_univariate/dense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€≥
NoOpNoOpf^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpe^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpg^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpK^model_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/whilee^model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpd^model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMul/ReadVariableOpf^model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpJ^model_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/whileD^model_9_bidirectionalLSTM_univariate/dense_3/BiasAdd/ReadVariableOpC^model_9_bidirectionalLSTM_univariate/dense_3/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : : : 2ќ
emodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpemodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp2ћ
dmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpdmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMul/ReadVariableOp2–
fmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpfmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp2Ш
Jmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/whileJmodel_9_bidirectionalLSTM_univariate/bidirectional_3/backward_lstm_3/while2ћ
dmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpdmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp2 
cmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMul/ReadVariableOpcmodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMul/ReadVariableOp2ќ
emodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpemodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp2Ц
Imodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/whileImodel_9_bidirectionalLSTM_univariate/bidirectional_3/forward_lstm_3/while2К
Cmodel_9_bidirectionalLSTM_univariate/dense_3/BiasAdd/ReadVariableOpCmodel_9_bidirectionalLSTM_univariate/dense_3/BiasAdd/ReadVariableOp2И
Bmodel_9_bidirectionalLSTM_univariate/dense_3/MatMul/ReadVariableOpBmodel_9_bidirectionalLSTM_univariate/dense_3/MatMul/ReadVariableOp:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namelambda_3_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
щ	
ф
B__inference_dense_3_layer_call_and_return_conditional_losses_65921

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
≤
ю
 backward_lstm_3_while_cond_65234<
8backward_lstm_3_while_backward_lstm_3_while_loop_counterB
>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations%
!backward_lstm_3_while_placeholder'
#backward_lstm_3_while_placeholder_1'
#backward_lstm_3_while_placeholder_2'
#backward_lstm_3_while_placeholder_3>
:backward_lstm_3_while_less_backward_lstm_3_strided_slice_1S
Obackward_lstm_3_while_backward_lstm_3_while_cond_65234___redundant_placeholder0S
Obackward_lstm_3_while_backward_lstm_3_while_cond_65234___redundant_placeholder1S
Obackward_lstm_3_while_backward_lstm_3_while_cond_65234___redundant_placeholder2S
Obackward_lstm_3_while_backward_lstm_3_while_cond_65234___redundant_placeholder3"
backward_lstm_3_while_identity
Ґ
backward_lstm_3/while/LessLess!backward_lstm_3_while_placeholder:backward_lstm_3_while_less_backward_lstm_3_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_3/while/IdentityIdentitybackward_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_3_while_identity'backward_lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_3/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_3/strided_slice_1:

_output_shapes
:
џM
ґ
 backward_lstm_3_while_body_65815<
8backward_lstm_3_while_backward_lstm_3_while_loop_counterB
>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations%
!backward_lstm_3_while_placeholder'
#backward_lstm_3_while_placeholder_1'
#backward_lstm_3_while_placeholder_2'
#backward_lstm_3_while_placeholder_3;
7backward_lstm_3_while_backward_lstm_3_strided_slice_1_0w
sbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0:	АV
Bbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0:
ААP
Abackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0:	А"
backward_lstm_3_while_identity$
 backward_lstm_3_while_identity_1$
 backward_lstm_3_while_identity_2$
 backward_lstm_3_while_identity_3$
 backward_lstm_3_while_identity_4$
 backward_lstm_3_while_identity_59
5backward_lstm_3_while_backward_lstm_3_strided_slice_1u
qbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource:	АT
@backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource:
ААN
?backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpҐ5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpҐ7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpШ
Gbackward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ц
9backward_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_3_while_placeholderPbackward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ј
5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0д
&backward_lstm_3/while/lstm_cell/MatMulMatMul@backward_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЉ
7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ћ
(backward_lstm_3/while/lstm_cell/MatMul_1MatMul#backward_lstm_3_while_placeholder_2?backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≈
#backward_lstm_3/while/lstm_cell/addAddV20backward_lstm_3/while/lstm_cell/MatMul:product:02backward_lstm_3/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0ќ
'backward_lstm_3/while/lstm_cell/BiasAddBiasAdd'backward_lstm_3/while/lstm_cell/add:z:0>backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
/backward_lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
%backward_lstm_3/while/lstm_cell/splitSplit8backward_lstm_3/while/lstm_cell/split/split_dim:output:00backward_lstm_3/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitХ
'backward_lstm_3/while/lstm_cell/SigmoidSigmoid.backward_lstm_3/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
)backward_lstm_3/while/lstm_cell/Sigmoid_1Sigmoid.backward_lstm_3/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А±
#backward_lstm_3/while/lstm_cell/mulMul-backward_lstm_3/while/lstm_cell/Sigmoid_1:y:0#backward_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€АП
$backward_lstm_3/while/lstm_cell/ReluRelu.backward_lstm_3/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€Ај
%backward_lstm_3/while/lstm_cell/mul_1Mul+backward_lstm_3/while/lstm_cell/Sigmoid:y:02backward_lstm_3/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
%backward_lstm_3/while/lstm_cell/add_1AddV2'backward_lstm_3/while/lstm_cell/mul:z:0)backward_lstm_3/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
)backward_lstm_3/while/lstm_cell/Sigmoid_2Sigmoid.backward_lstm_3/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АМ
&backward_lstm_3/while/lstm_cell/Relu_1Relu)backward_lstm_3/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аƒ
%backward_lstm_3/while/lstm_cell/mul_2Mul-backward_lstm_3/while/lstm_cell/Sigmoid_2:y:04backward_lstm_3/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
@backward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ™
:backward_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_3_while_placeholder_1Ibackward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0)backward_lstm_3/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“]
backward_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :М
backward_lstm_3/while/addAddV2!backward_lstm_3_while_placeholder$backward_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_3/while/add_1AddV28backward_lstm_3_while_backward_lstm_3_while_loop_counter&backward_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: Й
backward_lstm_3/while/IdentityIdentitybackward_lstm_3/while/add_1:z:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: ™
 backward_lstm_3/while/Identity_1Identity>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: Й
 backward_lstm_3/while/Identity_2Identitybackward_lstm_3/while/add:z:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: ґ
 backward_lstm_3/while/Identity_3IdentityJbackward_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: І
 backward_lstm_3/while/Identity_4Identity)backward_lstm_3/while/lstm_cell/mul_2:z:0^backward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АІ
 backward_lstm_3/while/Identity_5Identity)backward_lstm_3/while/lstm_cell/add_1:z:0^backward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аг
backward_lstm_3/while/NoOpNoOp7^backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp6^backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp8^backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5backward_lstm_3_while_backward_lstm_3_strided_slice_17backward_lstm_3_while_backward_lstm_3_strided_slice_1_0"I
backward_lstm_3_while_identity'backward_lstm_3/while/Identity:output:0"M
 backward_lstm_3_while_identity_1)backward_lstm_3/while/Identity_1:output:0"M
 backward_lstm_3_while_identity_2)backward_lstm_3/while/Identity_2:output:0"M
 backward_lstm_3_while_identity_3)backward_lstm_3/while/Identity_3:output:0"M
 backward_lstm_3_while_identity_4)backward_lstm_3/while/Identity_4:output:0"M
 backward_lstm_3_while_identity_5)backward_lstm_3/while/Identity_5:output:0"Д
?backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resourceAbackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0"Ж
@backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resourceBbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0"В
>backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0"и
qbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2p
6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp2n
5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp2r
7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_3/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_3/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97backward_lstm_3/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Ѕ	
Њ
while_cond_67091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_67091___redundant_placeholder03
/while_while_cond_67091___redundant_placeholder13
/while_while_cond_67091___redundant_placeholder23
/while_while_cond_67091___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ѕ	
Њ
while_cond_62555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_62555___redundant_placeholder03
/while_while_cond_62555___redundant_placeholder13
/while_while_cond_62555___redundant_placeholder23
/while_while_cond_62555___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ѕ	
Њ
while_cond_62702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_62702___redundant_placeholder03
/while_while_cond_62702___redundant_placeholder13
/while_while_cond_62702___redundant_placeholder23
/while_while_cond_62702___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ЃЉ
Т
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65612

inputsJ
7forward_lstm_3_lstm_cell_matmul_readvariableop_resource:	АM
9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource:
ААG
8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource:	АK
8backward_lstm_3_lstm_cell_matmul_readvariableop_resource:	АN
:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource:
ААH
9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpҐ/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpҐ1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpҐbackward_lstm_3/whileҐ/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpҐ.forward_lstm_3/lstm_cell/MatMul/ReadVariableOpҐ0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpҐforward_lstm_3/whileX
forward_lstm_3/ShapeShapeinputs*
T0*
_output_shapes
::нѕl
"forward_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
forward_lstm_3/strided_sliceStridedSliceforward_lstm_3/Shape:output:0+forward_lstm_3/strided_slice/stack:output:0-forward_lstm_3/strided_slice/stack_1:output:0-forward_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А†
forward_lstm_3/zeros/packedPack%forward_lstm_3/strided_slice:output:0&forward_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
forward_lstm_3/zerosFill$forward_lstm_3/zeros/packed:output:0#forward_lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
forward_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А§
forward_lstm_3/zeros_1/packedPack%forward_lstm_3/strided_slice:output:0(forward_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    †
forward_lstm_3/zeros_1Fill&forward_lstm_3/zeros_1/packed:output:0%forward_lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
forward_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Л
forward_lstm_3/transpose	Transposeinputs&forward_lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€p
forward_lstm_3/Shape_1Shapeforward_lstm_3/transpose:y:0*
T0*
_output_shapes
::нѕn
$forward_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
forward_lstm_3/strided_slice_1StridedSliceforward_lstm_3/Shape_1:output:0-forward_lstm_3/strided_slice_1/stack:output:0/forward_lstm_3/strided_slice_1/stack_1:output:0/forward_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€б
forward_lstm_3/TensorArrayV2TensorListReserve3forward_lstm_3/TensorArrayV2/element_shape:output:0'forward_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Х
Dforward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Н
6forward_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_3/transpose:y:0Mforward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“n
$forward_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:і
forward_lstm_3/strided_slice_2StridedSliceforward_lstm_3/transpose:y:0-forward_lstm_3/strided_slice_2/stack:output:0/forward_lstm_3/strided_slice_2/stack_1:output:0/forward_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskІ
.forward_lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOp7forward_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0љ
forward_lstm_3/lstm_cell/MatMulMatMul'forward_lstm_3/strided_slice_2:output:06forward_lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ађ
0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ј
!forward_lstm_3/lstm_cell/MatMul_1MatMulforward_lstm_3/zeros:output:08forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А∞
forward_lstm_3/lstm_cell/addAddV2)forward_lstm_3/lstm_cell/MatMul:product:0+forward_lstm_3/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А•
/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0є
 forward_lstm_3/lstm_cell/BiasAddBiasAdd forward_lstm_3/lstm_cell/add:z:07forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аj
(forward_lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
forward_lstm_3/lstm_cell/splitSplit1forward_lstm_3/lstm_cell/split/split_dim:output:0)forward_lstm_3/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЗ
 forward_lstm_3/lstm_cell/SigmoidSigmoid'forward_lstm_3/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
"forward_lstm_3/lstm_cell/Sigmoid_1Sigmoid'forward_lstm_3/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЯ
forward_lstm_3/lstm_cell/mulMul&forward_lstm_3/lstm_cell/Sigmoid_1:y:0forward_lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
forward_lstm_3/lstm_cell/ReluRelu'forward_lstm_3/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЂ
forward_lstm_3/lstm_cell/mul_1Mul$forward_lstm_3/lstm_cell/Sigmoid:y:0+forward_lstm_3/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А†
forward_lstm_3/lstm_cell/add_1AddV2 forward_lstm_3/lstm_cell/mul:z:0"forward_lstm_3/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
"forward_lstm_3/lstm_cell/Sigmoid_2Sigmoid'forward_lstm_3/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А~
forward_lstm_3/lstm_cell/Relu_1Relu"forward_lstm_3/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аѓ
forward_lstm_3/lstm_cell/mul_2Mul&forward_lstm_3/lstm_cell/Sigmoid_2:y:0-forward_lstm_3/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А}
,forward_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   m
+forward_lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :т
forward_lstm_3/TensorArrayV2_1TensorListReserve5forward_lstm_3/TensorArrayV2_1/element_shape:output:04forward_lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“U
forward_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€c
!forward_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ∞
forward_lstm_3/whileWhile*forward_lstm_3/while/loop_counter:output:00forward_lstm_3/while/maximum_iterations:output:0forward_lstm_3/time:output:0'forward_lstm_3/TensorArrayV2_1:handle:0forward_lstm_3/zeros:output:0forward_lstm_3/zeros_1:output:0'forward_lstm_3/strided_slice_1:output:0Fforward_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_3_lstm_cell_matmul_readvariableop_resource9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*+
body#R!
forward_lstm_3_while_body_65382*+
cond#R!
forward_lstm_3_while_cond_65381*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Р
?forward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Д
1forward_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_3/while:output:3Hforward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsw
$forward_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€p
&forward_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_3/strided_slice_3StridedSlice:forward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_3/strided_slice_3/stack:output:0/forward_lstm_3/strided_slice_3/stack_1:output:0/forward_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maskt
forward_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ƒ
forward_lstm_3/transpose_1	Transpose:forward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Аj
forward_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Y
backward_lstm_3/ShapeShapeinputs*
T0*
_output_shapes
::нѕm
#backward_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
backward_lstm_3/strided_sliceStridedSlicebackward_lstm_3/Shape:output:0,backward_lstm_3/strided_slice/stack:output:0.backward_lstm_3/strided_slice/stack_1:output:0.backward_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А£
backward_lstm_3/zeros/packedPack&backward_lstm_3/strided_slice:output:0'backward_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
backward_lstm_3/zerosFill%backward_lstm_3/zeros/packed:output:0$backward_lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
 backward_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :АІ
backward_lstm_3/zeros_1/packedPack&backward_lstm_3/strided_slice:output:0)backward_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_3/zeros_1Fill'backward_lstm_3/zeros_1/packed:output:0&backward_lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
backward_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
backward_lstm_3/transpose	Transposeinputs'backward_lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€r
backward_lstm_3/Shape_1Shapebackward_lstm_3/transpose:y:0*
T0*
_output_shapes
::нѕo
%backward_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
backward_lstm_3/strided_slice_1StridedSlice backward_lstm_3/Shape_1:output:0.backward_lstm_3/strided_slice_1/stack:output:00backward_lstm_3/strided_slice_1/stack_1:output:00backward_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€д
backward_lstm_3/TensorArrayV2TensorListReserve4backward_lstm_3/TensorArrayV2/element_shape:output:0(backward_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“h
backward_lstm_3/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_3/ReverseV2	ReverseV2backward_lstm_3/transpose:y:0'backward_lstm_3/ReverseV2/axis:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ц
Ebackward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Х
7backward_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_3/ReverseV2:output:0Nbackward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“o
%backward_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
backward_lstm_3/strided_slice_2StridedSlicebackward_lstm_3/transpose:y:0.backward_lstm_3/strided_slice_2/stack:output:00backward_lstm_3/strided_slice_2/stack_1:output:00backward_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask©
/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOp8backward_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ј
 backward_lstm_3/lstm_cell/MatMulMatMul(backward_lstm_3/strided_slice_2:output:07backward_lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ї
"backward_lstm_3/lstm_cell/MatMul_1MatMulbackward_lstm_3/zeros:output:09backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
backward_lstm_3/lstm_cell/addAddV2*backward_lstm_3/lstm_cell/MatMul:product:0,backward_lstm_3/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АІ
0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
!backward_lstm_3/lstm_cell/BiasAddBiasAdd!backward_lstm_3/lstm_cell/add:z:08backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
)backward_lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
backward_lstm_3/lstm_cell/splitSplit2backward_lstm_3/lstm_cell/split/split_dim:output:0*backward_lstm_3/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЙ
!backward_lstm_3/lstm_cell/SigmoidSigmoid(backward_lstm_3/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
#backward_lstm_3/lstm_cell/Sigmoid_1Sigmoid(backward_lstm_3/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АҐ
backward_lstm_3/lstm_cell/mulMul'backward_lstm_3/lstm_cell/Sigmoid_1:y:0 backward_lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
backward_lstm_3/lstm_cell/ReluRelu(backward_lstm_3/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЃ
backward_lstm_3/lstm_cell/mul_1Mul%backward_lstm_3/lstm_cell/Sigmoid:y:0,backward_lstm_3/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А£
backward_lstm_3/lstm_cell/add_1AddV2!backward_lstm_3/lstm_cell/mul:z:0#backward_lstm_3/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
#backward_lstm_3/lstm_cell/Sigmoid_2Sigmoid(backward_lstm_3/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АА
 backward_lstm_3/lstm_cell/Relu_1Relu#backward_lstm_3/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
backward_lstm_3/lstm_cell/mul_2Mul'backward_lstm_3/lstm_cell/Sigmoid_2:y:0.backward_lstm_3/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А~
-backward_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   n
,backward_lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :х
backward_lstm_3/TensorArrayV2_1TensorListReserve6backward_lstm_3/TensorArrayV2_1/element_shape:output:05backward_lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“V
backward_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€d
"backward_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Њ
backward_lstm_3/whileWhile+backward_lstm_3/while/loop_counter:output:01backward_lstm_3/while/maximum_iterations:output:0backward_lstm_3/time:output:0(backward_lstm_3/TensorArrayV2_1:handle:0backward_lstm_3/zeros:output:0 backward_lstm_3/zeros_1:output:0(backward_lstm_3/strided_slice_1:output:0Gbackward_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_3_lstm_cell_matmul_readvariableop_resource:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 backward_lstm_3_while_body_65525*,
cond$R"
 backward_lstm_3_while_cond_65524*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations С
@backward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   З
2backward_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_3/while:output:3Ibackward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsx
%backward_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€q
'backward_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
backward_lstm_3/strided_slice_3StridedSlice;backward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_3/strided_slice_3/stack:output:00backward_lstm_3/strided_slice_3/stack_1:output:00backward_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_masku
 backward_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
backward_lstm_3/transpose_1	Transpose;backward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Аk
backward_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ј
concatConcatV2'forward_lstm_3/strided_slice_3:output:0(backward_lstm_3/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€А_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АА
NoOpNoOp1^backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp0^backward_lstm_3/lstm_cell/MatMul/ReadVariableOp2^backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_3/while0^forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp/^forward_lstm_3/lstm_cell/MatMul/ReadVariableOp1^forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_3/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2d
0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp2b
/backward_lstm_3/lstm_cell/MatMul/ReadVariableOp/backward_lstm_3/lstm_cell/MatMul/ReadVariableOp2f
1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp2.
backward_lstm_3/whilebackward_lstm_3/while2b
/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp2`
.forward_lstm_3/lstm_cell/MatMul/ReadVariableOp.forward_lstm_3/lstm_cell/MatMul/ReadVariableOp2d
0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp2,
forward_lstm_3/whileforward_lstm_3/while:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
§:
ґ
while_body_67092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
АА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
АА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€ѓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€Аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
с
њ
/__inference_backward_lstm_3_layer_call_fn_66556
inputs_0
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identityИҐStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_62978p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:%!

_user_specified_name66548:%!

_user_specified_name66550:%!

_user_specified_name66552
Ѕ	
Њ
while_cond_63556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_63556___redundant_placeholder03
/while_while_cond_63556___redundant_placeholder13
/while_while_cond_63556___redundant_placeholder23
/while_while_cond_63556___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Е
З
___inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_64214
lambda_3_input(
bidirectional_3_64185:	А)
bidirectional_3_64187:
АА$
bidirectional_3_64189:	А(
bidirectional_3_64191:	А)
bidirectional_3_64193:
АА$
bidirectional_3_64195:	А 
dense_3_64208:	А
dense_3_64210:
identityИҐ'bidirectional_3/StatefulPartitionedCallҐdense_3/StatefulPartitionedCall√
lambda_3/PartitionedCallPartitionedCalllambda_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lambda_3_layer_call_and_return_conditional_losses_63893Й
'bidirectional_3/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0bidirectional_3_64185bidirectional_3_64187bidirectional_3_64189bidirectional_3_64191bidirectional_3_64193bidirectional_3_64195*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_64184У
dense_3/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_3/StatefulPartitionedCall:output:0dense_3_64208dense_3_64210*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_64207w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€n
NoOpNoOp(^bidirectional_3/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : : : 2R
'bidirectional_3/StatefulPartitionedCall'bidirectional_3/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namelambda_3_input:%!

_user_specified_name64185:%!

_user_specified_name64187:%!

_user_specified_name64189:%!

_user_specified_name64191:%!

_user_specified_name64193:%!

_user_specified_name64195:%!

_user_specified_name64208:%!

_user_specified_name64210
ј
Б
D__inference_lstm_cell_layer_call_and_return_conditional_losses_63042

inputs

states
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€АV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€АO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€А`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€АL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Й;
ю
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_63127

inputs"
lstm_cell_63043:	А#
lstm_cell_63045:
АА
lstm_cell_63047:	А
identityИҐ!lstm_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   е
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskе
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_63043lstm_cell_63045lstm_cell_63047*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_63042n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_63043lstm_cell_63045lstm_cell_63047*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_63057*
condR
while_cond_63056*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name63043:%!

_user_specified_name63045:%!

_user_specified_name63047
≤
ю
 backward_lstm_3_while_cond_64944<
8backward_lstm_3_while_backward_lstm_3_while_loop_counterB
>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations%
!backward_lstm_3_while_placeholder'
#backward_lstm_3_while_placeholder_1'
#backward_lstm_3_while_placeholder_2'
#backward_lstm_3_while_placeholder_3>
:backward_lstm_3_while_less_backward_lstm_3_strided_slice_1S
Obackward_lstm_3_while_backward_lstm_3_while_cond_64944___redundant_placeholder0S
Obackward_lstm_3_while_backward_lstm_3_while_cond_64944___redundant_placeholder1S
Obackward_lstm_3_while_backward_lstm_3_while_cond_64944___redundant_placeholder2S
Obackward_lstm_3_while_backward_lstm_3_while_cond_64944___redundant_placeholder3"
backward_lstm_3_while_identity
Ґ
backward_lstm_3/while/LessLess!backward_lstm_3_while_placeholder:backward_lstm_3_while_less_backward_lstm_3_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_3/while/IdentityIdentitybackward_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_3_while_identity'backward_lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_3/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_3/strided_slice_1:

_output_shapes
:
≤
ю
 backward_lstm_3_while_cond_64096<
8backward_lstm_3_while_backward_lstm_3_while_loop_counterB
>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations%
!backward_lstm_3_while_placeholder'
#backward_lstm_3_while_placeholder_1'
#backward_lstm_3_while_placeholder_2'
#backward_lstm_3_while_placeholder_3>
:backward_lstm_3_while_less_backward_lstm_3_strided_slice_1S
Obackward_lstm_3_while_backward_lstm_3_while_cond_64096___redundant_placeholder0S
Obackward_lstm_3_while_backward_lstm_3_while_cond_64096___redundant_placeholder1S
Obackward_lstm_3_while_backward_lstm_3_while_cond_64096___redundant_placeholder2S
Obackward_lstm_3_while_backward_lstm_3_while_cond_64096___redundant_placeholder3"
backward_lstm_3_while_identity
Ґ
backward_lstm_3/while/LessLess!backward_lstm_3_while_placeholder:backward_lstm_3_while_less_backward_lstm_3_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_3/while/IdentityIdentitybackward_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_3_while_identity'backward_lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_3/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_3/strided_slice_1:

_output_shapes
:
§:
ґ
while_body_63557
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
АА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
АА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€ѓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€Аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
њ
у
)__inference_lstm_cell_layer_call_fn_67292

inputs
states_0
states_1
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_62893p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_1:%!

_user_specified_name67280:%!

_user_specified_name67282:%!

_user_specified_name67284
≤
ю
 backward_lstm_3_while_cond_64425<
8backward_lstm_3_while_backward_lstm_3_while_loop_counterB
>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations%
!backward_lstm_3_while_placeholder'
#backward_lstm_3_while_placeholder_1'
#backward_lstm_3_while_placeholder_2'
#backward_lstm_3_while_placeholder_3>
:backward_lstm_3_while_less_backward_lstm_3_strided_slice_1S
Obackward_lstm_3_while_backward_lstm_3_while_cond_64425___redundant_placeholder0S
Obackward_lstm_3_while_backward_lstm_3_while_cond_64425___redundant_placeholder1S
Obackward_lstm_3_while_backward_lstm_3_while_cond_64425___redundant_placeholder2S
Obackward_lstm_3_while_backward_lstm_3_while_cond_64425___redundant_placeholder3"
backward_lstm_3_while_identity
Ґ
backward_lstm_3/while/LessLess!backward_lstm_3_while_placeholder:backward_lstm_3_while_less_backward_lstm_3_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_3/while/IdentityIdentitybackward_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_3_while_identity'backward_lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_3/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_3/strided_slice_1:

_output_shapes
:
ЃK
Р
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_63642

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
АА8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ё
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_63557*
condR
while_cond_63556*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
»
Г
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67243

inputs
states_0
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€АV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€АO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€А`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€АL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ън
Ў
__inference__traced_save_67563
file_prefix8
%read_disablecopyonread_dense_3_kernel:	А3
%read_1_disablecopyonread_dense_3_bias:[
Hread_2_disablecopyonread_bidirectional_3_forward_lstm_3_lstm_cell_kernel:	Аf
Rread_3_disablecopyonread_bidirectional_3_forward_lstm_3_lstm_cell_recurrent_kernel:
ААU
Fread_4_disablecopyonread_bidirectional_3_forward_lstm_3_lstm_cell_bias:	А\
Iread_5_disablecopyonread_bidirectional_3_backward_lstm_3_lstm_cell_kernel:	Аg
Sread_6_disablecopyonread_bidirectional_3_backward_lstm_3_lstm_cell_recurrent_kernel:
ААV
Gread_7_disablecopyonread_bidirectional_3_backward_lstm_3_lstm_cell_bias:	А,
"read_8_disablecopyonread_iteration:	 0
&read_9_disablecopyonread_learning_rate: c
Pread_10_disablecopyonread_adam_m_bidirectional_3_forward_lstm_3_lstm_cell_kernel:	Аc
Pread_11_disablecopyonread_adam_v_bidirectional_3_forward_lstm_3_lstm_cell_kernel:	Аn
Zread_12_disablecopyonread_adam_m_bidirectional_3_forward_lstm_3_lstm_cell_recurrent_kernel:
ААn
Zread_13_disablecopyonread_adam_v_bidirectional_3_forward_lstm_3_lstm_cell_recurrent_kernel:
АА]
Nread_14_disablecopyonread_adam_m_bidirectional_3_forward_lstm_3_lstm_cell_bias:	А]
Nread_15_disablecopyonread_adam_v_bidirectional_3_forward_lstm_3_lstm_cell_bias:	Аd
Qread_16_disablecopyonread_adam_m_bidirectional_3_backward_lstm_3_lstm_cell_kernel:	Аd
Qread_17_disablecopyonread_adam_v_bidirectional_3_backward_lstm_3_lstm_cell_kernel:	Аo
[read_18_disablecopyonread_adam_m_bidirectional_3_backward_lstm_3_lstm_cell_recurrent_kernel:
ААo
[read_19_disablecopyonread_adam_v_bidirectional_3_backward_lstm_3_lstm_cell_recurrent_kernel:
АА^
Oread_20_disablecopyonread_adam_m_bidirectional_3_backward_lstm_3_lstm_cell_bias:	А^
Oread_21_disablecopyonread_adam_v_bidirectional_3_backward_lstm_3_lstm_cell_bias:	АB
/read_22_disablecopyonread_adam_m_dense_3_kernel:	АB
/read_23_disablecopyonread_adam_v_dense_3_kernel:	А;
-read_24_disablecopyonread_adam_m_dense_3_bias:;
-read_25_disablecopyonread_adam_v_dense_3_bias:)
read_26_disablecopyonread_total: )
read_27_disablecopyonread_count: 
savev2_const
identity_57ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: w
Read/DisableCopyOnReadDisableCopyOnRead%read_disablecopyonread_dense_3_kernel"/device:CPU:0*
_output_shapes
 Ґ
Read/ReadVariableOpReadVariableOp%read_disablecopyonread_dense_3_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аb

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	Аy
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_dense_3_bias"/device:CPU:0*
_output_shapes
 °
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_dense_3_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:Ь
Read_2/DisableCopyOnReadDisableCopyOnReadHread_2_disablecopyonread_bidirectional_3_forward_lstm_3_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 …
Read_2/ReadVariableOpReadVariableOpHread_2_disablecopyonread_bidirectional_3_forward_lstm_3_lstm_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аd

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	А¶
Read_3/DisableCopyOnReadDisableCopyOnReadRread_3_disablecopyonread_bidirectional_3_forward_lstm_3_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ‘
Read_3/ReadVariableOpReadVariableOpRread_3_disablecopyonread_bidirectional_3_forward_lstm_3_lstm_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0o

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААe

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААЪ
Read_4/DisableCopyOnReadDisableCopyOnReadFread_4_disablecopyonread_bidirectional_3_forward_lstm_3_lstm_cell_bias"/device:CPU:0*
_output_shapes
 √
Read_4/ReadVariableOpReadVariableOpFread_4_disablecopyonread_bidirectional_3_forward_lstm_3_lstm_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЭ
Read_5/DisableCopyOnReadDisableCopyOnReadIread_5_disablecopyonread_bidirectional_3_backward_lstm_3_lstm_cell_kernel"/device:CPU:0*
_output_shapes
  
Read_5/ReadVariableOpReadVariableOpIread_5_disablecopyonread_bidirectional_3_backward_lstm_3_lstm_cell_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0o
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	АІ
Read_6/DisableCopyOnReadDisableCopyOnReadSread_6_disablecopyonread_bidirectional_3_backward_lstm_3_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ’
Read_6/ReadVariableOpReadVariableOpSread_6_disablecopyonread_bidirectional_3_backward_lstm_3_lstm_cell_recurrent_kernel^Read_6/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0p
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААg
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААЫ
Read_7/DisableCopyOnReadDisableCopyOnReadGread_7_disablecopyonread_bidirectional_3_backward_lstm_3_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ƒ
Read_7/ReadVariableOpReadVariableOpGread_7_disablecopyonread_bidirectional_3_backward_lstm_3_lstm_cell_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:Аv
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ъ
Read_8/ReadVariableOpReadVariableOp"read_8_disablecopyonread_iteration^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ю
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_learning_rate^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: •
Read_10/DisableCopyOnReadDisableCopyOnReadPread_10_disablecopyonread_adam_m_bidirectional_3_forward_lstm_3_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ”
Read_10/ReadVariableOpReadVariableOpPread_10_disablecopyonread_adam_m_bidirectional_3_forward_lstm_3_lstm_cell_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	А•
Read_11/DisableCopyOnReadDisableCopyOnReadPread_11_disablecopyonread_adam_v_bidirectional_3_forward_lstm_3_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ”
Read_11/ReadVariableOpReadVariableOpPread_11_disablecopyonread_adam_v_bidirectional_3_forward_lstm_3_lstm_cell_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:	Аѓ
Read_12/DisableCopyOnReadDisableCopyOnReadZread_12_disablecopyonread_adam_m_bidirectional_3_forward_lstm_3_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ё
Read_12/ReadVariableOpReadVariableOpZread_12_disablecopyonread_adam_m_bidirectional_3_forward_lstm_3_lstm_cell_recurrent_kernel^Read_12/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0q
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААg
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААѓ
Read_13/DisableCopyOnReadDisableCopyOnReadZread_13_disablecopyonread_adam_v_bidirectional_3_forward_lstm_3_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ё
Read_13/ReadVariableOpReadVariableOpZread_13_disablecopyonread_adam_v_bidirectional_3_forward_lstm_3_lstm_cell_recurrent_kernel^Read_13/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0q
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААg
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0* 
_output_shapes
:
АА£
Read_14/DisableCopyOnReadDisableCopyOnReadNread_14_disablecopyonread_adam_m_bidirectional_3_forward_lstm_3_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_14/ReadVariableOpReadVariableOpNread_14_disablecopyonread_adam_m_bidirectional_3_forward_lstm_3_lstm_cell_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:А£
Read_15/DisableCopyOnReadDisableCopyOnReadNread_15_disablecopyonread_adam_v_bidirectional_3_forward_lstm_3_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_15/ReadVariableOpReadVariableOpNread_15_disablecopyonread_adam_v_bidirectional_3_forward_lstm_3_lstm_cell_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:А¶
Read_16/DisableCopyOnReadDisableCopyOnReadQread_16_disablecopyonread_adam_m_bidirectional_3_backward_lstm_3_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ‘
Read_16/ReadVariableOpReadVariableOpQread_16_disablecopyonread_adam_m_bidirectional_3_backward_lstm_3_lstm_cell_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:	А¶
Read_17/DisableCopyOnReadDisableCopyOnReadQread_17_disablecopyonread_adam_v_bidirectional_3_backward_lstm_3_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ‘
Read_17/ReadVariableOpReadVariableOpQread_17_disablecopyonread_adam_v_bidirectional_3_backward_lstm_3_lstm_cell_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:	А∞
Read_18/DisableCopyOnReadDisableCopyOnRead[read_18_disablecopyonread_adam_m_bidirectional_3_backward_lstm_3_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 я
Read_18/ReadVariableOpReadVariableOp[read_18_disablecopyonread_adam_m_bidirectional_3_backward_lstm_3_lstm_cell_recurrent_kernel^Read_18/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0q
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААg
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0* 
_output_shapes
:
АА∞
Read_19/DisableCopyOnReadDisableCopyOnRead[read_19_disablecopyonread_adam_v_bidirectional_3_backward_lstm_3_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 я
Read_19/ReadVariableOpReadVariableOp[read_19_disablecopyonread_adam_v_bidirectional_3_backward_lstm_3_lstm_cell_recurrent_kernel^Read_19/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0q
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААg
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0* 
_output_shapes
:
АА§
Read_20/DisableCopyOnReadDisableCopyOnReadOread_20_disablecopyonread_adam_m_bidirectional_3_backward_lstm_3_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ќ
Read_20/ReadVariableOpReadVariableOpOread_20_disablecopyonread_adam_m_bidirectional_3_backward_lstm_3_lstm_cell_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:А§
Read_21/DisableCopyOnReadDisableCopyOnReadOread_21_disablecopyonread_adam_v_bidirectional_3_backward_lstm_3_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ќ
Read_21/ReadVariableOpReadVariableOpOread_21_disablecopyonread_adam_v_bidirectional_3_backward_lstm_3_lstm_cell_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:АД
Read_22/DisableCopyOnReadDisableCopyOnRead/read_22_disablecopyonread_adam_m_dense_3_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_22/ReadVariableOpReadVariableOp/read_22_disablecopyonread_adam_m_dense_3_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:	АД
Read_23/DisableCopyOnReadDisableCopyOnRead/read_23_disablecopyonread_adam_v_dense_3_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_23/ReadVariableOpReadVariableOp/read_23_disablecopyonread_adam_v_dense_3_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:	АВ
Read_24/DisableCopyOnReadDisableCopyOnRead-read_24_disablecopyonread_adam_m_dense_3_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_24/ReadVariableOpReadVariableOp-read_24_disablecopyonread_adam_m_dense_3_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:В
Read_25/DisableCopyOnReadDisableCopyOnRead-read_25_disablecopyonread_adam_v_dense_3_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_25/ReadVariableOpReadVariableOp-read_25_disablecopyonread_adam_v_dense_3_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_26/DisableCopyOnReadDisableCopyOnReadread_26_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_26/ReadVariableOpReadVariableOpread_26_disablecopyonread_total^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_27/DisableCopyOnReadDisableCopyOnReadread_27_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_27/ReadVariableOpReadVariableOpread_27_disablecopyonread_count^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: т
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ы
valueСBОB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHІ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B „
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *+
dtypes!
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_56Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_57IdentityIdentity_56:output:0^NoOp*
T0*
_output_shapes
: л
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_57Identity_57:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_3/bias:OK
I
_user_specified_name1/bidirectional_3/forward_lstm_3/lstm_cell/kernel:YU
S
_user_specified_name;9bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel:MI
G
_user_specified_name/-bidirectional_3/forward_lstm_3/lstm_cell/bias:PL
J
_user_specified_name20bidirectional_3/backward_lstm_3/lstm_cell/kernel:ZV
T
_user_specified_name<:bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel:NJ
H
_user_specified_name0.bidirectional_3/backward_lstm_3/lstm_cell/bias:)	%
#
_user_specified_name	iteration:-
)
'
_user_specified_namelearning_rate:VR
P
_user_specified_name86Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/kernel:VR
P
_user_specified_name86Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/kernel:`\
Z
_user_specified_nameB@Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel:`\
Z
_user_specified_nameB@Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel:TP
N
_user_specified_name64Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/bias:TP
N
_user_specified_name64Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/bias:WS
Q
_user_specified_name97Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/kernel:WS
Q
_user_specified_name97Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/kernel:a]
[
_user_specified_nameCAAdam/m/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel:a]
[
_user_specified_nameCAAdam/v/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel:UQ
O
_user_specified_name75Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/bias:UQ
O
_user_specified_name75Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/bias:51
/
_user_specified_nameAdam/m/dense_3/kernel:51
/
_user_specified_nameAdam/v/dense_3/kernel:3/
-
_user_specified_nameAdam/m/dense_3/bias:3/
-
_user_specified_nameAdam/v/dense_3/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
У
к
forward_lstm_3_while_cond_64282:
6forward_lstm_3_while_forward_lstm_3_while_loop_counter@
<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations$
 forward_lstm_3_while_placeholder&
"forward_lstm_3_while_placeholder_1&
"forward_lstm_3_while_placeholder_2&
"forward_lstm_3_while_placeholder_3<
8forward_lstm_3_while_less_forward_lstm_3_strided_slice_1Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_64282___redundant_placeholder0Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_64282___redundant_placeholder1Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_64282___redundant_placeholder2Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_64282___redundant_placeholder3!
forward_lstm_3_while_identity
Ю
forward_lstm_3/while/LessLess forward_lstm_3_while_placeholder8forward_lstm_3_while_less_forward_lstm_3_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_3/while/IdentityIdentityforward_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_3_while_identity&forward_lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_3/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_3/strided_slice_1:

_output_shapes
:
Ы:
ґ
while_body_66170
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
АА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
АА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€Аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Ќ
«
#__inference_signature_wrapper_64652
lambda_3_input
unknown:	А
	unknown_0:
АА
	unknown_1:	А
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИҐStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCalllambda_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_62479o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namelambda_3_input:%!

_user_specified_name64634:%!

_user_specified_name64636:%!

_user_specified_name64638:%!

_user_specified_name64640:%!

_user_specified_name64642:%!

_user_specified_name64644:%!

_user_specified_name64646:%!

_user_specified_name64648
У
к
forward_lstm_3_while_cond_65091:
6forward_lstm_3_while_forward_lstm_3_while_loop_counter@
<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations$
 forward_lstm_3_while_placeholder&
"forward_lstm_3_while_placeholder_1&
"forward_lstm_3_while_placeholder_2&
"forward_lstm_3_while_placeholder_3<
8forward_lstm_3_while_less_forward_lstm_3_strided_slice_1Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_65091___redundant_placeholder0Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_65091___redundant_placeholder1Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_65091___redundant_placeholder2Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_65091___redundant_placeholder3!
forward_lstm_3_while_identity
Ю
forward_lstm_3/while/LessLess forward_lstm_3_while_placeholder8forward_lstm_3_while_less_forward_lstm_3_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_3/while/IdentityIdentityforward_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_3_while_identity&forward_lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_3/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_3/strided_slice_1:

_output_shapes
:
§:
ґ
while_body_63245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
АА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
АА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€ѓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€Аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
§:
ґ
while_body_66315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
АА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
АА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€ѓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€Аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
п
Њ
.__inference_forward_lstm_3_layer_call_fn_65943
inputs_0
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identityИҐStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_62773p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:%!

_user_specified_name65935:%!

_user_specified_name65937:%!

_user_specified_name65939
’%
…
while_body_62908
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_62932_0:	А+
while_lstm_cell_62934_0:
АА&
while_lstm_cell_62936_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_62932:	А)
while_lstm_cell_62934:
АА$
while_lstm_cell_62936:	АИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0£
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_62932_0while_lstm_cell_62934_0while_lstm_cell_62936_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_62893r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: О
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АО
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_62932while_lstm_cell_62932_0"0
while_lstm_cell_62934while_lstm_cell_62934_0"0
while_lstm_cell_62936while_lstm_cell_62936_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:%!

_user_specified_name62932:%	!

_user_specified_name62934:%
!

_user_specified_name62936
щ	
ф
B__inference_dense_3_layer_call_and_return_conditional_losses_64207

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ѕ	
Њ
while_cond_63398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_63398___redundant_placeholder03
/while_while_cond_63398___redundant_placeholder13
/while_while_cond_63398___redundant_placeholder23
/while_while_cond_63398___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
У
к
forward_lstm_3_while_cond_65381:
6forward_lstm_3_while_forward_lstm_3_while_loop_counter@
<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations$
 forward_lstm_3_while_placeholder&
"forward_lstm_3_while_placeholder_1&
"forward_lstm_3_while_placeholder_2&
"forward_lstm_3_while_placeholder_3<
8forward_lstm_3_while_less_forward_lstm_3_strided_slice_1Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_65381___redundant_placeholder0Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_65381___redundant_placeholder1Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_65381___redundant_placeholder2Q
Mforward_lstm_3_while_forward_lstm_3_while_cond_65381___redundant_placeholder3!
forward_lstm_3_while_identity
Ю
forward_lstm_3/while/LessLess forward_lstm_3_while_placeholder8forward_lstm_3_while_less_forward_lstm_3_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_3/while/IdentityIdentityforward_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_3_while_identity&forward_lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_3/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_3/strided_slice_1:

_output_shapes
:
Ѕ	
Њ
while_cond_66024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_66024___redundant_placeholder03
/while_while_cond_66024___redundant_placeholder13
/while_while_cond_66024___redundant_placeholder23
/while_while_cond_66024___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
£
D
(__inference_lambda_3_layer_call_fn_64657

inputs
identity≤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lambda_3_layer_call_and_return_conditional_losses_63893d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Е
З
___inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_64533
lambda_3_input(
bidirectional_3_64514:	А)
bidirectional_3_64516:
АА$
bidirectional_3_64518:	А(
bidirectional_3_64520:	А)
bidirectional_3_64522:
АА$
bidirectional_3_64524:	А 
dense_3_64527:	А
dense_3_64529:
identityИҐ'bidirectional_3/StatefulPartitionedCallҐdense_3/StatefulPartitionedCall√
lambda_3/PartitionedCallPartitionedCalllambda_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lambda_3_layer_call_and_return_conditional_losses_64222Й
'bidirectional_3/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0bidirectional_3_64514bidirectional_3_64516bidirectional_3_64518bidirectional_3_64520bidirectional_3_64522bidirectional_3_64524*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_64513У
dense_3/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_3/StatefulPartitionedCall:output:0dense_3_64527dense_3_64529*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_64207w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€n
NoOpNoOp(^bidirectional_3/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : : : 2R
'bidirectional_3/StatefulPartitionedCall'bidirectional_3/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namelambda_3_input:%!

_user_specified_name64514:%!

_user_specified_name64516:%!

_user_specified_name64518:%!

_user_specified_name64520:%!

_user_specified_name64522:%!

_user_specified_name64524:%!

_user_specified_name64527:%!

_user_specified_name64529
Ѕ	
Њ
while_cond_66944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_66944___redundant_placeholder03
/while_while_cond_66944___redundant_placeholder13
/while_while_cond_66944___redundant_placeholder23
/while_while_cond_66944___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
§:
ґ
while_body_63399
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
АА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
АА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€ѓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€Аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
њ
у
)__inference_lstm_cell_layer_call_fn_67309

inputs
states_0
states_1
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_63042p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_1:%!

_user_specified_name67297:%!

_user_specified_name67299:%!

_user_specified_name67301
дM
ґ
 backward_lstm_3_while_body_65235<
8backward_lstm_3_while_backward_lstm_3_while_loop_counterB
>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations%
!backward_lstm_3_while_placeholder'
#backward_lstm_3_while_placeholder_1'
#backward_lstm_3_while_placeholder_2'
#backward_lstm_3_while_placeholder_3;
7backward_lstm_3_while_backward_lstm_3_strided_slice_1_0w
sbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0:	АV
Bbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0:
ААP
Abackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0:	А"
backward_lstm_3_while_identity$
 backward_lstm_3_while_identity_1$
 backward_lstm_3_while_identity_2$
 backward_lstm_3_while_identity_3$
 backward_lstm_3_while_identity_4$
 backward_lstm_3_while_identity_59
5backward_lstm_3_while_backward_lstm_3_strided_slice_1u
qbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource:	АT
@backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource:
ААN
?backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpҐ5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpҐ7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpШ
Gbackward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€€
9backward_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_3_while_placeholderPbackward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0Ј
5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0д
&backward_lstm_3/while/lstm_cell/MatMulMatMul@backward_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЉ
7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ћ
(backward_lstm_3/while/lstm_cell/MatMul_1MatMul#backward_lstm_3_while_placeholder_2?backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≈
#backward_lstm_3/while/lstm_cell/addAddV20backward_lstm_3/while/lstm_cell/MatMul:product:02backward_lstm_3/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0ќ
'backward_lstm_3/while/lstm_cell/BiasAddBiasAdd'backward_lstm_3/while/lstm_cell/add:z:0>backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
/backward_lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
%backward_lstm_3/while/lstm_cell/splitSplit8backward_lstm_3/while/lstm_cell/split/split_dim:output:00backward_lstm_3/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitХ
'backward_lstm_3/while/lstm_cell/SigmoidSigmoid.backward_lstm_3/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
)backward_lstm_3/while/lstm_cell/Sigmoid_1Sigmoid.backward_lstm_3/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А±
#backward_lstm_3/while/lstm_cell/mulMul-backward_lstm_3/while/lstm_cell/Sigmoid_1:y:0#backward_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€АП
$backward_lstm_3/while/lstm_cell/ReluRelu.backward_lstm_3/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€Ај
%backward_lstm_3/while/lstm_cell/mul_1Mul+backward_lstm_3/while/lstm_cell/Sigmoid:y:02backward_lstm_3/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
%backward_lstm_3/while/lstm_cell/add_1AddV2'backward_lstm_3/while/lstm_cell/mul:z:0)backward_lstm_3/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
)backward_lstm_3/while/lstm_cell/Sigmoid_2Sigmoid.backward_lstm_3/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АМ
&backward_lstm_3/while/lstm_cell/Relu_1Relu)backward_lstm_3/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аƒ
%backward_lstm_3/while/lstm_cell/mul_2Mul-backward_lstm_3/while/lstm_cell/Sigmoid_2:y:04backward_lstm_3/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
@backward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ™
:backward_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_3_while_placeholder_1Ibackward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0)backward_lstm_3/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“]
backward_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :М
backward_lstm_3/while/addAddV2!backward_lstm_3_while_placeholder$backward_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_3/while/add_1AddV28backward_lstm_3_while_backward_lstm_3_while_loop_counter&backward_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: Й
backward_lstm_3/while/IdentityIdentitybackward_lstm_3/while/add_1:z:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: ™
 backward_lstm_3/while/Identity_1Identity>backward_lstm_3_while_backward_lstm_3_while_maximum_iterations^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: Й
 backward_lstm_3/while/Identity_2Identitybackward_lstm_3/while/add:z:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: ґ
 backward_lstm_3/while/Identity_3IdentityJbackward_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_3/while/NoOp*
T0*
_output_shapes
: І
 backward_lstm_3/while/Identity_4Identity)backward_lstm_3/while/lstm_cell/mul_2:z:0^backward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€АІ
 backward_lstm_3/while/Identity_5Identity)backward_lstm_3/while/lstm_cell/add_1:z:0^backward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аг
backward_lstm_3/while/NoOpNoOp7^backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp6^backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp8^backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5backward_lstm_3_while_backward_lstm_3_strided_slice_17backward_lstm_3_while_backward_lstm_3_strided_slice_1_0"I
backward_lstm_3_while_identity'backward_lstm_3/while/Identity:output:0"M
 backward_lstm_3_while_identity_1)backward_lstm_3/while/Identity_1:output:0"M
 backward_lstm_3_while_identity_2)backward_lstm_3/while/Identity_2:output:0"M
 backward_lstm_3_while_identity_3)backward_lstm_3/while/Identity_3:output:0"M
 backward_lstm_3_while_identity_4)backward_lstm_3/while/Identity_4:output:0"M
 backward_lstm_3_while_identity_5)backward_lstm_3/while/Identity_5:output:0"Д
?backward_lstm_3_while_lstm_cell_biasadd_readvariableop_resourceAbackward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0"Ж
@backward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resourceBbackward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0"В
>backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource@backward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0"и
qbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2p
6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp6backward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp2n
5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp5backward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp2r
7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp7backward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_3/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_3/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97backward_lstm_3/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ЃЉ
Т
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_64513

inputsJ
7forward_lstm_3_lstm_cell_matmul_readvariableop_resource:	АM
9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource:
ААG
8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource:	АK
8backward_lstm_3_lstm_cell_matmul_readvariableop_resource:	АN
:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource:
ААH
9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpҐ/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpҐ1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpҐbackward_lstm_3/whileҐ/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpҐ.forward_lstm_3/lstm_cell/MatMul/ReadVariableOpҐ0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpҐforward_lstm_3/whileX
forward_lstm_3/ShapeShapeinputs*
T0*
_output_shapes
::нѕl
"forward_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
forward_lstm_3/strided_sliceStridedSliceforward_lstm_3/Shape:output:0+forward_lstm_3/strided_slice/stack:output:0-forward_lstm_3/strided_slice/stack_1:output:0-forward_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А†
forward_lstm_3/zeros/packedPack%forward_lstm_3/strided_slice:output:0&forward_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
forward_lstm_3/zerosFill$forward_lstm_3/zeros/packed:output:0#forward_lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
forward_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А§
forward_lstm_3/zeros_1/packedPack%forward_lstm_3/strided_slice:output:0(forward_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    †
forward_lstm_3/zeros_1Fill&forward_lstm_3/zeros_1/packed:output:0%forward_lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
forward_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Л
forward_lstm_3/transpose	Transposeinputs&forward_lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€p
forward_lstm_3/Shape_1Shapeforward_lstm_3/transpose:y:0*
T0*
_output_shapes
::нѕn
$forward_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
forward_lstm_3/strided_slice_1StridedSliceforward_lstm_3/Shape_1:output:0-forward_lstm_3/strided_slice_1/stack:output:0/forward_lstm_3/strided_slice_1/stack_1:output:0/forward_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€б
forward_lstm_3/TensorArrayV2TensorListReserve3forward_lstm_3/TensorArrayV2/element_shape:output:0'forward_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Х
Dforward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Н
6forward_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_3/transpose:y:0Mforward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“n
$forward_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:і
forward_lstm_3/strided_slice_2StridedSliceforward_lstm_3/transpose:y:0-forward_lstm_3/strided_slice_2/stack:output:0/forward_lstm_3/strided_slice_2/stack_1:output:0/forward_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskІ
.forward_lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOp7forward_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0љ
forward_lstm_3/lstm_cell/MatMulMatMul'forward_lstm_3/strided_slice_2:output:06forward_lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ађ
0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ј
!forward_lstm_3/lstm_cell/MatMul_1MatMulforward_lstm_3/zeros:output:08forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А∞
forward_lstm_3/lstm_cell/addAddV2)forward_lstm_3/lstm_cell/MatMul:product:0+forward_lstm_3/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А•
/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0є
 forward_lstm_3/lstm_cell/BiasAddBiasAdd forward_lstm_3/lstm_cell/add:z:07forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аj
(forward_lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
forward_lstm_3/lstm_cell/splitSplit1forward_lstm_3/lstm_cell/split/split_dim:output:0)forward_lstm_3/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЗ
 forward_lstm_3/lstm_cell/SigmoidSigmoid'forward_lstm_3/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
"forward_lstm_3/lstm_cell/Sigmoid_1Sigmoid'forward_lstm_3/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЯ
forward_lstm_3/lstm_cell/mulMul&forward_lstm_3/lstm_cell/Sigmoid_1:y:0forward_lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
forward_lstm_3/lstm_cell/ReluRelu'forward_lstm_3/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЂ
forward_lstm_3/lstm_cell/mul_1Mul$forward_lstm_3/lstm_cell/Sigmoid:y:0+forward_lstm_3/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А†
forward_lstm_3/lstm_cell/add_1AddV2 forward_lstm_3/lstm_cell/mul:z:0"forward_lstm_3/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
"forward_lstm_3/lstm_cell/Sigmoid_2Sigmoid'forward_lstm_3/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А~
forward_lstm_3/lstm_cell/Relu_1Relu"forward_lstm_3/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аѓ
forward_lstm_3/lstm_cell/mul_2Mul&forward_lstm_3/lstm_cell/Sigmoid_2:y:0-forward_lstm_3/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А}
,forward_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   m
+forward_lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :т
forward_lstm_3/TensorArrayV2_1TensorListReserve5forward_lstm_3/TensorArrayV2_1/element_shape:output:04forward_lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“U
forward_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€c
!forward_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ∞
forward_lstm_3/whileWhile*forward_lstm_3/while/loop_counter:output:00forward_lstm_3/while/maximum_iterations:output:0forward_lstm_3/time:output:0'forward_lstm_3/TensorArrayV2_1:handle:0forward_lstm_3/zeros:output:0forward_lstm_3/zeros_1:output:0'forward_lstm_3/strided_slice_1:output:0Fforward_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_3_lstm_cell_matmul_readvariableop_resource9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*+
body#R!
forward_lstm_3_while_body_64283*+
cond#R!
forward_lstm_3_while_cond_64282*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Р
?forward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Д
1forward_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_3/while:output:3Hforward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsw
$forward_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€p
&forward_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_3/strided_slice_3StridedSlice:forward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_3/strided_slice_3/stack:output:0/forward_lstm_3/strided_slice_3/stack_1:output:0/forward_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maskt
forward_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ƒ
forward_lstm_3/transpose_1	Transpose:forward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Аj
forward_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Y
backward_lstm_3/ShapeShapeinputs*
T0*
_output_shapes
::нѕm
#backward_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
backward_lstm_3/strided_sliceStridedSlicebackward_lstm_3/Shape:output:0,backward_lstm_3/strided_slice/stack:output:0.backward_lstm_3/strided_slice/stack_1:output:0.backward_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А£
backward_lstm_3/zeros/packedPack&backward_lstm_3/strided_slice:output:0'backward_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
backward_lstm_3/zerosFill%backward_lstm_3/zeros/packed:output:0$backward_lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
 backward_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :АІ
backward_lstm_3/zeros_1/packedPack&backward_lstm_3/strided_slice:output:0)backward_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_3/zeros_1Fill'backward_lstm_3/zeros_1/packed:output:0&backward_lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
backward_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
backward_lstm_3/transpose	Transposeinputs'backward_lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€r
backward_lstm_3/Shape_1Shapebackward_lstm_3/transpose:y:0*
T0*
_output_shapes
::нѕo
%backward_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
backward_lstm_3/strided_slice_1StridedSlice backward_lstm_3/Shape_1:output:0.backward_lstm_3/strided_slice_1/stack:output:00backward_lstm_3/strided_slice_1/stack_1:output:00backward_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€д
backward_lstm_3/TensorArrayV2TensorListReserve4backward_lstm_3/TensorArrayV2/element_shape:output:0(backward_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“h
backward_lstm_3/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_3/ReverseV2	ReverseV2backward_lstm_3/transpose:y:0'backward_lstm_3/ReverseV2/axis:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ц
Ebackward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Х
7backward_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_3/ReverseV2:output:0Nbackward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“o
%backward_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
backward_lstm_3/strided_slice_2StridedSlicebackward_lstm_3/transpose:y:0.backward_lstm_3/strided_slice_2/stack:output:00backward_lstm_3/strided_slice_2/stack_1:output:00backward_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask©
/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOp8backward_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ј
 backward_lstm_3/lstm_cell/MatMulMatMul(backward_lstm_3/strided_slice_2:output:07backward_lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ї
"backward_lstm_3/lstm_cell/MatMul_1MatMulbackward_lstm_3/zeros:output:09backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
backward_lstm_3/lstm_cell/addAddV2*backward_lstm_3/lstm_cell/MatMul:product:0,backward_lstm_3/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АІ
0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
!backward_lstm_3/lstm_cell/BiasAddBiasAdd!backward_lstm_3/lstm_cell/add:z:08backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
)backward_lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
backward_lstm_3/lstm_cell/splitSplit2backward_lstm_3/lstm_cell/split/split_dim:output:0*backward_lstm_3/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЙ
!backward_lstm_3/lstm_cell/SigmoidSigmoid(backward_lstm_3/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
#backward_lstm_3/lstm_cell/Sigmoid_1Sigmoid(backward_lstm_3/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АҐ
backward_lstm_3/lstm_cell/mulMul'backward_lstm_3/lstm_cell/Sigmoid_1:y:0 backward_lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
backward_lstm_3/lstm_cell/ReluRelu(backward_lstm_3/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЃ
backward_lstm_3/lstm_cell/mul_1Mul%backward_lstm_3/lstm_cell/Sigmoid:y:0,backward_lstm_3/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А£
backward_lstm_3/lstm_cell/add_1AddV2!backward_lstm_3/lstm_cell/mul:z:0#backward_lstm_3/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
#backward_lstm_3/lstm_cell/Sigmoid_2Sigmoid(backward_lstm_3/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АА
 backward_lstm_3/lstm_cell/Relu_1Relu#backward_lstm_3/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
backward_lstm_3/lstm_cell/mul_2Mul'backward_lstm_3/lstm_cell/Sigmoid_2:y:0.backward_lstm_3/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А~
-backward_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   n
,backward_lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :х
backward_lstm_3/TensorArrayV2_1TensorListReserve6backward_lstm_3/TensorArrayV2_1/element_shape:output:05backward_lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“V
backward_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€d
"backward_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Њ
backward_lstm_3/whileWhile+backward_lstm_3/while/loop_counter:output:01backward_lstm_3/while/maximum_iterations:output:0backward_lstm_3/time:output:0(backward_lstm_3/TensorArrayV2_1:handle:0backward_lstm_3/zeros:output:0 backward_lstm_3/zeros_1:output:0(backward_lstm_3/strided_slice_1:output:0Gbackward_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_3_lstm_cell_matmul_readvariableop_resource:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 backward_lstm_3_while_body_64426*,
cond$R"
 backward_lstm_3_while_cond_64425*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations С
@backward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   З
2backward_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_3/while:output:3Ibackward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsx
%backward_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€q
'backward_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
backward_lstm_3/strided_slice_3StridedSlice;backward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_3/strided_slice_3/stack:output:00backward_lstm_3/strided_slice_3/stack_1:output:00backward_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_masku
 backward_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
backward_lstm_3/transpose_1	Transpose;backward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Аk
backward_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ј
concatConcatV2'forward_lstm_3/strided_slice_3:output:0(backward_lstm_3/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€А_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АА
NoOpNoOp1^backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp0^backward_lstm_3/lstm_cell/MatMul/ReadVariableOp2^backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_3/while0^forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp/^forward_lstm_3/lstm_cell/MatMul/ReadVariableOp1^forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_3/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2d
0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp2b
/backward_lstm_3/lstm_cell/MatMul/ReadVariableOp/backward_lstm_3/lstm_cell/MatMul/ReadVariableOp2f
1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp2.
backward_lstm_3/whilebackward_lstm_3/while2b
/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp2`
.forward_lstm_3/lstm_cell/MatMul/ReadVariableOp.forward_lstm_3/lstm_cell/MatMul/ReadVariableOp2d
0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp2,
forward_lstm_3/whileforward_lstm_3/while:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
јL
Ц
forward_lstm_3_while_body_65672:
6forward_lstm_3_while_forward_lstm_3_while_loop_counter@
<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations$
 forward_lstm_3_while_placeholder&
"forward_lstm_3_while_placeholder_1&
"forward_lstm_3_while_placeholder_2&
"forward_lstm_3_while_placeholder_39
5forward_lstm_3_while_forward_lstm_3_strided_slice_1_0u
qforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0:	АU
Aforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0:
ААO
@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0:	А!
forward_lstm_3_while_identity#
forward_lstm_3_while_identity_1#
forward_lstm_3_while_identity_2#
forward_lstm_3_while_identity_3#
forward_lstm_3_while_identity_4#
forward_lstm_3_while_identity_57
3forward_lstm_3_while_forward_lstm_3_strided_slice_1s
oforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource:	АS
?forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource:
ААM
>forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpҐ4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpҐ6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpЧ
Fforward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   с
8forward_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_3_while_placeholderOforward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0µ
4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0б
%forward_lstm_3/while/lstm_cell/MatMulMatMul?forward_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0»
'forward_lstm_3/while/lstm_cell/MatMul_1MatMul"forward_lstm_3_while_placeholder_2>forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¬
"forward_lstm_3/while/lstm_cell/addAddV2/forward_lstm_3/while/lstm_cell/MatMul:product:01forward_lstm_3/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ћ
&forward_lstm_3/while/lstm_cell/BiasAddBiasAdd&forward_lstm_3/while/lstm_cell/add:z:0=forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
.forward_lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ч
$forward_lstm_3/while/lstm_cell/splitSplit7forward_lstm_3/while/lstm_cell/split/split_dim:output:0/forward_lstm_3/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitУ
&forward_lstm_3/while/lstm_cell/SigmoidSigmoid-forward_lstm_3/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
(forward_lstm_3/while/lstm_cell/Sigmoid_1Sigmoid-forward_lstm_3/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЃ
"forward_lstm_3/while/lstm_cell/mulMul,forward_lstm_3/while/lstm_cell/Sigmoid_1:y:0"forward_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€АН
#forward_lstm_3/while/lstm_cell/ReluRelu-forward_lstm_3/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€Аљ
$forward_lstm_3/while/lstm_cell/mul_1Mul*forward_lstm_3/while/lstm_cell/Sigmoid:y:01forward_lstm_3/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
$forward_lstm_3/while/lstm_cell/add_1AddV2&forward_lstm_3/while/lstm_cell/mul:z:0(forward_lstm_3/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
(forward_lstm_3/while/lstm_cell/Sigmoid_2Sigmoid-forward_lstm_3/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АК
%forward_lstm_3/while/lstm_cell/Relu_1Relu(forward_lstm_3/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЅ
$forward_lstm_3/while/lstm_cell/mul_2Mul,forward_lstm_3/while/lstm_cell/Sigmoid_2:y:03forward_lstm_3/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
?forward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¶
9forward_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_3_while_placeholder_1Hforward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0(forward_lstm_3/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“\
forward_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Й
forward_lstm_3/while/addAddV2 forward_lstm_3_while_placeholder#forward_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_3/while/add_1AddV26forward_lstm_3_while_forward_lstm_3_while_loop_counter%forward_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: Ж
forward_lstm_3/while/IdentityIdentityforward_lstm_3/while/add_1:z:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: ¶
forward_lstm_3/while/Identity_1Identity<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: Ж
forward_lstm_3/while/Identity_2Identityforward_lstm_3/while/add:z:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: ≥
forward_lstm_3/while/Identity_3IdentityIforward_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_3/while/Identity_4Identity(forward_lstm_3/while/lstm_cell/mul_2:z:0^forward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А§
forward_lstm_3/while/Identity_5Identity(forward_lstm_3/while/lstm_cell/add_1:z:0^forward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Ая
forward_lstm_3/while/NoOpNoOp6^forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp5^forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp7^forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "l
3forward_lstm_3_while_forward_lstm_3_strided_slice_15forward_lstm_3_while_forward_lstm_3_strided_slice_1_0"G
forward_lstm_3_while_identity&forward_lstm_3/while/Identity:output:0"K
forward_lstm_3_while_identity_1(forward_lstm_3/while/Identity_1:output:0"K
forward_lstm_3_while_identity_2(forward_lstm_3/while/Identity_2:output:0"K
forward_lstm_3_while_identity_3(forward_lstm_3/while/Identity_3:output:0"K
forward_lstm_3_while_identity_4(forward_lstm_3/while/Identity_4:output:0"K
forward_lstm_3_while_identity_5(forward_lstm_3/while/Identity_5:output:0"В
>forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0"Д
?forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resourceAforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0"А
=forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0"д
oforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensorqforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2n
5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp2l
4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp2p
6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_3/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_3/strided_slice_1:nj

_output_shapes
: 
P
_user_specified_name86forward_lstm_3/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
јL
Ц
forward_lstm_3_while_body_64283:
6forward_lstm_3_while_forward_lstm_3_while_loop_counter@
<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations$
 forward_lstm_3_while_placeholder&
"forward_lstm_3_while_placeholder_1&
"forward_lstm_3_while_placeholder_2&
"forward_lstm_3_while_placeholder_39
5forward_lstm_3_while_forward_lstm_3_strided_slice_1_0u
qforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0:	АU
Aforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0:
ААO
@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0:	А!
forward_lstm_3_while_identity#
forward_lstm_3_while_identity_1#
forward_lstm_3_while_identity_2#
forward_lstm_3_while_identity_3#
forward_lstm_3_while_identity_4#
forward_lstm_3_while_identity_57
3forward_lstm_3_while_forward_lstm_3_strided_slice_1s
oforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource:	АS
?forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource:
ААM
>forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpҐ4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpҐ6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpЧ
Fforward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   с
8forward_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_3_while_placeholderOforward_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0µ
4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0б
%forward_lstm_3/while/lstm_cell/MatMulMatMul?forward_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0»
'forward_lstm_3/while/lstm_cell/MatMul_1MatMul"forward_lstm_3_while_placeholder_2>forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¬
"forward_lstm_3/while/lstm_cell/addAddV2/forward_lstm_3/while/lstm_cell/MatMul:product:01forward_lstm_3/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ћ
&forward_lstm_3/while/lstm_cell/BiasAddBiasAdd&forward_lstm_3/while/lstm_cell/add:z:0=forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
.forward_lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ч
$forward_lstm_3/while/lstm_cell/splitSplit7forward_lstm_3/while/lstm_cell/split/split_dim:output:0/forward_lstm_3/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitУ
&forward_lstm_3/while/lstm_cell/SigmoidSigmoid-forward_lstm_3/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
(forward_lstm_3/while/lstm_cell/Sigmoid_1Sigmoid-forward_lstm_3/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЃ
"forward_lstm_3/while/lstm_cell/mulMul,forward_lstm_3/while/lstm_cell/Sigmoid_1:y:0"forward_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€АН
#forward_lstm_3/while/lstm_cell/ReluRelu-forward_lstm_3/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€Аљ
$forward_lstm_3/while/lstm_cell/mul_1Mul*forward_lstm_3/while/lstm_cell/Sigmoid:y:01forward_lstm_3/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
$forward_lstm_3/while/lstm_cell/add_1AddV2&forward_lstm_3/while/lstm_cell/mul:z:0(forward_lstm_3/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
(forward_lstm_3/while/lstm_cell/Sigmoid_2Sigmoid-forward_lstm_3/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АК
%forward_lstm_3/while/lstm_cell/Relu_1Relu(forward_lstm_3/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЅ
$forward_lstm_3/while/lstm_cell/mul_2Mul,forward_lstm_3/while/lstm_cell/Sigmoid_2:y:03forward_lstm_3/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
?forward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¶
9forward_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_3_while_placeholder_1Hforward_lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0(forward_lstm_3/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“\
forward_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Й
forward_lstm_3/while/addAddV2 forward_lstm_3_while_placeholder#forward_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_3/while/add_1AddV26forward_lstm_3_while_forward_lstm_3_while_loop_counter%forward_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: Ж
forward_lstm_3/while/IdentityIdentityforward_lstm_3/while/add_1:z:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: ¶
forward_lstm_3/while/Identity_1Identity<forward_lstm_3_while_forward_lstm_3_while_maximum_iterations^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: Ж
forward_lstm_3/while/Identity_2Identityforward_lstm_3/while/add:z:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: ≥
forward_lstm_3/while/Identity_3IdentityIforward_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_3/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_3/while/Identity_4Identity(forward_lstm_3/while/lstm_cell/mul_2:z:0^forward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А§
forward_lstm_3/while/Identity_5Identity(forward_lstm_3/while/lstm_cell/add_1:z:0^forward_lstm_3/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Ая
forward_lstm_3/while/NoOpNoOp6^forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp5^forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp7^forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "l
3forward_lstm_3_while_forward_lstm_3_strided_slice_15forward_lstm_3_while_forward_lstm_3_strided_slice_1_0"G
forward_lstm_3_while_identity&forward_lstm_3/while/Identity:output:0"K
forward_lstm_3_while_identity_1(forward_lstm_3/while/Identity_1:output:0"K
forward_lstm_3_while_identity_2(forward_lstm_3/while/Identity_2:output:0"K
forward_lstm_3_while_identity_3(forward_lstm_3/while/Identity_3:output:0"K
forward_lstm_3_while_identity_4(forward_lstm_3/while/Identity_4:output:0"K
forward_lstm_3_while_identity_5(forward_lstm_3/while/Identity_5:output:0"В
>forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource@forward_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0"Д
?forward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resourceAforward_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0"А
=forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource?forward_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0"д
oforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensorqforward_lstm_3_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2n
5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp5forward_lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp2l
4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp4forward_lstm_3/while/lstm_cell/MatMul/ReadVariableOp2p
6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp6forward_lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_3/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_3/strided_slice_1:nj

_output_shapes
: 
P
_user_specified_name86forward_lstm_3/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
њ
у
)__inference_lstm_cell_layer_call_fn_67194

inputs
states_0
states_1
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_62541p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states_1:%!

_user_specified_name67182:%!

_user_specified_name67184:%!

_user_specified_name67186
–
_
C__inference_lambda_3_layer_call_and_return_conditional_losses_64674

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¶љ
Ф
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65322
inputs_0J
7forward_lstm_3_lstm_cell_matmul_readvariableop_resource:	АM
9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource:
ААG
8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource:	АK
8backward_lstm_3_lstm_cell_matmul_readvariableop_resource:	АN
:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource:
ААH
9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpҐ/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpҐ1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpҐbackward_lstm_3/whileҐ/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpҐ.forward_lstm_3/lstm_cell/MatMul/ReadVariableOpҐ0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpҐforward_lstm_3/whileZ
forward_lstm_3/ShapeShapeinputs_0*
T0*
_output_shapes
::нѕl
"forward_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
forward_lstm_3/strided_sliceStridedSliceforward_lstm_3/Shape:output:0+forward_lstm_3/strided_slice/stack:output:0-forward_lstm_3/strided_slice/stack_1:output:0-forward_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А†
forward_lstm_3/zeros/packedPack%forward_lstm_3/strided_slice:output:0&forward_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
forward_lstm_3/zerosFill$forward_lstm_3/zeros/packed:output:0#forward_lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
forward_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А§
forward_lstm_3/zeros_1/packedPack%forward_lstm_3/strided_slice:output:0(forward_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    †
forward_lstm_3/zeros_1Fill&forward_lstm_3/zeros_1/packed:output:0%forward_lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
forward_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
forward_lstm_3/transpose	Transposeinputs_0&forward_lstm_3/transpose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€p
forward_lstm_3/Shape_1Shapeforward_lstm_3/transpose:y:0*
T0*
_output_shapes
::нѕn
$forward_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
forward_lstm_3/strided_slice_1StridedSliceforward_lstm_3/Shape_1:output:0-forward_lstm_3/strided_slice_1/stack:output:0/forward_lstm_3/strided_slice_1/stack_1:output:0/forward_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€б
forward_lstm_3/TensorArrayV2TensorListReserve3forward_lstm_3/TensorArrayV2/element_shape:output:0'forward_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Х
Dforward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€Н
6forward_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_3/transpose:y:0Mforward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“n
$forward_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
forward_lstm_3/strided_slice_2StridedSliceforward_lstm_3/transpose:y:0-forward_lstm_3/strided_slice_2/stack:output:0/forward_lstm_3/strided_slice_2/stack_1:output:0/forward_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_maskІ
.forward_lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOp7forward_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0љ
forward_lstm_3/lstm_cell/MatMulMatMul'forward_lstm_3/strided_slice_2:output:06forward_lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ађ
0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ј
!forward_lstm_3/lstm_cell/MatMul_1MatMulforward_lstm_3/zeros:output:08forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А∞
forward_lstm_3/lstm_cell/addAddV2)forward_lstm_3/lstm_cell/MatMul:product:0+forward_lstm_3/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А•
/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0є
 forward_lstm_3/lstm_cell/BiasAddBiasAdd forward_lstm_3/lstm_cell/add:z:07forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аj
(forward_lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
forward_lstm_3/lstm_cell/splitSplit1forward_lstm_3/lstm_cell/split/split_dim:output:0)forward_lstm_3/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЗ
 forward_lstm_3/lstm_cell/SigmoidSigmoid'forward_lstm_3/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
"forward_lstm_3/lstm_cell/Sigmoid_1Sigmoid'forward_lstm_3/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЯ
forward_lstm_3/lstm_cell/mulMul&forward_lstm_3/lstm_cell/Sigmoid_1:y:0forward_lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
forward_lstm_3/lstm_cell/ReluRelu'forward_lstm_3/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЂ
forward_lstm_3/lstm_cell/mul_1Mul$forward_lstm_3/lstm_cell/Sigmoid:y:0+forward_lstm_3/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А†
forward_lstm_3/lstm_cell/add_1AddV2 forward_lstm_3/lstm_cell/mul:z:0"forward_lstm_3/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
"forward_lstm_3/lstm_cell/Sigmoid_2Sigmoid'forward_lstm_3/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А~
forward_lstm_3/lstm_cell/Relu_1Relu"forward_lstm_3/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аѓ
forward_lstm_3/lstm_cell/mul_2Mul&forward_lstm_3/lstm_cell/Sigmoid_2:y:0-forward_lstm_3/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А}
,forward_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   m
+forward_lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :т
forward_lstm_3/TensorArrayV2_1TensorListReserve5forward_lstm_3/TensorArrayV2_1/element_shape:output:04forward_lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“U
forward_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€c
!forward_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ∞
forward_lstm_3/whileWhile*forward_lstm_3/while/loop_counter:output:00forward_lstm_3/while/maximum_iterations:output:0forward_lstm_3/time:output:0'forward_lstm_3/TensorArrayV2_1:handle:0forward_lstm_3/zeros:output:0forward_lstm_3/zeros_1:output:0'forward_lstm_3/strided_slice_1:output:0Fforward_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_3_lstm_cell_matmul_readvariableop_resource9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*+
body#R!
forward_lstm_3_while_body_65092*+
cond#R!
forward_lstm_3_while_cond_65091*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Р
?forward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Д
1forward_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_3/while:output:3Hforward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsw
$forward_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€p
&forward_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_3/strided_slice_3StridedSlice:forward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_3/strided_slice_3/stack:output:0/forward_lstm_3/strided_slice_3/stack_1:output:0/forward_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maskt
forward_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ƒ
forward_lstm_3/transpose_1	Transpose:forward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Аj
forward_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    [
backward_lstm_3/ShapeShapeinputs_0*
T0*
_output_shapes
::нѕm
#backward_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
backward_lstm_3/strided_sliceStridedSlicebackward_lstm_3/Shape:output:0,backward_lstm_3/strided_slice/stack:output:0.backward_lstm_3/strided_slice/stack_1:output:0.backward_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А£
backward_lstm_3/zeros/packedPack&backward_lstm_3/strided_slice:output:0'backward_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
backward_lstm_3/zerosFill%backward_lstm_3/zeros/packed:output:0$backward_lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
 backward_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :АІ
backward_lstm_3/zeros_1/packedPack&backward_lstm_3/strided_slice:output:0)backward_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_3/zeros_1Fill'backward_lstm_3/zeros_1/packed:output:0&backward_lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
backward_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          °
backward_lstm_3/transpose	Transposeinputs_0'backward_lstm_3/transpose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€r
backward_lstm_3/Shape_1Shapebackward_lstm_3/transpose:y:0*
T0*
_output_shapes
::нѕo
%backward_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
backward_lstm_3/strided_slice_1StridedSlice backward_lstm_3/Shape_1:output:0.backward_lstm_3/strided_slice_1/stack:output:00backward_lstm_3/strided_slice_1/stack_1:output:00backward_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€д
backward_lstm_3/TensorArrayV2TensorListReserve4backward_lstm_3/TensorArrayV2/element_shape:output:0(backward_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“h
backward_lstm_3/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ґ
backward_lstm_3/ReverseV2	ReverseV2backward_lstm_3/transpose:y:0'backward_lstm_3/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€Ц
Ebackward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€Х
7backward_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_3/ReverseV2:output:0Nbackward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“o
%backward_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
backward_lstm_3/strided_slice_2StridedSlicebackward_lstm_3/transpose:y:0.backward_lstm_3/strided_slice_2/stack:output:00backward_lstm_3/strided_slice_2/stack_1:output:00backward_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_mask©
/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOp8backward_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ј
 backward_lstm_3/lstm_cell/MatMulMatMul(backward_lstm_3/strided_slice_2:output:07backward_lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ї
"backward_lstm_3/lstm_cell/MatMul_1MatMulbackward_lstm_3/zeros:output:09backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
backward_lstm_3/lstm_cell/addAddV2*backward_lstm_3/lstm_cell/MatMul:product:0,backward_lstm_3/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АІ
0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
!backward_lstm_3/lstm_cell/BiasAddBiasAdd!backward_lstm_3/lstm_cell/add:z:08backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
)backward_lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
backward_lstm_3/lstm_cell/splitSplit2backward_lstm_3/lstm_cell/split/split_dim:output:0*backward_lstm_3/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЙ
!backward_lstm_3/lstm_cell/SigmoidSigmoid(backward_lstm_3/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
#backward_lstm_3/lstm_cell/Sigmoid_1Sigmoid(backward_lstm_3/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АҐ
backward_lstm_3/lstm_cell/mulMul'backward_lstm_3/lstm_cell/Sigmoid_1:y:0 backward_lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
backward_lstm_3/lstm_cell/ReluRelu(backward_lstm_3/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЃ
backward_lstm_3/lstm_cell/mul_1Mul%backward_lstm_3/lstm_cell/Sigmoid:y:0,backward_lstm_3/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А£
backward_lstm_3/lstm_cell/add_1AddV2!backward_lstm_3/lstm_cell/mul:z:0#backward_lstm_3/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
#backward_lstm_3/lstm_cell/Sigmoid_2Sigmoid(backward_lstm_3/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АА
 backward_lstm_3/lstm_cell/Relu_1Relu#backward_lstm_3/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
backward_lstm_3/lstm_cell/mul_2Mul'backward_lstm_3/lstm_cell/Sigmoid_2:y:0.backward_lstm_3/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А~
-backward_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   n
,backward_lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :х
backward_lstm_3/TensorArrayV2_1TensorListReserve6backward_lstm_3/TensorArrayV2_1/element_shape:output:05backward_lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“V
backward_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€d
"backward_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Њ
backward_lstm_3/whileWhile+backward_lstm_3/while/loop_counter:output:01backward_lstm_3/while/maximum_iterations:output:0backward_lstm_3/time:output:0(backward_lstm_3/TensorArrayV2_1:handle:0backward_lstm_3/zeros:output:0 backward_lstm_3/zeros_1:output:0(backward_lstm_3/strided_slice_1:output:0Gbackward_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_3_lstm_cell_matmul_readvariableop_resource:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 backward_lstm_3_while_body_65235*,
cond$R"
 backward_lstm_3_while_cond_65234*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations С
@backward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   З
2backward_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_3/while:output:3Ibackward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsx
%backward_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€q
'backward_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
backward_lstm_3/strided_slice_3StridedSlice;backward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_3/strided_slice_3/stack:output:00backward_lstm_3/strided_slice_3/stack_1:output:00backward_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_masku
 backward_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
backward_lstm_3/transpose_1	Transpose;backward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Аk
backward_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ј
concatConcatV2'forward_lstm_3/strided_slice_3:output:0(backward_lstm_3/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€А_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АА
NoOpNoOp1^backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp0^backward_lstm_3/lstm_cell/MatMul/ReadVariableOp2^backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_3/while0^forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp/^forward_lstm_3/lstm_cell/MatMul/ReadVariableOp1^forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_3/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : 2d
0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp2b
/backward_lstm_3/lstm_cell/MatMul/ReadVariableOp/backward_lstm_3/lstm_cell/MatMul/ReadVariableOp2f
1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp2.
backward_lstm_3/whilebackward_lstm_3/while2b
/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp2`
.forward_lstm_3/lstm_cell/MatMul/ReadVariableOp.forward_lstm_3/lstm_cell/MatMul/ReadVariableOp2d
0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp2,
forward_lstm_3/whileforward_lstm_3/while:g c
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ЃЉ
Т
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_64184

inputsJ
7forward_lstm_3_lstm_cell_matmul_readvariableop_resource:	АM
9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource:
ААG
8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource:	АK
8backward_lstm_3_lstm_cell_matmul_readvariableop_resource:	АN
:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource:
ААH
9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpҐ/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpҐ1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpҐbackward_lstm_3/whileҐ/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpҐ.forward_lstm_3/lstm_cell/MatMul/ReadVariableOpҐ0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpҐforward_lstm_3/whileX
forward_lstm_3/ShapeShapeinputs*
T0*
_output_shapes
::нѕl
"forward_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
forward_lstm_3/strided_sliceStridedSliceforward_lstm_3/Shape:output:0+forward_lstm_3/strided_slice/stack:output:0-forward_lstm_3/strided_slice/stack_1:output:0-forward_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А†
forward_lstm_3/zeros/packedPack%forward_lstm_3/strided_slice:output:0&forward_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
forward_lstm_3/zerosFill$forward_lstm_3/zeros/packed:output:0#forward_lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
forward_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А§
forward_lstm_3/zeros_1/packedPack%forward_lstm_3/strided_slice:output:0(forward_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    †
forward_lstm_3/zeros_1Fill&forward_lstm_3/zeros_1/packed:output:0%forward_lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
forward_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Л
forward_lstm_3/transpose	Transposeinputs&forward_lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€p
forward_lstm_3/Shape_1Shapeforward_lstm_3/transpose:y:0*
T0*
_output_shapes
::нѕn
$forward_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
forward_lstm_3/strided_slice_1StridedSliceforward_lstm_3/Shape_1:output:0-forward_lstm_3/strided_slice_1/stack:output:0/forward_lstm_3/strided_slice_1/stack_1:output:0/forward_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€б
forward_lstm_3/TensorArrayV2TensorListReserve3forward_lstm_3/TensorArrayV2/element_shape:output:0'forward_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Х
Dforward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Н
6forward_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_3/transpose:y:0Mforward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“n
$forward_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:і
forward_lstm_3/strided_slice_2StridedSliceforward_lstm_3/transpose:y:0-forward_lstm_3/strided_slice_2/stack:output:0/forward_lstm_3/strided_slice_2/stack_1:output:0/forward_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskІ
.forward_lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOp7forward_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0љ
forward_lstm_3/lstm_cell/MatMulMatMul'forward_lstm_3/strided_slice_2:output:06forward_lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ађ
0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ј
!forward_lstm_3/lstm_cell/MatMul_1MatMulforward_lstm_3/zeros:output:08forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А∞
forward_lstm_3/lstm_cell/addAddV2)forward_lstm_3/lstm_cell/MatMul:product:0+forward_lstm_3/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А•
/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0є
 forward_lstm_3/lstm_cell/BiasAddBiasAdd forward_lstm_3/lstm_cell/add:z:07forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аj
(forward_lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
forward_lstm_3/lstm_cell/splitSplit1forward_lstm_3/lstm_cell/split/split_dim:output:0)forward_lstm_3/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЗ
 forward_lstm_3/lstm_cell/SigmoidSigmoid'forward_lstm_3/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
"forward_lstm_3/lstm_cell/Sigmoid_1Sigmoid'forward_lstm_3/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АЯ
forward_lstm_3/lstm_cell/mulMul&forward_lstm_3/lstm_cell/Sigmoid_1:y:0forward_lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
forward_lstm_3/lstm_cell/ReluRelu'forward_lstm_3/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЂ
forward_lstm_3/lstm_cell/mul_1Mul$forward_lstm_3/lstm_cell/Sigmoid:y:0+forward_lstm_3/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А†
forward_lstm_3/lstm_cell/add_1AddV2 forward_lstm_3/lstm_cell/mul:z:0"forward_lstm_3/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
"forward_lstm_3/lstm_cell/Sigmoid_2Sigmoid'forward_lstm_3/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А~
forward_lstm_3/lstm_cell/Relu_1Relu"forward_lstm_3/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аѓ
forward_lstm_3/lstm_cell/mul_2Mul&forward_lstm_3/lstm_cell/Sigmoid_2:y:0-forward_lstm_3/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А}
,forward_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   m
+forward_lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :т
forward_lstm_3/TensorArrayV2_1TensorListReserve5forward_lstm_3/TensorArrayV2_1/element_shape:output:04forward_lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“U
forward_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€c
!forward_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ∞
forward_lstm_3/whileWhile*forward_lstm_3/while/loop_counter:output:00forward_lstm_3/while/maximum_iterations:output:0forward_lstm_3/time:output:0'forward_lstm_3/TensorArrayV2_1:handle:0forward_lstm_3/zeros:output:0forward_lstm_3/zeros_1:output:0'forward_lstm_3/strided_slice_1:output:0Fforward_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_3_lstm_cell_matmul_readvariableop_resource9forward_lstm_3_lstm_cell_matmul_1_readvariableop_resource8forward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*+
body#R!
forward_lstm_3_while_body_63954*+
cond#R!
forward_lstm_3_while_cond_63953*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Р
?forward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Д
1forward_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_3/while:output:3Hforward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsw
$forward_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€p
&forward_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_3/strided_slice_3StridedSlice:forward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_3/strided_slice_3/stack:output:0/forward_lstm_3/strided_slice_3/stack_1:output:0/forward_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maskt
forward_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ƒ
forward_lstm_3/transpose_1	Transpose:forward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Аj
forward_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Y
backward_lstm_3/ShapeShapeinputs*
T0*
_output_shapes
::нѕm
#backward_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
backward_lstm_3/strided_sliceStridedSlicebackward_lstm_3/Shape:output:0,backward_lstm_3/strided_slice/stack:output:0.backward_lstm_3/strided_slice/stack_1:output:0.backward_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А£
backward_lstm_3/zeros/packedPack&backward_lstm_3/strided_slice:output:0'backward_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
backward_lstm_3/zerosFill%backward_lstm_3/zeros/packed:output:0$backward_lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
 backward_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :АІ
backward_lstm_3/zeros_1/packedPack&backward_lstm_3/strided_slice:output:0)backward_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_3/zeros_1Fill'backward_lstm_3/zeros_1/packed:output:0&backward_lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
backward_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
backward_lstm_3/transpose	Transposeinputs'backward_lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€r
backward_lstm_3/Shape_1Shapebackward_lstm_3/transpose:y:0*
T0*
_output_shapes
::нѕo
%backward_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
backward_lstm_3/strided_slice_1StridedSlice backward_lstm_3/Shape_1:output:0.backward_lstm_3/strided_slice_1/stack:output:00backward_lstm_3/strided_slice_1/stack_1:output:00backward_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€д
backward_lstm_3/TensorArrayV2TensorListReserve4backward_lstm_3/TensorArrayV2/element_shape:output:0(backward_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“h
backward_lstm_3/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_3/ReverseV2	ReverseV2backward_lstm_3/transpose:y:0'backward_lstm_3/ReverseV2/axis:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ц
Ebackward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Х
7backward_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_3/ReverseV2:output:0Nbackward_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“o
%backward_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
backward_lstm_3/strided_slice_2StridedSlicebackward_lstm_3/transpose:y:0.backward_lstm_3/strided_slice_2/stack:output:00backward_lstm_3/strided_slice_2/stack_1:output:00backward_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask©
/backward_lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOp8backward_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ј
 backward_lstm_3/lstm_cell/MatMulMatMul(backward_lstm_3/strided_slice_2:output:07backward_lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ї
"backward_lstm_3/lstm_cell/MatMul_1MatMulbackward_lstm_3/zeros:output:09backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
backward_lstm_3/lstm_cell/addAddV2*backward_lstm_3/lstm_cell/MatMul:product:0,backward_lstm_3/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АІ
0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
!backward_lstm_3/lstm_cell/BiasAddBiasAdd!backward_lstm_3/lstm_cell/add:z:08backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
)backward_lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
backward_lstm_3/lstm_cell/splitSplit2backward_lstm_3/lstm_cell/split/split_dim:output:0*backward_lstm_3/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitЙ
!backward_lstm_3/lstm_cell/SigmoidSigmoid(backward_lstm_3/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
#backward_lstm_3/lstm_cell/Sigmoid_1Sigmoid(backward_lstm_3/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АҐ
backward_lstm_3/lstm_cell/mulMul'backward_lstm_3/lstm_cell/Sigmoid_1:y:0 backward_lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
backward_lstm_3/lstm_cell/ReluRelu(backward_lstm_3/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АЃ
backward_lstm_3/lstm_cell/mul_1Mul%backward_lstm_3/lstm_cell/Sigmoid:y:0,backward_lstm_3/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А£
backward_lstm_3/lstm_cell/add_1AddV2!backward_lstm_3/lstm_cell/mul:z:0#backward_lstm_3/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
#backward_lstm_3/lstm_cell/Sigmoid_2Sigmoid(backward_lstm_3/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€АА
 backward_lstm_3/lstm_cell/Relu_1Relu#backward_lstm_3/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
backward_lstm_3/lstm_cell/mul_2Mul'backward_lstm_3/lstm_cell/Sigmoid_2:y:0.backward_lstm_3/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А~
-backward_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   n
,backward_lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :х
backward_lstm_3/TensorArrayV2_1TensorListReserve6backward_lstm_3/TensorArrayV2_1/element_shape:output:05backward_lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“V
backward_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€d
"backward_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Њ
backward_lstm_3/whileWhile+backward_lstm_3/while/loop_counter:output:01backward_lstm_3/while/maximum_iterations:output:0backward_lstm_3/time:output:0(backward_lstm_3/TensorArrayV2_1:handle:0backward_lstm_3/zeros:output:0 backward_lstm_3/zeros_1:output:0(backward_lstm_3/strided_slice_1:output:0Gbackward_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_3_lstm_cell_matmul_readvariableop_resource:backward_lstm_3_lstm_cell_matmul_1_readvariableop_resource9backward_lstm_3_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 backward_lstm_3_while_body_64097*,
cond$R"
 backward_lstm_3_while_cond_64096*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations С
@backward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   З
2backward_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_3/while:output:3Ibackward_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsx
%backward_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€q
'backward_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
backward_lstm_3/strided_slice_3StridedSlice;backward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_3/strided_slice_3/stack:output:00backward_lstm_3/strided_slice_3/stack_1:output:00backward_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_masku
 backward_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
backward_lstm_3/transpose_1	Transpose;backward_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€Аk
backward_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ј
concatConcatV2'forward_lstm_3/strided_slice_3:output:0(backward_lstm_3/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€А_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АА
NoOpNoOp1^backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp0^backward_lstm_3/lstm_cell/MatMul/ReadVariableOp2^backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_3/while0^forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp/^forward_lstm_3/lstm_cell/MatMul/ReadVariableOp1^forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_3/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2d
0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp0backward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp2b
/backward_lstm_3/lstm_cell/MatMul/ReadVariableOp/backward_lstm_3/lstm_cell/MatMul/ReadVariableOp2f
1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp1backward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp2.
backward_lstm_3/whilebackward_lstm_3/while2b
/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp/forward_lstm_3/lstm_cell/BiasAdd/ReadVariableOp2`
.forward_lstm_3/lstm_cell/MatMul/ReadVariableOp.forward_lstm_3/lstm_cell/MatMul/ReadVariableOp2d
0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp0forward_lstm_3/lstm_cell/MatMul_1/ReadVariableOp2,
forward_lstm_3/whileforward_lstm_3/while:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ѕ	
Њ
while_cond_66314
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_66314___redundant_placeholder03
/while_while_cond_66314___redundant_placeholder13
/while_while_cond_66314___redundant_placeholder23
/while_while_cond_66314___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ЧM
С
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_67030

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
АА8
)lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ж
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€е
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€Аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ё
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_66945*
condR
while_cond_66944*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
§:
ґ
while_body_63711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
АА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
АА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€ѓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€Аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Ы:
ґ
while_body_66798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
АА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
АА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€АБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€Аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€АР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€Аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€А£

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource"нL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Є
serving_default§
I
lambda_3_input7
 serving_default_lambda_3_input:0€€€€€€€€€;
dense_30
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Я©
Ѕ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
•
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
forward_layer
backward_layer"
_tf_keras_layer
ї
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias"
_tf_keras_layer
X
#0
$1
%2
&3
'4
(5
!6
"7"
trackable_list_wrapper
X
#0
$1
%2
&3
'4
(5
!6
"7"
trackable_list_wrapper
 "
trackable_list_wrapper
 
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
ы
.trace_0
/trace_12ƒ
D__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_64554
D__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_64575µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z.trace_0z/trace_1
±
0trace_0
1trace_12ъ
___inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_64214
___inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_64533µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z0trace_0z1trace_1
“Bѕ
 __inference__wrapped_model_62479lambda_3_input"Ш
С≤Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ь
2
_variables
3_iterations
4_learning_rate
5_index_dict
6
_momentums
7_velocities
8_update_step_xla"
experimentalOptimizer
,
9serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
√
?trace_0
@trace_12М
(__inference_lambda_3_layer_call_fn_64657
(__inference_lambda_3_layer_call_fn_64662µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsҐ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z?trace_0z@trace_1
щ
Atrace_0
Btrace_12¬
C__inference_lambda_3_layer_call_and_return_conditional_losses_64668
C__inference_lambda_3_layer_call_and_return_conditional_losses_64674µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsҐ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zAtrace_0zBtrace_1
J
#0
$1
%2
&3
'4
(5"
trackable_list_wrapper
J
#0
$1
%2
&3
'4
(5"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Н
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32Ґ
/__inference_bidirectional_3_layer_call_fn_64691
/__inference_bidirectional_3_layer_call_fn_64708
/__inference_bidirectional_3_layer_call_fn_64725
/__inference_bidirectional_3_layer_call_fn_64742џ
‘≤–
FullArgSpecG
args?Ъ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsҐ
p 

 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
щ
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32О
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65032
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65322
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65612
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65902џ
‘≤–
FullArgSpecG
args?Ъ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsҐ
p 

 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zLtrace_0zMtrace_1zNtrace_2zOtrace_3
Џ
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_random_generator
Wcell
X
state_spec"
_tf_keras_rnn_layer
Џ
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses
__random_generator
`cell
a
state_spec"
_tf_keras_rnn_layer
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
б
gtrace_02ƒ
'__inference_dense_3_layer_call_fn_65911Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zgtrace_0
ь
htrace_02я
B__inference_dense_3_layer_call_and_return_conditional_losses_65921Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zhtrace_0
!:	А2dense_3/kernel
:2dense_3/bias
B:@	А2/bidirectional_3/forward_lstm_3/lstm_cell/kernel
M:K
АА29bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel
<::А2-bidirectional_3/forward_lstm_3/lstm_cell/bias
C:A	А20bidirectional_3/backward_lstm_3/lstm_cell/kernel
N:L
АА2:bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel
=:;А2.bidirectional_3/backward_lstm_3/lstm_cell/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
i0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
КBЗ
D__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_64554lambda_3_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
КBЗ
D__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_64575lambda_3_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
•BҐ
___inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_64214lambda_3_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
•BҐ
___inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_64533lambda_3_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю
30
j1
k2
l3
m4
n5
o6
p7
q8
r9
s10
t11
u12
v13
w14
x15
y16"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
X
j0
l1
n2
p3
r4
t5
v6
x7"
trackable_list_wrapper
X
k0
m1
o2
q3
s4
u5
w6
y7"
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
ЁBЏ
#__inference_signature_wrapper_64652lambda_3_input"†
Щ≤Х
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 #

kwonlyargsЪ
jlambda_3_input
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
жBг
(__inference_lambda_3_layer_call_fn_64657inputs"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
жBг
(__inference_lambda_3_layer_call_fn_64662inputs"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
C__inference_lambda_3_layer_call_and_return_conditional_losses_64668inputs"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
C__inference_lambda_3_layer_call_and_return_conditional_losses_64674inputs"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
НBК
/__inference_bidirectional_3_layer_call_fn_64691inputs_0" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
НBК
/__inference_bidirectional_3_layer_call_fn_64708inputs_0" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЛBИ
/__inference_bidirectional_3_layer_call_fn_64725inputs" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЛBИ
/__inference_bidirectional_3_layer_call_fn_64742inputs" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®B•
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65032inputs_0" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®B•
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65322inputs_0" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
¶B£
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65612inputs" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
¶B£
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65902inputs" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
5
#0
$1
%2"
trackable_list_wrapper
5
#0
$1
%2"
trackable_list_wrapper
 "
trackable_list_wrapper
є

zstates
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
А
Аtrace_0
Бtrace_1
Вtrace_2
Гtrace_32Н
.__inference_forward_lstm_3_layer_call_fn_65932
.__inference_forward_lstm_3_layer_call_fn_65943
.__inference_forward_lstm_3_layer_call_fn_65954
.__inference_forward_lstm_3_layer_call_fn_65965 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zАtrace_0zБtrace_1zВtrace_2zГtrace_3
м
Дtrace_0
Еtrace_1
Жtrace_2
Зtrace_32щ
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66110
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66255
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66400
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66545 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zДtrace_0zЕtrace_1zЖtrace_2zЗtrace_3
"
_generic_user_object
А
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
О_random_generator
П
state_size

#kernel
$recurrent_kernel
%bias"
_tf_keras_layer
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
њ
Рstates
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
Д
Цtrace_0
Чtrace_1
Шtrace_2
Щtrace_32С
/__inference_backward_lstm_3_layer_call_fn_66556
/__inference_backward_lstm_3_layer_call_fn_66567
/__inference_backward_lstm_3_layer_call_fn_66578
/__inference_backward_lstm_3_layer_call_fn_66589 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЦtrace_0zЧtrace_1zШtrace_2zЩtrace_3
р
Ъtrace_0
Ыtrace_1
Ьtrace_2
Эtrace_32э
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_66736
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_66883
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_67030
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_67177 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЪtrace_0zЫtrace_1zЬtrace_2zЭtrace_3
"
_generic_user_object
А
Ю	variables
Яtrainable_variables
†regularization_losses
°	keras_api
Ґ__call__
+£&call_and_return_all_conditional_losses
§_random_generator
•
state_size

&kernel
'recurrent_kernel
(bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
—Bќ
'__inference_dense_3_layer_call_fn_65911inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
мBй
B__inference_dense_3_layer_call_and_return_conditional_losses_65921inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
¶	variables
І	keras_api

®total

©count"
_tf_keras_metric
G:E	А26Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/kernel
G:E	А26Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/kernel
R:P
АА2@Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel
R:P
АА2@Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/recurrent_kernel
A:?А24Adam/m/bidirectional_3/forward_lstm_3/lstm_cell/bias
A:?А24Adam/v/bidirectional_3/forward_lstm_3/lstm_cell/bias
H:F	А27Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/kernel
H:F	А27Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/kernel
S:Q
АА2AAdam/m/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel
S:Q
АА2AAdam/v/bidirectional_3/backward_lstm_3/lstm_cell/recurrent_kernel
B:@А25Adam/m/bidirectional_3/backward_lstm_3/lstm_cell/bias
B:@А25Adam/v/bidirectional_3/backward_lstm_3/lstm_cell/bias
&:$	А2Adam/m/dense_3/kernel
&:$	А2Adam/v/dense_3/kernel
:2Adam/m/dense_3/bias
:2Adam/v/dense_3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
W0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
€Bь
.__inference_forward_lstm_3_layer_call_fn_65932inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
.__inference_forward_lstm_3_layer_call_fn_65943inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
.__inference_forward_lstm_3_layer_call_fn_65954inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
.__inference_forward_lstm_3_layer_call_fn_65965inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66110inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66255inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66400inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66545inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
5
#0
$1
%2"
trackable_list_wrapper
5
#0
$1
%2"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
™non_trainable_variables
Ђlayers
ђmetrics
 ≠layer_regularization_losses
Ѓlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
«
ѓtrace_0
∞trace_12М
)__inference_lstm_cell_layer_call_fn_67194
)__inference_lstm_cell_layer_call_fn_67211≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zѓtrace_0z∞trace_1
э
±trace_0
≤trace_12¬
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67243
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67275≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z±trace_0z≤trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
`0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
АBэ
/__inference_backward_lstm_3_layer_call_fn_66556inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
/__inference_backward_lstm_3_layer_call_fn_66567inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
юBы
/__inference_backward_lstm_3_layer_call_fn_66578inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
юBы
/__inference_backward_lstm_3_layer_call_fn_66589inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЫBШ
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_66736inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЫBШ
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_66883inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_67030inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_67177inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
≥non_trainable_variables
іlayers
µmetrics
 ґlayer_regularization_losses
Јlayer_metrics
Ю	variables
Яtrainable_variables
†regularization_losses
Ґ__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
«
Єtrace_0
єtrace_12М
)__inference_lstm_cell_layer_call_fn_67292
)__inference_lstm_cell_layer_call_fn_67309≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄtrace_0zєtrace_1
э
Їtrace_0
їtrace_12¬
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67341
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67373≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЇtrace_0zїtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
0
®0
©1"
trackable_list_wrapper
.
¶	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
эBъ
)__inference_lstm_cell_layer_call_fn_67194inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
)__inference_lstm_cell_layer_call_fn_67211inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67243inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67275inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
эBъ
)__inference_lstm_cell_layer_call_fn_67292inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
)__inference_lstm_cell_layer_call_fn_67309inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67341inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67373inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 Ъ
 __inference__wrapped_model_62479v#$%&'(!"7Ґ4
-Ґ*
(К%
lambda_3_input€€€€€€€€€
™ "1™.
,
dense_3!К
dense_3€€€€€€€€€‘
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_66736Е&'(OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ ‘
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_66883Е&'(OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ ÷
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_67030З&'(QҐN
GҐD
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
p

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ ÷
J__inference_backward_lstm_3_layer_call_and_return_conditional_losses_67177З&'(QҐN
GҐD
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
p 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ ≠
/__inference_backward_lstm_3_layer_call_fn_66556z&'(OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ ""К
unknown€€€€€€€€€А≠
/__inference_backward_lstm_3_layer_call_fn_66567z&'(OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ ""К
unknown€€€€€€€€€Аѓ
/__inference_backward_lstm_3_layer_call_fn_66578|&'(QҐN
GҐD
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
p

 
™ ""К
unknown€€€€€€€€€Аѓ
/__inference_backward_lstm_3_layer_call_fn_66589|&'(QҐN
GҐD
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
p 

 
™ ""К
unknown€€€€€€€€€Ад
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65032Х#$%&'(\ҐY
RҐO
=Ъ:
8К5
inputs_0'€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 

 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ д
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65322Х#$%&'(\ҐY
RҐO
=Ъ:
8К5
inputs_0'€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 

 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ  
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65612|#$%&'(CҐ@
9Ґ6
$К!
inputs€€€€€€€€€
p

 

 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ  
J__inference_bidirectional_3_layer_call_and_return_conditional_losses_65902|#$%&'(CҐ@
9Ґ6
$К!
inputs€€€€€€€€€
p 

 

 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ Њ
/__inference_bidirectional_3_layer_call_fn_64691К#$%&'(\ҐY
RҐO
=Ъ:
8К5
inputs_0'€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 

 

 
™ ""К
unknown€€€€€€€€€АЊ
/__inference_bidirectional_3_layer_call_fn_64708К#$%&'(\ҐY
RҐO
=Ъ:
8К5
inputs_0'€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 

 

 
™ ""К
unknown€€€€€€€€€А§
/__inference_bidirectional_3_layer_call_fn_64725q#$%&'(CҐ@
9Ґ6
$К!
inputs€€€€€€€€€
p

 

 

 
™ ""К
unknown€€€€€€€€€А§
/__inference_bidirectional_3_layer_call_fn_64742q#$%&'(CҐ@
9Ґ6
$К!
inputs€€€€€€€€€
p 

 

 

 
™ ""К
unknown€€€€€€€€€А™
B__inference_dense_3_layer_call_and_return_conditional_losses_65921d!"0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Д
'__inference_dense_3_layer_call_fn_65911Y!"0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "!К
unknown€€€€€€€€€”
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66110Е#$%OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ ”
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66255Е#$%OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ ’
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66400З#$%QҐN
GҐD
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
p

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ ’
I__inference_forward_lstm_3_layer_call_and_return_conditional_losses_66545З#$%QҐN
GҐD
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
p 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ ђ
.__inference_forward_lstm_3_layer_call_fn_65932z#$%OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ ""К
unknown€€€€€€€€€Ађ
.__inference_forward_lstm_3_layer_call_fn_65943z#$%OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ ""К
unknown€€€€€€€€€АЃ
.__inference_forward_lstm_3_layer_call_fn_65954|#$%QҐN
GҐD
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
p

 
™ ""К
unknown€€€€€€€€€АЃ
.__inference_forward_lstm_3_layer_call_fn_65965|#$%QҐN
GҐD
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
p 

 
™ ""К
unknown€€€€€€€€€А≤
C__inference_lambda_3_layer_call_and_return_conditional_losses_64668k7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ ≤
C__inference_lambda_3_layer_call_and_return_conditional_losses_64674k7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ М
(__inference_lambda_3_layer_call_fn_64657`7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p
™ "%К"
unknown€€€€€€€€€М
(__inference_lambda_3_layer_call_fn_64662`7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p 
™ "%К"
unknown€€€€€€€€€г
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67243Ъ#$%ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€А
#К 
states_1€€€€€€€€€А
p
™ "НҐЙ
БҐ~
%К"

tensor_0_0€€€€€€€€€А
UЪR
'К$
tensor_0_1_0€€€€€€€€€А
'К$
tensor_0_1_1€€€€€€€€€А
Ъ г
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67275Ъ#$%ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€А
#К 
states_1€€€€€€€€€А
p 
™ "НҐЙ
БҐ~
%К"

tensor_0_0€€€€€€€€€А
UЪR
'К$
tensor_0_1_0€€€€€€€€€А
'К$
tensor_0_1_1€€€€€€€€€А
Ъ г
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67341Ъ&'(ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€А
#К 
states_1€€€€€€€€€А
p
™ "НҐЙ
БҐ~
%К"

tensor_0_0€€€€€€€€€А
UЪR
'К$
tensor_0_1_0€€€€€€€€€А
'К$
tensor_0_1_1€€€€€€€€€А
Ъ г
D__inference_lstm_cell_layer_call_and_return_conditional_losses_67373Ъ&'(ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€А
#К 
states_1€€€€€€€€€А
p 
™ "НҐЙ
БҐ~
%К"

tensor_0_0€€€€€€€€€А
UЪR
'К$
tensor_0_1_0€€€€€€€€€А
'К$
tensor_0_1_1€€€€€€€€€А
Ъ µ
)__inference_lstm_cell_layer_call_fn_67194З#$%ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€А
#К 
states_1€€€€€€€€€А
p
™ "{Ґx
#К 
tensor_0€€€€€€€€€А
QЪN
%К"

tensor_1_0€€€€€€€€€А
%К"

tensor_1_1€€€€€€€€€Аµ
)__inference_lstm_cell_layer_call_fn_67211З#$%ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€А
#К 
states_1€€€€€€€€€А
p 
™ "{Ґx
#К 
tensor_0€€€€€€€€€А
QЪN
%К"

tensor_1_0€€€€€€€€€А
%К"

tensor_1_1€€€€€€€€€Аµ
)__inference_lstm_cell_layer_call_fn_67292З&'(ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€А
#К 
states_1€€€€€€€€€А
p
™ "{Ґx
#К 
tensor_0€€€€€€€€€А
QЪN
%К"

tensor_1_0€€€€€€€€€А
%К"

tensor_1_1€€€€€€€€€Аµ
)__inference_lstm_cell_layer_call_fn_67309З&'(ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€А
#К 
states_1€€€€€€€€€А
p 
™ "{Ґx
#К 
tensor_0€€€€€€€€€А
QЪN
%К"

tensor_1_0€€€€€€€€€А
%К"

tensor_1_1€€€€€€€€€А№
___inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_64214y#$%&'(!"?Ґ<
5Ґ2
(К%
lambda_3_input€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ №
___inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_64533y#$%&'(!"?Ґ<
5Ґ2
(К%
lambda_3_input€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ґ
D__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_64554n#$%&'(!"?Ґ<
5Ґ2
(К%
lambda_3_input€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€ґ
D__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_64575n#$%&'(!"?Ґ<
5Ґ2
(К%
lambda_3_input€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€∞
#__inference_signature_wrapper_64652И#$%&'(!"IҐF
Ґ 
?™<
:
lambda_3_input(К%
lambda_3_input€€€€€€€€€"1™.
,
dense_3!К
dense_3€€€€€€€€€