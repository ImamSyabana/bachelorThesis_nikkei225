цл2
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
И"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48’Ґ0
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
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_1/bias/*
dtype0*
shape:*$
shared_nameAdam/v/dense_1/bias
w
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes
:*
dtype0
§
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_1/bias/*
dtype0*
shape:*$
shared_nameAdam/m/dense_1/bias
w
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes
:*
dtype0
ѓ
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_1/kernel/*
dtype0*
shape:	ј*&
shared_nameAdam/v/dense_1/kernel
А
)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes
:	ј*
dtype0
ѓ
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_1/kernel/*
dtype0*
shape:	ј*&
shared_nameAdam/m/dense_1/kernel
А
)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes
:	ј*
dtype0
Л
5Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/biasVarHandleOp*
_output_shapes
: *F

debug_name86Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/bias/*
dtype0*
shape:А*F
shared_name75Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/bias
Љ
IAdam/v/bidirectional_1/backward_lstm_1/lstm_cell/bias/Read/ReadVariableOpReadVariableOp5Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/bias*
_output_shapes	
:А*
dtype0
Л
5Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/biasVarHandleOp*
_output_shapes
: *F

debug_name86Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/bias/*
dtype0*
shape:А*F
shared_name75Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/bias
Љ
IAdam/m/bidirectional_1/backward_lstm_1/lstm_cell/bias/Read/ReadVariableOpReadVariableOp5Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/bias*
_output_shapes	
:А*
dtype0
і
AAdam/v/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *R

debug_nameDBAdam/v/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel/*
dtype0*
shape:
аА*R
shared_nameCAAdam/v/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel
ў
UAdam/v/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpAAdam/v/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel* 
_output_shapes
:
аА*
dtype0
і
AAdam/m/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *R

debug_nameDBAdam/m/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel/*
dtype0*
shape:
аА*R
shared_nameCAAdam/m/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel
ў
UAdam/m/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpAAdam/m/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel* 
_output_shapes
:
аА*
dtype0
Х
7Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/kernelVarHandleOp*
_output_shapes
: *H

debug_name:8Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/kernel/*
dtype0*
shape:	А*H
shared_name97Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/kernel
ƒ
KAdam/v/bidirectional_1/backward_lstm_1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp7Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/kernel*
_output_shapes
:	А*
dtype0
Х
7Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/kernelVarHandleOp*
_output_shapes
: *H

debug_name:8Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/kernel/*
dtype0*
shape:	А*H
shared_name97Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/kernel
ƒ
KAdam/m/bidirectional_1/backward_lstm_1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp7Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/kernel*
_output_shapes
:	А*
dtype0
И
4Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/biasVarHandleOp*
_output_shapes
: *E

debug_name75Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/bias/*
dtype0*
shape:А*E
shared_name64Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/bias
Ї
HAdam/v/bidirectional_1/forward_lstm_1/lstm_cell/bias/Read/ReadVariableOpReadVariableOp4Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/bias*
_output_shapes	
:А*
dtype0
И
4Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/biasVarHandleOp*
_output_shapes
: *E

debug_name75Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/bias/*
dtype0*
shape:А*E
shared_name64Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/bias
Ї
HAdam/m/bidirectional_1/forward_lstm_1/lstm_cell/bias/Read/ReadVariableOpReadVariableOp4Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/bias*
_output_shapes	
:А*
dtype0
±
@Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *Q

debug_nameCAAdam/v/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel/*
dtype0*
shape:
аА*Q
shared_nameB@Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel
„
TAdam/v/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp@Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel* 
_output_shapes
:
аА*
dtype0
±
@Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *Q

debug_nameCAAdam/m/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel/*
dtype0*
shape:
аА*Q
shared_nameB@Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel
„
TAdam/m/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp@Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel* 
_output_shapes
:
аА*
dtype0
Т
6Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/kernelVarHandleOp*
_output_shapes
: *G

debug_name97Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/kernel/*
dtype0*
shape:	А*G
shared_name86Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/kernel
¬
JAdam/v/bidirectional_1/forward_lstm_1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp6Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/kernel*
_output_shapes
:	А*
dtype0
Т
6Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/kernelVarHandleOp*
_output_shapes
: *G

debug_name97Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/kernel/*
dtype0*
shape:	А*G
shared_name86Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/kernel
¬
JAdam/m/bidirectional_1/forward_lstm_1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp6Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/kernel*
_output_shapes
:	А*
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
.bidirectional_1/backward_lstm_1/lstm_cell/biasVarHandleOp*
_output_shapes
: *?

debug_name1/bidirectional_1/backward_lstm_1/lstm_cell/bias/*
dtype0*
shape:А*?
shared_name0.bidirectional_1/backward_lstm_1/lstm_cell/bias
Ѓ
Bbidirectional_1/backward_lstm_1/lstm_cell/bias/Read/ReadVariableOpReadVariableOp.bidirectional_1/backward_lstm_1/lstm_cell/bias*
_output_shapes	
:А*
dtype0
Я
:bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *K

debug_name=;bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel/*
dtype0*
shape:
аА*K
shared_name<:bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel
Ћ
Nbidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp:bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel* 
_output_shapes
:
аА*
dtype0
А
0bidirectional_1/backward_lstm_1/lstm_cell/kernelVarHandleOp*
_output_shapes
: *A

debug_name31bidirectional_1/backward_lstm_1/lstm_cell/kernel/*
dtype0*
shape:	А*A
shared_name20bidirectional_1/backward_lstm_1/lstm_cell/kernel
ґ
Dbidirectional_1/backward_lstm_1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp0bidirectional_1/backward_lstm_1/lstm_cell/kernel*
_output_shapes
:	А*
dtype0
у
-bidirectional_1/forward_lstm_1/lstm_cell/biasVarHandleOp*
_output_shapes
: *>

debug_name0.bidirectional_1/forward_lstm_1/lstm_cell/bias/*
dtype0*
shape:А*>
shared_name/-bidirectional_1/forward_lstm_1/lstm_cell/bias
ђ
Abidirectional_1/forward_lstm_1/lstm_cell/bias/Read/ReadVariableOpReadVariableOp-bidirectional_1/forward_lstm_1/lstm_cell/bias*
_output_shapes	
:А*
dtype0
Ь
9bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *J

debug_name<:bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel/*
dtype0*
shape:
аА*J
shared_name;9bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel
…
Mbidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp9bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel* 
_output_shapes
:
аА*
dtype0
э
/bidirectional_1/forward_lstm_1/lstm_cell/kernelVarHandleOp*
_output_shapes
: *@

debug_name20bidirectional_1/forward_lstm_1/lstm_cell/kernel/*
dtype0*
shape:	А*@
shared_name1/bidirectional_1/forward_lstm_1/lstm_cell/kernel
і
Cbidirectional_1/forward_lstm_1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp/bidirectional_1/forward_lstm_1/lstm_cell/kernel*
_output_shapes
:	А*
dtype0
П
dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namedense_1/bias/*
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
Ъ
dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape:	ј*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	ј*
dtype0
Б
serving_default_lambda_1_inputPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
†
StatefulPartitionedCallStatefulPartitionedCallserving_default_lambda_1_input/bidirectional_1/forward_lstm_1/lstm_cell/kernel9bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel-bidirectional_1/forward_lstm_1/lstm_cell/bias0bidirectional_1/backward_lstm_1/lstm_cell/kernel:bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel.bidirectional_1/backward_lstm_1/lstm_cell/biasdense_1/kerneldense_1/bias*
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
GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_850338

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
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/bidirectional_1/forward_lstm_1/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE-bidirectional_1/forward_lstm_1/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE0bidirectional_1/backward_lstm_1/lstm_cell/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE.bidirectional_1/backward_lstm_1/lstm_cell/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUE6Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUE6Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
МЕ
VARIABLE_VALUE@Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
МЕ
VARIABLE_VALUE@Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE4Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE4Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE7Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE7Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUEAAdam/m/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUEAAdam/v/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUE5Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUE5Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_1/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_1/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
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
‘
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/bias/bidirectional_1/forward_lstm_1/lstm_cell/kernel9bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel-bidirectional_1/forward_lstm_1/lstm_cell/bias0bidirectional_1/backward_lstm_1/lstm_cell/kernel:bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel.bidirectional_1/backward_lstm_1/lstm_cell/bias	iterationlearning_rate6Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/kernel6Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/kernel@Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel@Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel4Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/bias4Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/bias7Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/kernel7Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/kernelAAdam/m/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernelAAdam/v/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel5Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/bias5Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotalcountConst*)
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
GPU 2J 8В *(
f#R!
__inference__traced_save_853249
ѕ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/bias/bidirectional_1/forward_lstm_1/lstm_cell/kernel9bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel-bidirectional_1/forward_lstm_1/lstm_cell/bias0bidirectional_1/backward_lstm_1/lstm_cell/kernel:bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel.bidirectional_1/backward_lstm_1/lstm_cell/bias	iterationlearning_rate6Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/kernel6Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/kernel@Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel@Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel4Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/bias4Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/bias7Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/kernel7Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/kernelAAdam/m/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernelAAdam/v/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel5Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/bias5Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotalcount*(
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_853342Ог.
…
Д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_852929

inputs
states_0
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
аА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€аV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€аO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€а`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€аL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€а:€€€€€€€€€а: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€а
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€а
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
°
Р
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_849900
lambda_1_input)
bidirectional_1_849871:	А*
bidirectional_1_849873:
аА%
bidirectional_1_849875:	А)
bidirectional_1_849877:	А*
bidirectional_1_849879:
аА%
bidirectional_1_849881:	А!
dense_1_849894:	ј
dense_1_849896:
identityИҐ'bidirectional_1/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallƒ
lambda_1/PartitionedCallPartitionedCalllambda_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_849579Р
'bidirectional_1/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0bidirectional_1_849871bidirectional_1_849873bidirectional_1_849875bidirectional_1_849877bidirectional_1_849879bidirectional_1_849881*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_849870Ц
dense_1/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_1/StatefulPartitionedCall:output:0dense_1_849894dense_1_849896*
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
GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_849893w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€n
NoOpNoOp(^bidirectional_1/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : : : 2R
'bidirectional_1/StatefulPartitionedCall'bidirectional_1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namelambda_1_input:&"
 
_user_specified_name849871:&"
 
_user_specified_name849873:&"
 
_user_specified_name849875:&"
 
_user_specified_name849877:&"
 
_user_specified_name849879:&"
 
_user_specified_name849881:&"
 
_user_specified_name849894:&"
 
_user_specified_name849896
Ї9
Б
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_848312

inputs#
lstm_cell_848228:	А$
lstm_cell_848230:
аА
lstm_cell_848232:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
shrink_axis_maskй
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_848228lstm_cell_848230lstm_cell_848232*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848227n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : Х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_848228lstm_cell_848230lstm_cell_848232*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_848242*
condR
while_cond_848241*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аN
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
 
_user_specified_nameinputs:&"
 
_user_specified_name848228:&"
 
_user_specified_name848230:&"
 
_user_specified_name848232
Ј
Г
!backward_lstm_1_while_cond_849782<
8backward_lstm_1_while_backward_lstm_1_while_loop_counterB
>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations%
!backward_lstm_1_while_placeholder'
#backward_lstm_1_while_placeholder_1'
#backward_lstm_1_while_placeholder_2'
#backward_lstm_1_while_placeholder_3>
:backward_lstm_1_while_less_backward_lstm_1_strided_slice_1T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_849782___redundant_placeholder0T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_849782___redundant_placeholder1T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_849782___redundant_placeholder2T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_849782___redundant_placeholder3"
backward_lstm_1_while_identity
Ґ
backward_lstm_1/while/LessLess!backward_lstm_1_while_placeholder:backward_lstm_1_while_less_backward_lstm_1_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_1/while/IdentityIdentitybackward_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_1_while_identity'backward_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_1/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_1/strided_slice_1:

_output_shapes
:
Ј
й
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_850240
lambda_1_input
unknown:	А
	unknown_0:
аА
	unknown_1:	А
	unknown_2:	А
	unknown_3:
аА
	unknown_4:	А
	unknown_5:	ј
	unknown_6:
identityИҐStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCalllambda_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU 2J 8В *i
fdRb
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_849900o
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
#:€€€€€€€€€: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namelambda_1_input:&"
 
_user_specified_name850222:&"
 
_user_specified_name850224:&"
 
_user_specified_name850226:&"
 
_user_specified_name850228:&"
 
_user_specified_name850230:&"
 
_user_specified_name850232:&"
 
_user_specified_name850234:&"
 
_user_specified_name850236
ц
ј
0__inference_backward_lstm_1_layer_call_fn_852253
inputs_0
unknown:	А
	unknown_0:
аА
	unknown_1:	А
identityИҐStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_848813p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а<
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
inputs_0:&"
 
_user_specified_name852245:&"
 
_user_specified_name852247:&"
 
_user_specified_name852249
є
µ
Vmodel_9_bidirectionalLSTM_univariate_bidirectional_1_backward_lstm_1_while_cond_848071І
Ґmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_loop_counter≠
®model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_maximum_iterationsZ
Vmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_placeholder\
Xmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_placeholder_1\
Xmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_placeholder_2\
Xmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_placeholder_3©
§model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_less_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_strided_slice_1њ
Їmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_cond_848071___redundant_placeholder0њ
Їmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_cond_848071___redundant_placeholder1њ
Їmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_cond_848071___redundant_placeholder2њ
Їmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_cond_848071___redundant_placeholder3W
Smodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_identity
ч
Omodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/LessLessVmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_placeholder§model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_less_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_strided_slice_1*
T0*
_output_shapes
: ’
Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/IdentityIdentitySmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "≥
Smodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_identity\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::Р Л

_output_shapes
: 
q
_user_specified_nameYWmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/loop_counter:ЦС

_output_shapes
: 
w
_user_specified_name_]model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:НИ

_output_shapes
: 
n
_user_specified_nameVTmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_1:

_output_shapes
:
…
Д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_853027

inputs
states_0
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
аА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€аV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€аO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€а`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€аL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€а:€€€€€€€€€а: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€а
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€а
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
…
Д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_853059

inputs
states_0
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
аА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€аV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€аO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€а`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€аL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€а:€€€€€€€€€а: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€а
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€а
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
№M
Ј
!backward_lstm_1_while_body_850112<
8backward_lstm_1_while_backward_lstm_1_while_loop_counterB
>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations%
!backward_lstm_1_while_placeholder'
#backward_lstm_1_while_placeholder_1'
#backward_lstm_1_while_placeholder_2'
#backward_lstm_1_while_placeholder_3;
7backward_lstm_1_while_backward_lstm_1_strided_slice_1_0w
sbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	АV
Bbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:
аАP
Abackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	А"
backward_lstm_1_while_identity$
 backward_lstm_1_while_identity_1$
 backward_lstm_1_while_identity_2$
 backward_lstm_1_while_identity_3$
 backward_lstm_1_while_identity_4$
 backward_lstm_1_while_identity_59
5backward_lstm_1_while_backward_lstm_1_strided_slice_1u
qbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	АT
@backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:
аАN
?backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpҐ5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpҐ7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpШ
Gbackward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ц
9backward_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_1_while_placeholderPbackward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ј
5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0д
&backward_lstm_1/while/lstm_cell/MatMulMatMul@backward_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЉ
7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ћ
(backward_lstm_1/while/lstm_cell/MatMul_1MatMul#backward_lstm_1_while_placeholder_2?backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≈
#backward_lstm_1/while/lstm_cell/addAddV20backward_lstm_1/while/lstm_cell/MatMul:product:02backward_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0ќ
'backward_lstm_1/while/lstm_cell/BiasAddBiasAdd'backward_lstm_1/while/lstm_cell/add:z:0>backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
/backward_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
%backward_lstm_1/while/lstm_cell/splitSplit8backward_lstm_1/while/lstm_cell/split/split_dim:output:00backward_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitХ
'backward_lstm_1/while/lstm_cell/SigmoidSigmoid.backward_lstm_1/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЧ
)backward_lstm_1/while/lstm_cell/Sigmoid_1Sigmoid.backward_lstm_1/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€а±
#backward_lstm_1/while/lstm_cell/mulMul-backward_lstm_1/while/lstm_cell/Sigmoid_1:y:0#backward_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аП
$backward_lstm_1/while/lstm_cell/ReluRelu.backward_lstm_1/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€ај
%backward_lstm_1/while/lstm_cell/mul_1Mul+backward_lstm_1/while/lstm_cell/Sigmoid:y:02backward_lstm_1/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аµ
%backward_lstm_1/while/lstm_cell/add_1AddV2'backward_lstm_1/while/lstm_cell/mul:z:0)backward_lstm_1/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЧ
)backward_lstm_1/while/lstm_cell/Sigmoid_2Sigmoid.backward_lstm_1/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аМ
&backward_lstm_1/while/lstm_cell/Relu_1Relu)backward_lstm_1/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аƒ
%backward_lstm_1/while/lstm_cell/mul_2Mul-backward_lstm_1/while/lstm_cell/Sigmoid_2:y:04backward_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
@backward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ™
:backward_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_1_while_placeholder_1Ibackward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0)backward_lstm_1/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“]
backward_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :М
backward_lstm_1/while/addAddV2!backward_lstm_1_while_placeholder$backward_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_1/while/add_1AddV28backward_lstm_1_while_backward_lstm_1_while_loop_counter&backward_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: Й
backward_lstm_1/while/IdentityIdentitybackward_lstm_1/while/add_1:z:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: ™
 backward_lstm_1/while/Identity_1Identity>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: Й
 backward_lstm_1/while/Identity_2Identitybackward_lstm_1/while/add:z:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: ґ
 backward_lstm_1/while/Identity_3IdentityJbackward_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: І
 backward_lstm_1/while/Identity_4Identity)backward_lstm_1/while/lstm_cell/mul_2:z:0^backward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аІ
 backward_lstm_1/while/Identity_5Identity)backward_lstm_1/while/lstm_cell/add_1:z:0^backward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аг
backward_lstm_1/while/NoOpNoOp7^backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp6^backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp8^backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5backward_lstm_1_while_backward_lstm_1_strided_slice_17backward_lstm_1_while_backward_lstm_1_strided_slice_1_0"I
backward_lstm_1_while_identity'backward_lstm_1/while/Identity:output:0"M
 backward_lstm_1_while_identity_1)backward_lstm_1/while/Identity_1:output:0"M
 backward_lstm_1_while_identity_2)backward_lstm_1/while/Identity_2:output:0"M
 backward_lstm_1_while_identity_3)backward_lstm_1/while/Identity_3:output:0"M
 backward_lstm_1_while_identity_4)backward_lstm_1/while/Identity_4:output:0"M
 backward_lstm_1_while_identity_5)backward_lstm_1/while/Identity_5:output:0"Д
?backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resourceAbackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"Ж
@backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourceBbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"В
>backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"и
qbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2p
6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2n
5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2r
7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_1/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_1/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97backward_lstm_1/TensorArrayUnstack/TensorListFromTensor:($
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
Ї9
Б
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_848459

inputs#
lstm_cell_848375:	А$
lstm_cell_848377:
аА
lstm_cell_848379:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
shrink_axis_maskй
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_848375lstm_cell_848377lstm_cell_848379*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848374n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : Х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_848375lstm_cell_848377lstm_cell_848379*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_848389*
condR
while_cond_848388*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аN
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
 
_user_specified_nameinputs:&"
 
_user_specified_name848375:&"
 
_user_specified_name848377:&"
 
_user_specified_name848379
—
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_849579

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
:€€€€€€€€€_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≥Љ
У
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_850199

inputsJ
7forward_lstm_1_lstm_cell_matmul_readvariableop_resource:	АM
9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource:
аАG
8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource:	АK
8backward_lstm_1_lstm_cell_matmul_readvariableop_resource:	АN
:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource:
аАH
9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpҐ/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpҐ1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpҐbackward_lstm_1/whileҐ/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpҐ.forward_lstm_1/lstm_cell/MatMul/ReadVariableOpҐ0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpҐforward_lstm_1/whileX
forward_lstm_1/ShapeShapeinputs*
T0*
_output_shapes
::нѕl
"forward_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
forward_lstm_1/strided_sliceStridedSliceforward_lstm_1/Shape:output:0+forward_lstm_1/strided_slice/stack:output:0-forward_lstm_1/strided_slice/stack_1:output:0-forward_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а†
forward_lstm_1/zeros/packedPack%forward_lstm_1/strided_slice:output:0&forward_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
forward_lstm_1/zerosFill$forward_lstm_1/zeros/packed:output:0#forward_lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аb
forward_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а§
forward_lstm_1/zeros_1/packedPack%forward_lstm_1/strided_slice:output:0(forward_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    †
forward_lstm_1/zeros_1Fill&forward_lstm_1/zeros_1/packed:output:0%forward_lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аr
forward_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Л
forward_lstm_1/transpose	Transposeinputs&forward_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€p
forward_lstm_1/Shape_1Shapeforward_lstm_1/transpose:y:0*
T0*
_output_shapes
::нѕn
$forward_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
forward_lstm_1/strided_slice_1StridedSliceforward_lstm_1/Shape_1:output:0-forward_lstm_1/strided_slice_1/stack:output:0/forward_lstm_1/strided_slice_1/stack_1:output:0/forward_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€б
forward_lstm_1/TensorArrayV2TensorListReserve3forward_lstm_1/TensorArrayV2/element_shape:output:0'forward_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Х
Dforward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Н
6forward_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_1/transpose:y:0Mforward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“n
$forward_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:і
forward_lstm_1/strided_slice_2StridedSliceforward_lstm_1/transpose:y:0-forward_lstm_1/strided_slice_2/stack:output:0/forward_lstm_1/strided_slice_2/stack_1:output:0/forward_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskІ
.forward_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOp7forward_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0љ
forward_lstm_1/lstm_cell/MatMulMatMul'forward_lstm_1/strided_slice_2:output:06forward_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ађ
0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0Ј
!forward_lstm_1/lstm_cell/MatMul_1MatMulforward_lstm_1/zeros:output:08forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А∞
forward_lstm_1/lstm_cell/addAddV2)forward_lstm_1/lstm_cell/MatMul:product:0+forward_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А•
/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0є
 forward_lstm_1/lstm_cell/BiasAddBiasAdd forward_lstm_1/lstm_cell/add:z:07forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аj
(forward_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
forward_lstm_1/lstm_cell/splitSplit1forward_lstm_1/lstm_cell/split/split_dim:output:0)forward_lstm_1/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitЗ
 forward_lstm_1/lstm_cell/SigmoidSigmoid'forward_lstm_1/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЙ
"forward_lstm_1/lstm_cell/Sigmoid_1Sigmoid'forward_lstm_1/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аЯ
forward_lstm_1/lstm_cell/mulMul&forward_lstm_1/lstm_cell/Sigmoid_1:y:0forward_lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аБ
forward_lstm_1/lstm_cell/ReluRelu'forward_lstm_1/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аЂ
forward_lstm_1/lstm_cell/mul_1Mul$forward_lstm_1/lstm_cell/Sigmoid:y:0+forward_lstm_1/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а†
forward_lstm_1/lstm_cell/add_1AddV2 forward_lstm_1/lstm_cell/mul:z:0"forward_lstm_1/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЙ
"forward_lstm_1/lstm_cell/Sigmoid_2Sigmoid'forward_lstm_1/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а~
forward_lstm_1/lstm_cell/Relu_1Relu"forward_lstm_1/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аѓ
forward_lstm_1/lstm_cell/mul_2Mul&forward_lstm_1/lstm_cell/Sigmoid_2:y:0-forward_lstm_1/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а}
,forward_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   m
+forward_lstm_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :т
forward_lstm_1/TensorArrayV2_1TensorListReserve5forward_lstm_1/TensorArrayV2_1/element_shape:output:04forward_lstm_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“U
forward_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€c
!forward_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
forward_lstm_1/whileWhile*forward_lstm_1/while/loop_counter:output:00forward_lstm_1/while/maximum_iterations:output:0forward_lstm_1/time:output:0'forward_lstm_1/TensorArrayV2_1:handle:0forward_lstm_1/zeros:output:0forward_lstm_1/zeros_1:output:0'forward_lstm_1/strided_slice_1:output:0Fforward_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_1_lstm_cell_matmul_readvariableop_resource9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 forward_lstm_1_while_body_849969*,
cond$R"
 forward_lstm_1_while_cond_849968*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Р
?forward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   Д
1forward_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_1/while:output:3Hforward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
element_dtype0*
num_elementsw
$forward_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€p
&forward_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_1/strided_slice_3StridedSlice:forward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_1/strided_slice_3/stack:output:0/forward_lstm_1/strided_slice_3/stack_1:output:0/forward_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€а*
shrink_axis_maskt
forward_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ƒ
forward_lstm_1/transpose_1	Transpose:forward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€аj
forward_lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Y
backward_lstm_1/ShapeShapeinputs*
T0*
_output_shapes
::нѕm
#backward_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
backward_lstm_1/strided_sliceStridedSlicebackward_lstm_1/Shape:output:0,backward_lstm_1/strided_slice/stack:output:0.backward_lstm_1/strided_slice/stack_1:output:0.backward_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а£
backward_lstm_1/zeros/packedPack&backward_lstm_1/strided_slice:output:0'backward_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
backward_lstm_1/zerosFill%backward_lstm_1/zeros/packed:output:0$backward_lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
 backward_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аІ
backward_lstm_1/zeros_1/packedPack&backward_lstm_1/strided_slice:output:0)backward_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_1/zeros_1Fill'backward_lstm_1/zeros_1/packed:output:0&backward_lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аs
backward_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
backward_lstm_1/transpose	Transposeinputs'backward_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€r
backward_lstm_1/Shape_1Shapebackward_lstm_1/transpose:y:0*
T0*
_output_shapes
::нѕo
%backward_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
backward_lstm_1/strided_slice_1StridedSlice backward_lstm_1/Shape_1:output:0.backward_lstm_1/strided_slice_1/stack:output:00backward_lstm_1/strided_slice_1/stack_1:output:00backward_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€д
backward_lstm_1/TensorArrayV2TensorListReserve4backward_lstm_1/TensorArrayV2/element_shape:output:0(backward_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“h
backward_lstm_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_1/ReverseV2	ReverseV2backward_lstm_1/transpose:y:0'backward_lstm_1/ReverseV2/axis:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ц
Ebackward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Х
7backward_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_1/ReverseV2:output:0Nbackward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“o
%backward_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
backward_lstm_1/strided_slice_2StridedSlicebackward_lstm_1/transpose:y:0.backward_lstm_1/strided_slice_2/stack:output:00backward_lstm_1/strided_slice_2/stack_1:output:00backward_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask©
/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOp8backward_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ј
 backward_lstm_1/lstm_cell/MatMulMatMul(backward_lstm_1/strided_slice_2:output:07backward_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0Ї
"backward_lstm_1/lstm_cell/MatMul_1MatMulbackward_lstm_1/zeros:output:09backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
backward_lstm_1/lstm_cell/addAddV2*backward_lstm_1/lstm_cell/MatMul:product:0,backward_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АІ
0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
!backward_lstm_1/lstm_cell/BiasAddBiasAdd!backward_lstm_1/lstm_cell/add:z:08backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
)backward_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
backward_lstm_1/lstm_cell/splitSplit2backward_lstm_1/lstm_cell/split/split_dim:output:0*backward_lstm_1/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitЙ
!backward_lstm_1/lstm_cell/SigmoidSigmoid(backward_lstm_1/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЛ
#backward_lstm_1/lstm_cell/Sigmoid_1Sigmoid(backward_lstm_1/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аҐ
backward_lstm_1/lstm_cell/mulMul'backward_lstm_1/lstm_cell/Sigmoid_1:y:0 backward_lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аГ
backward_lstm_1/lstm_cell/ReluRelu(backward_lstm_1/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аЃ
backward_lstm_1/lstm_cell/mul_1Mul%backward_lstm_1/lstm_cell/Sigmoid:y:0,backward_lstm_1/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а£
backward_lstm_1/lstm_cell/add_1AddV2!backward_lstm_1/lstm_cell/mul:z:0#backward_lstm_1/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЛ
#backward_lstm_1/lstm_cell/Sigmoid_2Sigmoid(backward_lstm_1/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аА
 backward_lstm_1/lstm_cell/Relu_1Relu#backward_lstm_1/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€а≤
backward_lstm_1/lstm_cell/mul_2Mul'backward_lstm_1/lstm_cell/Sigmoid_2:y:0.backward_lstm_1/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а~
-backward_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   n
,backward_lstm_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :х
backward_lstm_1/TensorArrayV2_1TensorListReserve6backward_lstm_1/TensorArrayV2_1/element_shape:output:05backward_lstm_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“V
backward_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€d
"backward_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ј
backward_lstm_1/whileWhile+backward_lstm_1/while/loop_counter:output:01backward_lstm_1/while/maximum_iterations:output:0backward_lstm_1/time:output:0(backward_lstm_1/TensorArrayV2_1:handle:0backward_lstm_1/zeros:output:0 backward_lstm_1/zeros_1:output:0(backward_lstm_1/strided_slice_1:output:0Gbackward_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_1_lstm_cell_matmul_readvariableop_resource:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*-
body%R#
!backward_lstm_1_while_body_850112*-
cond%R#
!backward_lstm_1_while_cond_850111*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations С
@backward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   З
2backward_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_1/while:output:3Ibackward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
element_dtype0*
num_elementsx
%backward_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€q
'backward_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
backward_lstm_1/strided_slice_3StridedSlice;backward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_1/strided_slice_3/stack:output:00backward_lstm_1/strided_slice_3/stack_1:output:00backward_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€а*
shrink_axis_masku
 backward_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
backward_lstm_1/transpose_1	Transpose;backward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€аk
backward_lstm_1/runtimeConst"/device:CPU:0*
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
concatConcatV2'forward_lstm_1/strided_slice_3:output:0(backward_lstm_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ј_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€јА
NoOpNoOp1^backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp0^backward_lstm_1/lstm_cell/MatMul/ReadVariableOp2^backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_1/while0^forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/^forward_lstm_1/lstm_cell/MatMul/ReadVariableOp1^forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_1/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2d
0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2b
/backward_lstm_1/lstm_cell/MatMul/ReadVariableOp/backward_lstm_1/lstm_cell/MatMul/ReadVariableOp2f
1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2.
backward_lstm_1/whilebackward_lstm_1/while2b
/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2`
.forward_lstm_1/lstm_cell/MatMul/ReadVariableOp.forward_lstm_1/lstm_cell/MatMul/ReadVariableOp2d
0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2,
forward_lstm_1/whileforward_lstm_1/while:S O
+
_output_shapes
:€€€€€€€€€
 
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
∆	
√
while_cond_848742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_848742___redundant_placeholder04
0while_while_cond_848742___redundant_placeholder14
0while_while_cond_848742___redundant_placeholder24
0while_while_cond_848742___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ѕ
В
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848227

inputs

states
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
аА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€аV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€аO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€а`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€аL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€а:€€€€€€€€€а: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€а
 
_user_specified_namestates:PL
(
_output_shapes
:€€€€€€€€€а
 
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
±K
С
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_852231

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
аА8
)lstm_cell_biasadd_readvariableop_resource:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€а~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_852146*
condR
while_cond_852145*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аУ
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
Ј
Г
!backward_lstm_1_while_cond_851500<
8backward_lstm_1_while_backward_lstm_1_while_loop_counterB
>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations%
!backward_lstm_1_while_placeholder'
#backward_lstm_1_while_placeholder_1'
#backward_lstm_1_while_placeholder_2'
#backward_lstm_1_while_placeholder_3>
:backward_lstm_1_while_less_backward_lstm_1_strided_slice_1T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_851500___redundant_placeholder0T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_851500___redundant_placeholder1T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_851500___redundant_placeholder2T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_851500___redundant_placeholder3"
backward_lstm_1_while_identity
Ґ
backward_lstm_1/while/LessLess!backward_lstm_1_while_placeholder:backward_lstm_1_while_less_backward_lstm_1_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_1/while/IdentityIdentitybackward_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_1_while_identity'backward_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_1/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_1/strided_slice_1:

_output_shapes
:
Ј
Г
!backward_lstm_1_while_cond_850630<
8backward_lstm_1_while_backward_lstm_1_while_loop_counterB
>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations%
!backward_lstm_1_while_placeholder'
#backward_lstm_1_while_placeholder_1'
#backward_lstm_1_while_placeholder_2'
#backward_lstm_1_while_placeholder_3>
:backward_lstm_1_while_less_backward_lstm_1_strided_slice_1T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_850630___redundant_placeholder0T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_850630___redundant_placeholder1T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_850630___redundant_placeholder2T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_850630___redundant_placeholder3"
backward_lstm_1_while_identity
Ґ
backward_lstm_1/while/LessLess!backward_lstm_1_while_placeholder:backward_lstm_1_while_less_backward_lstm_1_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_1/while/IdentityIdentitybackward_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_1_while_identity'backward_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_1/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_1/strided_slice_1:

_output_shapes
:
Ь:
Ј
while_body_852337
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
аА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
аА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
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
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аr
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
:€€€€€€€€€аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а£

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
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2P
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC
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
±K
С
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_849016

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
аА8
)lstm_cell_biasadd_readvariableop_resource:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€а~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_848931*
condR
while_cond_848930*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аУ
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
∆	
√
while_cond_848930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_848930___redundant_placeholder04
0while_while_cond_848930___redundant_placeholder14
0while_while_cond_848930___redundant_placeholder24
0while_while_cond_848930___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ѕ
В
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848374

inputs

states
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
аА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€аV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€аO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€а`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€аL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€а:€€€€€€€€€а: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€а
 
_user_specified_namestates:PL
(
_output_shapes
:€€€€€€€€€а
 
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
ƒ
ф
*__inference_lstm_cell_layer_call_fn_852897

inputs
states_0
states_1
unknown:	А
	unknown_0:
аА
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848374p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€а:€€€€€€€€€а: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€а
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€а
"
_user_specified_name
states_1:&"
 
_user_specified_name852885:&"
 
_user_specified_name852887:&"
 
_user_specified_name852889
∆	
√
while_cond_849084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_849084___redundant_placeholder04
0while_while_cond_849084___redundant_placeholder14
0while_while_cond_849084___redundant_placeholder24
0while_while_cond_849084___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
∆	
√
while_cond_849242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_849242___redundant_placeholder04
0while_while_cond_849242___redundant_placeholder14
0while_while_cond_849242___redundant_placeholder24
0while_while_cond_849242___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ХK
У
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_851796
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
аА8
)lstm_cell_biasadd_readvariableop_resource:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€а~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_851711*
condR
while_cond_851710*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аУ
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
й%
–
while_body_848389
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_848413_0:	А,
while_lstm_cell_848415_0:
аА'
while_lstm_cell_848417_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_848413:	А*
while_lstm_cell_848415:
аА%
while_lstm_cell_848417:	АИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0І
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_848413_0while_lstm_cell_848415_0while_lstm_cell_848417_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848374r
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
:€€€€€€€€€аО
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_848413while_lstm_cell_848413_0"2
while_lstm_cell_848415while_lstm_cell_848415_0"2
while_lstm_cell_848417while_lstm_cell_848417_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2R
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name848413:&	"
 
_user_specified_name848415:&
"
 
_user_specified_name848417
•:
Ј
while_body_848931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
аА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
аА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
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
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аr
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
:€€€€€€€€€аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а£

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
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2P
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC
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
ѓ‘
°
!__inference__wrapped_model_848165
lambda_1_input
lmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_lstm_cell_matmul_readvariableop_resource:	АВ
nmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource:
аА|
mmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_lstm_cell_biasadd_readvariableop_resource:	АА
mmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_lstm_cell_matmul_readvariableop_resource:	АГ
omodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource:
аА}
nmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_lstm_cell_biasadd_readvariableop_resource:	А^
Kmodel_9_bidirectionallstm_univariate_dense_1_matmul_readvariableop_resource:	јZ
Lmodel_9_bidirectionallstm_univariate_dense_1_biasadd_readvariableop_resource:
identityИҐemodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpҐdmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpҐfmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpҐJmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/whileҐdmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpҐcmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMul/ReadVariableOpҐemodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpҐImodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/whileҐCmodel_9_bidirectionalLSTM_univariate/dense_1/BiasAdd/ReadVariableOpҐBmodel_9_bidirectionalLSTM_univariate/dense_1/MatMul/ReadVariableOpЗ
<model_9_bidirectionalLSTM_univariate/lambda_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€”
8model_9_bidirectionalLSTM_univariate/lambda_1/ExpandDims
ExpandDimslambda_1_inputEmodel_9_bidirectionalLSTM_univariate/lambda_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€»
Imodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/ShapeShapeAmodel_9_bidirectionalLSTM_univariate/lambda_1/ExpandDims:output:0*
T0*
_output_shapes
::нѕ°
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: £
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:£
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:•
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_sliceStridedSliceRmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/Shape:output:0`model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice/stack:output:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice/stack_1:output:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskХ
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ањ
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros/packedPackZmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice:output:0[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Ф
Omodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    є
Imodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zerosFillYmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros/packed:output:0Xmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЧ
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а√
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros_1/packedPackZmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Ц
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    њ
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros_1Fill[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros_1/packed:output:0Zmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аІ
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ∞
Mmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/transpose	TransposeAmodel_9_bidirectionalLSTM_univariate/lambda_1/ExpandDims:output:0[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€Џ
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/Shape_1ShapeQmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/transpose:y:0*
T0*
_output_shapes
::нѕ£
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: •
[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:•
[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_1StridedSliceTmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/Shape_1:output:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_1/stack:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_1/stack_1:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask™
_model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€А
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayV2TensorListReservehmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayV2/element_shape:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“ 
ymodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ≠
kmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorQmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/transpose:y:0Вmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“£
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: •
[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:•
[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_2StridedSliceQmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/transpose:y:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_2/stack:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_2/stack_1:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskС
cmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOplmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0№
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMulMatMul\model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_2:output:0kmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЦ
emodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpnmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0÷
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMul_1MatMulRmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros:output:0mmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аѕ
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/addAddV2^model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMul:product:0`model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АП
dmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpmmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ў
Umodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/BiasAddBiasAddUmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/add:z:0lmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЯ
]model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :§
Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/splitSplitfmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/split/split_dim:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitс
Umodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/SigmoidSigmoid\model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€ау
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/Sigmoid_1Sigmoid\model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аЊ
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/mulMul[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/Sigmoid_1:y:0Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€ал
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/ReluRelu\model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€а 
Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/mul_1MulYmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/Sigmoid:y:0`model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€ањ
Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/add_1AddV2Umodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/mul:z:0Wmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€ау
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/Sigmoid_2Sigmoid\model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аи
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/Relu_1ReluWmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аќ
Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/mul_2Mul[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/Sigmoid_2:y:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а≤
amodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   Ґ
`model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :С
Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayV2_1TensorListReservejmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayV2_1/element_shape:output:0imodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“К
Hmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : І
\model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ш
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ш
Imodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/whileWhile_model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/loop_counter:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/maximum_iterations:output:0Qmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/time:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayV2_1:handle:0Rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros:output:0Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/zeros_1:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_1:output:0{model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0lmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_lstm_cell_matmul_readvariableop_resourcenmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_lstm_cell_matmul_1_readvariableop_resourcemmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*a
bodyYRW
Umodel_9_bidirectionalLSTM_univariate_bidirectional_1_forward_lstm_1_while_body_847929*a
condYRW
Umodel_9_bidirectionalLSTM_univariate_bidirectional_1_forward_lstm_1_while_cond_847928*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations ≈
tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   £
fmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackRmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while:output:3}model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
element_dtype0*
num_elementsђ
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€•
[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: •
[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_3StridedSliceomodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_3/stack:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_3/stack_1:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€а*
shrink_axis_mask©
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          г
Omodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/transpose_1	Transposeomodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0]model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€аЯ
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    …
Jmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/ShapeShapeAmodel_9_bidirectionalLSTM_univariate/lambda_1/ExpandDims:output:0*
T0*
_output_shapes
::нѕҐ
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: §
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:§
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:™
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_sliceStridedSliceSmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/Shape:output:0amodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice/stack:output:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice/stack_1:output:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЦ
Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а¬
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros/packedPack[model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Х
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
Jmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zerosFillZmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros/packed:output:0Ymodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аШ
Umodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а∆
Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros_1/packedPack[model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Ч
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¬
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros_1Fill\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros_1/packed:output:0[model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€а®
Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ≤
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/transpose	TransposeAmodel_9_bidirectionalLSTM_univariate/lambda_1/ExpandDims:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€№
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/Shape_1ShapeRmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/transpose:y:0*
T0*
_output_shapes
::нѕ§
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ¶
\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¶
\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:і
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_1StridedSliceUmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/Shape_1:output:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_1/stack:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_1/stack_1:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЂ
`model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Г
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayV2TensorListReserveimodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayV2/element_shape:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Э
Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: √
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/ReverseV2	ReverseV2Rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/transpose:y:0\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/ReverseV2/axis:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ћ
zmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   µ
lmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorWmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/ReverseV2:output:0Гmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“§
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: ¶
\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¶
\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_2StridedSliceRmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/transpose:y:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_2/stack:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_2/stack_1:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskУ
dmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOpmmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0я
Umodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMulMatMul]model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_2:output:0lmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АШ
fmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpomodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0ў
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMul_1MatMulSmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros:output:0nmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А“
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/addAddV2_model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMul:product:0amodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АС
emodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpnmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0џ
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/BiasAddBiasAddVmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/add:z:0mmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А†
^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :І
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/splitSplitgmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/split/split_dim:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitу
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/SigmoidSigmoid]model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€ах
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/Sigmoid_1Sigmoid]model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аЅ
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/mulMul\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/Sigmoid_1:y:0Umodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€ан
Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/ReluRelu]model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аЌ
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/mul_1MulZmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/Sigmoid:y:0amodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а¬
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/add_1AddV2Vmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/mul:z:0Xmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€ах
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/Sigmoid_2Sigmoid]model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€ак
Umodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/Relu_1ReluXmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€а—
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/mul_2Mul\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/Sigmoid_2:y:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а≥
bmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   £
amodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ф
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayV2_1TensorListReservekmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayV2_1/element_shape:output:0jmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Л
Imodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : ®
]model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Щ
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
Jmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/whileWhile`model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/loop_counter:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/maximum_iterations:output:0Rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/time:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayV2_1:handle:0Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros:output:0Umodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/zeros_1:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_1:output:0|model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0mmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_lstm_cell_matmul_readvariableop_resourceomodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_lstm_cell_matmul_1_readvariableop_resourcenmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*b
bodyZRX
Vmodel_9_bidirectionalLSTM_univariate_bidirectional_1_backward_lstm_1_while_body_848072*b
condZRX
Vmodel_9_bidirectionalLSTM_univariate_bidirectional_1_backward_lstm_1_while_cond_848071*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations ∆
umodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ¶
gmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackSmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while:output:3~model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
element_dtype0*
num_elements≠
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€¶
\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_3StridedSlicepmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_3/stack:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_3/stack_1:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€а*
shrink_axis_mask™
Umodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ж
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/transpose_1	Transposepmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а†
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    В
@model_9_bidirectionalLSTM_univariate/bidirectional_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Л
;model_9_bidirectionalLSTM_univariate/bidirectional_1/concatConcatV2\model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_3:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_3:output:0Imodel_9_bidirectionalLSTM_univariate/bidirectional_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€јѕ
Bmodel_9_bidirectionalLSTM_univariate/dense_1/MatMul/ReadVariableOpReadVariableOpKmodel_9_bidirectionallstm_univariate_dense_1_matmul_readvariableop_resource*
_output_shapes
:	ј*
dtype0Б
3model_9_bidirectionalLSTM_univariate/dense_1/MatMulMatMulDmodel_9_bidirectionalLSTM_univariate/bidirectional_1/concat:output:0Jmodel_9_bidirectionalLSTM_univariate/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ћ
Cmodel_9_bidirectionalLSTM_univariate/dense_1/BiasAdd/ReadVariableOpReadVariableOpLmodel_9_bidirectionallstm_univariate_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0э
4model_9_bidirectionalLSTM_univariate/dense_1/BiasAddBiasAdd=model_9_bidirectionalLSTM_univariate/dense_1/MatMul:product:0Kmodel_9_bidirectionalLSTM_univariate/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€М
IdentityIdentity=model_9_bidirectionalLSTM_univariate/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€≥
NoOpNoOpf^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpe^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpg^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpK^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/whilee^model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpd^model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMul/ReadVariableOpf^model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpJ^model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/whileD^model_9_bidirectionalLSTM_univariate/dense_1/BiasAdd/ReadVariableOpC^model_9_bidirectionalLSTM_univariate/dense_1/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : : : 2ќ
emodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpemodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2ћ
dmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpdmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMul/ReadVariableOp2–
fmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpfmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2Ш
Jmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/whileJmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while2ћ
dmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpdmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2 
cmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMul/ReadVariableOpcmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMul/ReadVariableOp2ќ
emodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpemodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2Ц
Imodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/whileImodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while2К
Cmodel_9_bidirectionalLSTM_univariate/dense_1/BiasAdd/ReadVariableOpCmodel_9_bidirectionalLSTM_univariate/dense_1/BiasAdd/ReadVariableOp2И
Bmodel_9_bidirectionalLSTM_univariate/dense_1/MatMul/ReadVariableOpBmodel_9_bidirectionalLSTM_univariate/dense_1/MatMul/ReadVariableOp:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namelambda_1_input:($
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
јС
µ
"__inference__traced_restore_853342
file_prefix2
assignvariableop_dense_1_kernel:	ј-
assignvariableop_1_dense_1_bias:U
Bassignvariableop_2_bidirectional_1_forward_lstm_1_lstm_cell_kernel:	А`
Lassignvariableop_3_bidirectional_1_forward_lstm_1_lstm_cell_recurrent_kernel:
аАO
@assignvariableop_4_bidirectional_1_forward_lstm_1_lstm_cell_bias:	АV
Cassignvariableop_5_bidirectional_1_backward_lstm_1_lstm_cell_kernel:	Аa
Massignvariableop_6_bidirectional_1_backward_lstm_1_lstm_cell_recurrent_kernel:
аАP
Aassignvariableop_7_bidirectional_1_backward_lstm_1_lstm_cell_bias:	А&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: ]
Jassignvariableop_10_adam_m_bidirectional_1_forward_lstm_1_lstm_cell_kernel:	А]
Jassignvariableop_11_adam_v_bidirectional_1_forward_lstm_1_lstm_cell_kernel:	Аh
Tassignvariableop_12_adam_m_bidirectional_1_forward_lstm_1_lstm_cell_recurrent_kernel:
аАh
Tassignvariableop_13_adam_v_bidirectional_1_forward_lstm_1_lstm_cell_recurrent_kernel:
аАW
Hassignvariableop_14_adam_m_bidirectional_1_forward_lstm_1_lstm_cell_bias:	АW
Hassignvariableop_15_adam_v_bidirectional_1_forward_lstm_1_lstm_cell_bias:	А^
Kassignvariableop_16_adam_m_bidirectional_1_backward_lstm_1_lstm_cell_kernel:	А^
Kassignvariableop_17_adam_v_bidirectional_1_backward_lstm_1_lstm_cell_kernel:	Аi
Uassignvariableop_18_adam_m_bidirectional_1_backward_lstm_1_lstm_cell_recurrent_kernel:
аАi
Uassignvariableop_19_adam_v_bidirectional_1_backward_lstm_1_lstm_cell_recurrent_kernel:
аАX
Iassignvariableop_20_adam_m_bidirectional_1_backward_lstm_1_lstm_cell_bias:	АX
Iassignvariableop_21_adam_v_bidirectional_1_backward_lstm_1_lstm_cell_bias:	А<
)assignvariableop_22_adam_m_dense_1_kernel:	ј<
)assignvariableop_23_adam_v_dense_1_kernel:	ј5
'assignvariableop_24_adam_m_dense_1_bias:5
'assignvariableop_25_adam_v_dense_1_bias:#
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
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_2AssignVariableOpBassignvariableop_2_bidirectional_1_forward_lstm_1_lstm_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_3AssignVariableOpLassignvariableop_3_bidirectional_1_forward_lstm_1_lstm_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_4AssignVariableOp@assignvariableop_4_bidirectional_1_forward_lstm_1_lstm_cell_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_5AssignVariableOpCassignvariableop_5_bidirectional_1_backward_lstm_1_lstm_cell_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_6AssignVariableOpMassignvariableop_6_bidirectional_1_backward_lstm_1_lstm_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_7AssignVariableOpAassignvariableop_7_bidirectional_1_backward_lstm_1_lstm_cell_biasIdentity_7:output:0"/device:CPU:0*&
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
AssignVariableOp_10AssignVariableOpJassignvariableop_10_adam_m_bidirectional_1_forward_lstm_1_lstm_cell_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOpJassignvariableop_11_adam_v_bidirectional_1_forward_lstm_1_lstm_cell_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:н
AssignVariableOp_12AssignVariableOpTassignvariableop_12_adam_m_bidirectional_1_forward_lstm_1_lstm_cell_recurrent_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:н
AssignVariableOp_13AssignVariableOpTassignvariableop_13_adam_v_bidirectional_1_forward_lstm_1_lstm_cell_recurrent_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_14AssignVariableOpHassignvariableop_14_adam_m_bidirectional_1_forward_lstm_1_lstm_cell_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_15AssignVariableOpHassignvariableop_15_adam_v_bidirectional_1_forward_lstm_1_lstm_cell_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_16AssignVariableOpKassignvariableop_16_adam_m_bidirectional_1_backward_lstm_1_lstm_cell_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_17AssignVariableOpKassignvariableop_17_adam_v_bidirectional_1_backward_lstm_1_lstm_cell_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:о
AssignVariableOp_18AssignVariableOpUassignvariableop_18_adam_m_bidirectional_1_backward_lstm_1_lstm_cell_recurrent_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:о
AssignVariableOp_19AssignVariableOpUassignvariableop_19_adam_v_bidirectional_1_backward_lstm_1_lstm_cell_recurrent_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_20AssignVariableOpIassignvariableop_20_adam_m_bidirectional_1_backward_lstm_1_lstm_cell_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_21AssignVariableOpIassignvariableop_21_adam_v_bidirectional_1_backward_lstm_1_lstm_cell_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_m_dense_1_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_v_dense_1_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_m_dense_1_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_v_dense_1_biasIdentity_25:output:0"/device:CPU:0*&
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
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:OK
I
_user_specified_name1/bidirectional_1/forward_lstm_1/lstm_cell/kernel:YU
S
_user_specified_name;9bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel:MI
G
_user_specified_name/-bidirectional_1/forward_lstm_1/lstm_cell/bias:PL
J
_user_specified_name20bidirectional_1/backward_lstm_1/lstm_cell/kernel:ZV
T
_user_specified_name<:bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel:NJ
H
_user_specified_name0.bidirectional_1/backward_lstm_1/lstm_cell/bias:)	%
#
_user_specified_name	iteration:-
)
'
_user_specified_namelearning_rate:VR
P
_user_specified_name86Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/kernel:VR
P
_user_specified_name86Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/kernel:`\
Z
_user_specified_nameB@Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel:`\
Z
_user_specified_nameB@Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel:TP
N
_user_specified_name64Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/bias:TP
N
_user_specified_name64Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/bias:WS
Q
_user_specified_name97Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/kernel:WS
Q
_user_specified_name97Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/kernel:a]
[
_user_specified_nameCAAdam/m/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel:a]
[
_user_specified_nameCAAdam/v/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel:UQ
O
_user_specified_name75Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/bias:UQ
O
_user_specified_name75Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/bias:51
/
_user_specified_nameAdam/m/dense_1/kernel:51
/
_user_specified_nameAdam/v/dense_1/kernel:3/
-
_user_specified_nameAdam/m/dense_1/bias:3/
-
_user_specified_nameAdam/v/dense_1/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount
ИН
…
Umodel_9_bidirectionalLSTM_univariate_bidirectional_1_forward_lstm_1_while_body_847929•
†model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_loop_counterЂ
¶model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_maximum_iterationsY
Umodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_placeholder[
Wmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_placeholder_1[
Wmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_placeholder_2[
Wmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_placeholder_3§
Яmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_strided_slice_1_0а
џmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0З
tmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	АК
vmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:
аАД
umodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	АV
Rmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_identityX
Tmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_identity_1X
Tmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_identity_2X
Tmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_identity_3X
Tmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_identity_4X
Tmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_identity_5Ґ
Эmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_strided_slice_1ё
ўmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_tensorarrayunstack_tensorlistfromtensorЕ
rmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	АИ
tmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:
аАВ
smodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	АИҐjmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpҐimodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpҐkmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpћ
{model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ь
mmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemџmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0Umodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_placeholderДmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Я
imodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOptmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0А
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMulMatMultmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0qmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А§
kmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpvmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0з
\model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMul_1MatMulWmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_placeholder_2smodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аб
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/addAddV2dmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMul:product:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЭ
jmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpumodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0к
[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/BiasAddBiasAdd[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/add:z:0rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А•
cmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/splitSplitlmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/split/split_dim:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitэ
[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/SigmoidSigmoidbmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€а€
]model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/Sigmoid_1Sigmoidbmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аЌ
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/mulMulamodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/Sigmoid_1:y:0Wmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€ач
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/ReluRelubmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€а№
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/mul_1Mul_model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/Sigmoid:y:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а—
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/add_1AddV2[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/mul:z:0]model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€а€
]model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/Sigmoid_2Sigmoidbmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аф
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/Relu_1Relu]model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аа
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/mul_2Mulamodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/Sigmoid_2:y:0hmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аґ
tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ъ
nmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemWmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_placeholder_1}model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“С
Omodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :®
Mmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/addAddV2Umodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_placeholderXmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: У
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ш
Omodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/add_1AddV2†model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_loop_counterZmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: •
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/IdentityIdentitySmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/add_1:z:0O^model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/NoOp*
T0*
_output_shapes
: ы
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/Identity_1Identity¶model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_maximum_iterationsO^model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/NoOp*
T0*
_output_shapes
: •
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/Identity_2IdentityQmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/add:z:0O^model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/NoOp*
T0*
_output_shapes
: “
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/Identity_3Identity~model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0O^model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/NoOp*
T0*
_output_shapes
: √
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/Identity_4Identity]model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/mul_2:z:0O^model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а√
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/Identity_5Identity]model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/add_1:z:0O^model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а≥
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/NoOpNoOpk^model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpj^model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpl^model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "±
Rmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_identity[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/Identity:output:0"µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_identity_1]model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/Identity_1:output:0"µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_identity_2]model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/Identity_2:output:0"µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_identity_3]model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/Identity_3:output:0"µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_identity_4]model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/Identity_4:output:0"µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_identity_5]model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/Identity_5:output:0"м
smodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resourceumodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"о
tmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourcevmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"к
rmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_lstm_cell_matmul_readvariableop_resourcetmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"¬
Эmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_strided_slice_1Яmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_strided_slice_1_0"Ї
ўmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_tensorarrayunstack_tensorlistfromtensorџmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2Ў
jmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpjmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2÷
imodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpimodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2Џ
kmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpkmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:П К

_output_shapes
: 
p
_user_specified_nameXVmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/loop_counter:ХР

_output_shapes
: 
v
_user_specified_name^\model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:МЗ

_output_shapes
: 
m
_user_specified_nameUSmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_1:•†

_output_shapes
: 
Е
_user_specified_namemkmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/TensorArrayUnstack/TensorListFromTensor:($
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
ЪM
Т
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852863

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
аА8
)lstm_cell_biasadd_readvariableop_resource:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€а~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_852778*
condR
while_cond_852777*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аУ
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
еM
Ј
!backward_lstm_1_while_body_850921<
8backward_lstm_1_while_backward_lstm_1_while_loop_counterB
>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations%
!backward_lstm_1_while_placeholder'
#backward_lstm_1_while_placeholder_1'
#backward_lstm_1_while_placeholder_2'
#backward_lstm_1_while_placeholder_3;
7backward_lstm_1_while_backward_lstm_1_strided_slice_1_0w
sbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	АV
Bbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:
аАP
Abackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	А"
backward_lstm_1_while_identity$
 backward_lstm_1_while_identity_1$
 backward_lstm_1_while_identity_2$
 backward_lstm_1_while_identity_3$
 backward_lstm_1_while_identity_4$
 backward_lstm_1_while_identity_59
5backward_lstm_1_while_backward_lstm_1_strided_slice_1u
qbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	АT
@backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:
аАN
?backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpҐ5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpҐ7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpШ
Gbackward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€€
9backward_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_1_while_placeholderPbackward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0Ј
5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0д
&backward_lstm_1/while/lstm_cell/MatMulMatMul@backward_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЉ
7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ћ
(backward_lstm_1/while/lstm_cell/MatMul_1MatMul#backward_lstm_1_while_placeholder_2?backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≈
#backward_lstm_1/while/lstm_cell/addAddV20backward_lstm_1/while/lstm_cell/MatMul:product:02backward_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0ќ
'backward_lstm_1/while/lstm_cell/BiasAddBiasAdd'backward_lstm_1/while/lstm_cell/add:z:0>backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
/backward_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
%backward_lstm_1/while/lstm_cell/splitSplit8backward_lstm_1/while/lstm_cell/split/split_dim:output:00backward_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitХ
'backward_lstm_1/while/lstm_cell/SigmoidSigmoid.backward_lstm_1/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЧ
)backward_lstm_1/while/lstm_cell/Sigmoid_1Sigmoid.backward_lstm_1/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€а±
#backward_lstm_1/while/lstm_cell/mulMul-backward_lstm_1/while/lstm_cell/Sigmoid_1:y:0#backward_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аП
$backward_lstm_1/while/lstm_cell/ReluRelu.backward_lstm_1/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€ај
%backward_lstm_1/while/lstm_cell/mul_1Mul+backward_lstm_1/while/lstm_cell/Sigmoid:y:02backward_lstm_1/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аµ
%backward_lstm_1/while/lstm_cell/add_1AddV2'backward_lstm_1/while/lstm_cell/mul:z:0)backward_lstm_1/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЧ
)backward_lstm_1/while/lstm_cell/Sigmoid_2Sigmoid.backward_lstm_1/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аМ
&backward_lstm_1/while/lstm_cell/Relu_1Relu)backward_lstm_1/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аƒ
%backward_lstm_1/while/lstm_cell/mul_2Mul-backward_lstm_1/while/lstm_cell/Sigmoid_2:y:04backward_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
@backward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ™
:backward_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_1_while_placeholder_1Ibackward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0)backward_lstm_1/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“]
backward_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :М
backward_lstm_1/while/addAddV2!backward_lstm_1_while_placeholder$backward_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_1/while/add_1AddV28backward_lstm_1_while_backward_lstm_1_while_loop_counter&backward_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: Й
backward_lstm_1/while/IdentityIdentitybackward_lstm_1/while/add_1:z:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: ™
 backward_lstm_1/while/Identity_1Identity>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: Й
 backward_lstm_1/while/Identity_2Identitybackward_lstm_1/while/add:z:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: ґ
 backward_lstm_1/while/Identity_3IdentityJbackward_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: І
 backward_lstm_1/while/Identity_4Identity)backward_lstm_1/while/lstm_cell/mul_2:z:0^backward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аІ
 backward_lstm_1/while/Identity_5Identity)backward_lstm_1/while/lstm_cell/add_1:z:0^backward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аг
backward_lstm_1/while/NoOpNoOp7^backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp6^backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp8^backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5backward_lstm_1_while_backward_lstm_1_strided_slice_17backward_lstm_1_while_backward_lstm_1_strided_slice_1_0"I
backward_lstm_1_while_identity'backward_lstm_1/while/Identity:output:0"M
 backward_lstm_1_while_identity_1)backward_lstm_1/while/Identity_1:output:0"M
 backward_lstm_1_while_identity_2)backward_lstm_1/while/Identity_2:output:0"M
 backward_lstm_1_while_identity_3)backward_lstm_1/while/Identity_3:output:0"M
 backward_lstm_1_while_identity_4)backward_lstm_1/while/Identity_4:output:0"M
 backward_lstm_1_while_identity_5)backward_lstm_1/while/Identity_5:output:0"Д
?backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resourceAbackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"Ж
@backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourceBbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"В
>backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"и
qbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2p
6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2n
5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2r
7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_1/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_1/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97backward_lstm_1/TensorArrayUnstack/TensorListFromTensor:($
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
ƒ
ф
*__inference_lstm_cell_layer_call_fn_852978

inputs
states_0
states_1
unknown:	А
	unknown_0:
аА
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848579p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€а:€€€€€€€€€а: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€а
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€а
"
_user_specified_name
states_1:&"
 
_user_specified_name852966:&"
 
_user_specified_name852968:&"
 
_user_specified_name852970
Ј
Г
!backward_lstm_1_while_cond_851210<
8backward_lstm_1_while_backward_lstm_1_while_loop_counterB
>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations%
!backward_lstm_1_while_placeholder'
#backward_lstm_1_while_placeholder_1'
#backward_lstm_1_while_placeholder_2'
#backward_lstm_1_while_placeholder_3>
:backward_lstm_1_while_less_backward_lstm_1_strided_slice_1T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_851210___redundant_placeholder0T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_851210___redundant_placeholder1T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_851210___redundant_placeholder2T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_851210___redundant_placeholder3"
backward_lstm_1_while_identity
Ґ
backward_lstm_1/while/LessLess!backward_lstm_1_while_placeholder:backward_lstm_1_while_less_backward_lstm_1_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_1/while/IdentityIdentitybackward_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_1_while_identity'backward_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_1/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_1/strided_slice_1:

_output_shapes
:
Ш
п
 forward_lstm_1_while_cond_850777:
6forward_lstm_1_while_forward_lstm_1_while_loop_counter@
<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations$
 forward_lstm_1_while_placeholder&
"forward_lstm_1_while_placeholder_1&
"forward_lstm_1_while_placeholder_2&
"forward_lstm_1_while_placeholder_3<
8forward_lstm_1_while_less_forward_lstm_1_strided_slice_1R
Nforward_lstm_1_while_forward_lstm_1_while_cond_850777___redundant_placeholder0R
Nforward_lstm_1_while_forward_lstm_1_while_cond_850777___redundant_placeholder1R
Nforward_lstm_1_while_forward_lstm_1_while_cond_850777___redundant_placeholder2R
Nforward_lstm_1_while_forward_lstm_1_while_cond_850777___redundant_placeholder3!
forward_lstm_1_while_identity
Ю
forward_lstm_1/while/LessLess forward_lstm_1_while_placeholder8forward_lstm_1_while_less_forward_lstm_1_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_1/while/IdentityIdentityforward_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_1_while_identity&forward_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_1/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_1/strided_slice_1:

_output_shapes
:
±K
С
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_852086

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
аА8
)lstm_cell_biasadd_readvariableop_resource:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€а~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_852001*
condR
while_cond_852000*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аУ
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
ц
ј
0__inference_backward_lstm_1_layer_call_fn_852242
inputs_0
unknown:	А
	unknown_0:
аА
	unknown_1:	А
identityИҐStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_848664p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а<
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
inputs_0:&"
 
_user_specified_name852234:&"
 
_user_specified_name852236:&"
 
_user_specified_name852238
А	
љ
/__inference_forward_lstm_1_layer_call_fn_851640

inputs
unknown:	А
	unknown_0:
аА
	unknown_1:	А
identityИҐStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_849016p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а<
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
 
_user_specified_nameinputs:&"
 
_user_specified_name851632:&"
 
_user_specified_name851634:&"
 
_user_specified_name851636
•:
Ј
while_body_852778
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
аА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
аА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
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
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аr
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
:€€€€€€€€€аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а£

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
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2P
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC
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
Ѕ
В
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848728

inputs

states
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
аА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€аV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€аO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€а`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€аL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€а:€€€€€€€€€а: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€а
 
_user_specified_namestates:PL
(
_output_shapes
:€€€€€€€€€а
 
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
∆	
√
while_cond_848593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_848593___redundant_placeholder04
0while_while_cond_848593___redundant_placeholder14
0while_while_cond_848593___redundant_placeholder24
0while_while_cond_848593___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ЅL
Ч
 forward_lstm_1_while_body_849640:
6forward_lstm_1_while_forward_lstm_1_while_loop_counter@
<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations$
 forward_lstm_1_while_placeholder&
"forward_lstm_1_while_placeholder_1&
"forward_lstm_1_while_placeholder_2&
"forward_lstm_1_while_placeholder_39
5forward_lstm_1_while_forward_lstm_1_strided_slice_1_0u
qforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	АU
Aforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:
аАO
@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	А!
forward_lstm_1_while_identity#
forward_lstm_1_while_identity_1#
forward_lstm_1_while_identity_2#
forward_lstm_1_while_identity_3#
forward_lstm_1_while_identity_4#
forward_lstm_1_while_identity_57
3forward_lstm_1_while_forward_lstm_1_strided_slice_1s
oforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	АS
?forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:
аАM
>forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpҐ4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpҐ6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpЧ
Fforward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   с
8forward_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_1_while_placeholderOforward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0µ
4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0б
%forward_lstm_1/while/lstm_cell/MatMulMatMul?forward_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0»
'forward_lstm_1/while/lstm_cell/MatMul_1MatMul"forward_lstm_1_while_placeholder_2>forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¬
"forward_lstm_1/while/lstm_cell/addAddV2/forward_lstm_1/while/lstm_cell/MatMul:product:01forward_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ћ
&forward_lstm_1/while/lstm_cell/BiasAddBiasAdd&forward_lstm_1/while/lstm_cell/add:z:0=forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
.forward_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ч
$forward_lstm_1/while/lstm_cell/splitSplit7forward_lstm_1/while/lstm_cell/split/split_dim:output:0/forward_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitУ
&forward_lstm_1/while/lstm_cell/SigmoidSigmoid-forward_lstm_1/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аХ
(forward_lstm_1/while/lstm_cell/Sigmoid_1Sigmoid-forward_lstm_1/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аЃ
"forward_lstm_1/while/lstm_cell/mulMul,forward_lstm_1/while/lstm_cell/Sigmoid_1:y:0"forward_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аН
#forward_lstm_1/while/lstm_cell/ReluRelu-forward_lstm_1/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аљ
$forward_lstm_1/while/lstm_cell/mul_1Mul*forward_lstm_1/while/lstm_cell/Sigmoid:y:01forward_lstm_1/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а≤
$forward_lstm_1/while/lstm_cell/add_1AddV2&forward_lstm_1/while/lstm_cell/mul:z:0(forward_lstm_1/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аХ
(forward_lstm_1/while/lstm_cell/Sigmoid_2Sigmoid-forward_lstm_1/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аК
%forward_lstm_1/while/lstm_cell/Relu_1Relu(forward_lstm_1/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЅ
$forward_lstm_1/while/lstm_cell/mul_2Mul,forward_lstm_1/while/lstm_cell/Sigmoid_2:y:03forward_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аБ
?forward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¶
9forward_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_1_while_placeholder_1Hforward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0(forward_lstm_1/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“\
forward_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Й
forward_lstm_1/while/addAddV2 forward_lstm_1_while_placeholder#forward_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_1/while/add_1AddV26forward_lstm_1_while_forward_lstm_1_while_loop_counter%forward_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ж
forward_lstm_1/while/IdentityIdentityforward_lstm_1/while/add_1:z:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: ¶
forward_lstm_1/while/Identity_1Identity<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: Ж
forward_lstm_1/while/Identity_2Identityforward_lstm_1/while/add:z:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: ≥
forward_lstm_1/while/Identity_3IdentityIforward_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_1/while/Identity_4Identity(forward_lstm_1/while/lstm_cell/mul_2:z:0^forward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а§
forward_lstm_1/while/Identity_5Identity(forward_lstm_1/while/lstm_cell/add_1:z:0^forward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€ая
forward_lstm_1/while/NoOpNoOp6^forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5^forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp7^forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "l
3forward_lstm_1_while_forward_lstm_1_strided_slice_15forward_lstm_1_while_forward_lstm_1_strided_slice_1_0"G
forward_lstm_1_while_identity&forward_lstm_1/while/Identity:output:0"K
forward_lstm_1_while_identity_1(forward_lstm_1/while/Identity_1:output:0"K
forward_lstm_1_while_identity_2(forward_lstm_1/while/Identity_2:output:0"K
forward_lstm_1_while_identity_3(forward_lstm_1/while/Identity_3:output:0"K
forward_lstm_1_while_identity_4(forward_lstm_1/while/Identity_4:output:0"K
forward_lstm_1_while_identity_5(forward_lstm_1/while/Identity_5:output:0"В
>forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"Д
?forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourceAforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"А
=forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"д
oforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensorqforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2n
5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2l
4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2p
6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_1/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_1/strided_slice_1:nj

_output_shapes
: 
P
_user_specified_name86forward_lstm_1/TensorArrayUnstack/TensorListFromTensor:($
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
ЪM
Т
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_849482

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
аА8
)lstm_cell_biasadd_readvariableop_resource:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€а~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_849397*
condR
while_cond_849396*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аУ
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
Ђљ
Х
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_850718
inputs_0J
7forward_lstm_1_lstm_cell_matmul_readvariableop_resource:	АM
9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource:
аАG
8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource:	АK
8backward_lstm_1_lstm_cell_matmul_readvariableop_resource:	АN
:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource:
аАH
9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpҐ/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpҐ1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpҐbackward_lstm_1/whileҐ/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpҐ.forward_lstm_1/lstm_cell/MatMul/ReadVariableOpҐ0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpҐforward_lstm_1/whileZ
forward_lstm_1/ShapeShapeinputs_0*
T0*
_output_shapes
::нѕl
"forward_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
forward_lstm_1/strided_sliceStridedSliceforward_lstm_1/Shape:output:0+forward_lstm_1/strided_slice/stack:output:0-forward_lstm_1/strided_slice/stack_1:output:0-forward_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а†
forward_lstm_1/zeros/packedPack%forward_lstm_1/strided_slice:output:0&forward_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
forward_lstm_1/zerosFill$forward_lstm_1/zeros/packed:output:0#forward_lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аb
forward_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а§
forward_lstm_1/zeros_1/packedPack%forward_lstm_1/strided_slice:output:0(forward_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    †
forward_lstm_1/zeros_1Fill&forward_lstm_1/zeros_1/packed:output:0%forward_lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аr
forward_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
forward_lstm_1/transpose	Transposeinputs_0&forward_lstm_1/transpose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€p
forward_lstm_1/Shape_1Shapeforward_lstm_1/transpose:y:0*
T0*
_output_shapes
::нѕn
$forward_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
forward_lstm_1/strided_slice_1StridedSliceforward_lstm_1/Shape_1:output:0-forward_lstm_1/strided_slice_1/stack:output:0/forward_lstm_1/strided_slice_1/stack_1:output:0/forward_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€б
forward_lstm_1/TensorArrayV2TensorListReserve3forward_lstm_1/TensorArrayV2/element_shape:output:0'forward_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Х
Dforward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€Н
6forward_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_1/transpose:y:0Mforward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“n
$forward_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
forward_lstm_1/strided_slice_2StridedSliceforward_lstm_1/transpose:y:0-forward_lstm_1/strided_slice_2/stack:output:0/forward_lstm_1/strided_slice_2/stack_1:output:0/forward_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_maskІ
.forward_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOp7forward_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0љ
forward_lstm_1/lstm_cell/MatMulMatMul'forward_lstm_1/strided_slice_2:output:06forward_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ађ
0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0Ј
!forward_lstm_1/lstm_cell/MatMul_1MatMulforward_lstm_1/zeros:output:08forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А∞
forward_lstm_1/lstm_cell/addAddV2)forward_lstm_1/lstm_cell/MatMul:product:0+forward_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А•
/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0є
 forward_lstm_1/lstm_cell/BiasAddBiasAdd forward_lstm_1/lstm_cell/add:z:07forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аj
(forward_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
forward_lstm_1/lstm_cell/splitSplit1forward_lstm_1/lstm_cell/split/split_dim:output:0)forward_lstm_1/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitЗ
 forward_lstm_1/lstm_cell/SigmoidSigmoid'forward_lstm_1/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЙ
"forward_lstm_1/lstm_cell/Sigmoid_1Sigmoid'forward_lstm_1/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аЯ
forward_lstm_1/lstm_cell/mulMul&forward_lstm_1/lstm_cell/Sigmoid_1:y:0forward_lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аБ
forward_lstm_1/lstm_cell/ReluRelu'forward_lstm_1/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аЂ
forward_lstm_1/lstm_cell/mul_1Mul$forward_lstm_1/lstm_cell/Sigmoid:y:0+forward_lstm_1/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а†
forward_lstm_1/lstm_cell/add_1AddV2 forward_lstm_1/lstm_cell/mul:z:0"forward_lstm_1/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЙ
"forward_lstm_1/lstm_cell/Sigmoid_2Sigmoid'forward_lstm_1/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а~
forward_lstm_1/lstm_cell/Relu_1Relu"forward_lstm_1/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аѓ
forward_lstm_1/lstm_cell/mul_2Mul&forward_lstm_1/lstm_cell/Sigmoid_2:y:0-forward_lstm_1/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а}
,forward_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   m
+forward_lstm_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :т
forward_lstm_1/TensorArrayV2_1TensorListReserve5forward_lstm_1/TensorArrayV2_1/element_shape:output:04forward_lstm_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“U
forward_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€c
!forward_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
forward_lstm_1/whileWhile*forward_lstm_1/while/loop_counter:output:00forward_lstm_1/while/maximum_iterations:output:0forward_lstm_1/time:output:0'forward_lstm_1/TensorArrayV2_1:handle:0forward_lstm_1/zeros:output:0forward_lstm_1/zeros_1:output:0'forward_lstm_1/strided_slice_1:output:0Fforward_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_1_lstm_cell_matmul_readvariableop_resource9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 forward_lstm_1_while_body_850488*,
cond$R"
 forward_lstm_1_while_cond_850487*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Р
?forward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   Д
1forward_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_1/while:output:3Hforward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
element_dtype0*
num_elementsw
$forward_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€p
&forward_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_1/strided_slice_3StridedSlice:forward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_1/strided_slice_3/stack:output:0/forward_lstm_1/strided_slice_3/stack_1:output:0/forward_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€а*
shrink_axis_maskt
forward_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ƒ
forward_lstm_1/transpose_1	Transpose:forward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€аj
forward_lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    [
backward_lstm_1/ShapeShapeinputs_0*
T0*
_output_shapes
::нѕm
#backward_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
backward_lstm_1/strided_sliceStridedSlicebackward_lstm_1/Shape:output:0,backward_lstm_1/strided_slice/stack:output:0.backward_lstm_1/strided_slice/stack_1:output:0.backward_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а£
backward_lstm_1/zeros/packedPack&backward_lstm_1/strided_slice:output:0'backward_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
backward_lstm_1/zerosFill%backward_lstm_1/zeros/packed:output:0$backward_lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
 backward_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аІ
backward_lstm_1/zeros_1/packedPack&backward_lstm_1/strided_slice:output:0)backward_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_1/zeros_1Fill'backward_lstm_1/zeros_1/packed:output:0&backward_lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аs
backward_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          °
backward_lstm_1/transpose	Transposeinputs_0'backward_lstm_1/transpose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€r
backward_lstm_1/Shape_1Shapebackward_lstm_1/transpose:y:0*
T0*
_output_shapes
::нѕo
%backward_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
backward_lstm_1/strided_slice_1StridedSlice backward_lstm_1/Shape_1:output:0.backward_lstm_1/strided_slice_1/stack:output:00backward_lstm_1/strided_slice_1/stack_1:output:00backward_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€д
backward_lstm_1/TensorArrayV2TensorListReserve4backward_lstm_1/TensorArrayV2/element_shape:output:0(backward_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“h
backward_lstm_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ґ
backward_lstm_1/ReverseV2	ReverseV2backward_lstm_1/transpose:y:0'backward_lstm_1/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€Ц
Ebackward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€Х
7backward_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_1/ReverseV2:output:0Nbackward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“o
%backward_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
backward_lstm_1/strided_slice_2StridedSlicebackward_lstm_1/transpose:y:0.backward_lstm_1/strided_slice_2/stack:output:00backward_lstm_1/strided_slice_2/stack_1:output:00backward_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_mask©
/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOp8backward_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ј
 backward_lstm_1/lstm_cell/MatMulMatMul(backward_lstm_1/strided_slice_2:output:07backward_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0Ї
"backward_lstm_1/lstm_cell/MatMul_1MatMulbackward_lstm_1/zeros:output:09backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
backward_lstm_1/lstm_cell/addAddV2*backward_lstm_1/lstm_cell/MatMul:product:0,backward_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АІ
0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
!backward_lstm_1/lstm_cell/BiasAddBiasAdd!backward_lstm_1/lstm_cell/add:z:08backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
)backward_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
backward_lstm_1/lstm_cell/splitSplit2backward_lstm_1/lstm_cell/split/split_dim:output:0*backward_lstm_1/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitЙ
!backward_lstm_1/lstm_cell/SigmoidSigmoid(backward_lstm_1/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЛ
#backward_lstm_1/lstm_cell/Sigmoid_1Sigmoid(backward_lstm_1/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аҐ
backward_lstm_1/lstm_cell/mulMul'backward_lstm_1/lstm_cell/Sigmoid_1:y:0 backward_lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аГ
backward_lstm_1/lstm_cell/ReluRelu(backward_lstm_1/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аЃ
backward_lstm_1/lstm_cell/mul_1Mul%backward_lstm_1/lstm_cell/Sigmoid:y:0,backward_lstm_1/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а£
backward_lstm_1/lstm_cell/add_1AddV2!backward_lstm_1/lstm_cell/mul:z:0#backward_lstm_1/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЛ
#backward_lstm_1/lstm_cell/Sigmoid_2Sigmoid(backward_lstm_1/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аА
 backward_lstm_1/lstm_cell/Relu_1Relu#backward_lstm_1/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€а≤
backward_lstm_1/lstm_cell/mul_2Mul'backward_lstm_1/lstm_cell/Sigmoid_2:y:0.backward_lstm_1/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а~
-backward_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   n
,backward_lstm_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :х
backward_lstm_1/TensorArrayV2_1TensorListReserve6backward_lstm_1/TensorArrayV2_1/element_shape:output:05backward_lstm_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“V
backward_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€d
"backward_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ј
backward_lstm_1/whileWhile+backward_lstm_1/while/loop_counter:output:01backward_lstm_1/while/maximum_iterations:output:0backward_lstm_1/time:output:0(backward_lstm_1/TensorArrayV2_1:handle:0backward_lstm_1/zeros:output:0 backward_lstm_1/zeros_1:output:0(backward_lstm_1/strided_slice_1:output:0Gbackward_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_1_lstm_cell_matmul_readvariableop_resource:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*-
body%R#
!backward_lstm_1_while_body_850631*-
cond%R#
!backward_lstm_1_while_cond_850630*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations С
@backward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   З
2backward_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_1/while:output:3Ibackward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
element_dtype0*
num_elementsx
%backward_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€q
'backward_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
backward_lstm_1/strided_slice_3StridedSlice;backward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_1/strided_slice_3/stack:output:00backward_lstm_1/strided_slice_3/stack_1:output:00backward_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€а*
shrink_axis_masku
 backward_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
backward_lstm_1/transpose_1	Transpose;backward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€аk
backward_lstm_1/runtimeConst"/device:CPU:0*
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
concatConcatV2'forward_lstm_1/strided_slice_3:output:0(backward_lstm_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ј_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€јА
NoOpNoOp1^backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp0^backward_lstm_1/lstm_cell/MatMul/ReadVariableOp2^backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_1/while0^forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/^forward_lstm_1/lstm_cell/MatMul/ReadVariableOp1^forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_1/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : 2d
0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2b
/backward_lstm_1/lstm_cell/MatMul/ReadVariableOp/backward_lstm_1/lstm_cell/MatMul/ReadVariableOp2f
1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2.
backward_lstm_1/whilebackward_lstm_1/while2b
/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2`
.forward_lstm_1/lstm_cell/MatMul/ReadVariableOp.forward_lstm_1/lstm_cell/MatMul/ReadVariableOp2d
0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2,
forward_lstm_1/whileforward_lstm_1/while:g c
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
∆	
√
while_cond_852000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_852000___redundant_placeholder04
0while_while_cond_852000___redundant_placeholder14
0while_while_cond_852000___redundant_placeholder24
0while_while_cond_852000___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
А	
љ
/__inference_forward_lstm_1_layer_call_fn_851651

inputs
unknown:	А
	unknown_0:
аА
	unknown_1:	А
identityИҐStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_849328p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а<
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
 
_user_specified_nameinputs:&"
 
_user_specified_name851643:&"
 
_user_specified_name851645:&"
 
_user_specified_name851647
ЅL
Ч
 forward_lstm_1_while_body_851068:
6forward_lstm_1_while_forward_lstm_1_while_loop_counter@
<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations$
 forward_lstm_1_while_placeholder&
"forward_lstm_1_while_placeholder_1&
"forward_lstm_1_while_placeholder_2&
"forward_lstm_1_while_placeholder_39
5forward_lstm_1_while_forward_lstm_1_strided_slice_1_0u
qforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	АU
Aforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:
аАO
@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	А!
forward_lstm_1_while_identity#
forward_lstm_1_while_identity_1#
forward_lstm_1_while_identity_2#
forward_lstm_1_while_identity_3#
forward_lstm_1_while_identity_4#
forward_lstm_1_while_identity_57
3forward_lstm_1_while_forward_lstm_1_strided_slice_1s
oforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	АS
?forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:
аАM
>forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpҐ4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpҐ6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpЧ
Fforward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   с
8forward_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_1_while_placeholderOforward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0µ
4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0б
%forward_lstm_1/while/lstm_cell/MatMulMatMul?forward_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0»
'forward_lstm_1/while/lstm_cell/MatMul_1MatMul"forward_lstm_1_while_placeholder_2>forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¬
"forward_lstm_1/while/lstm_cell/addAddV2/forward_lstm_1/while/lstm_cell/MatMul:product:01forward_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ћ
&forward_lstm_1/while/lstm_cell/BiasAddBiasAdd&forward_lstm_1/while/lstm_cell/add:z:0=forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
.forward_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ч
$forward_lstm_1/while/lstm_cell/splitSplit7forward_lstm_1/while/lstm_cell/split/split_dim:output:0/forward_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitУ
&forward_lstm_1/while/lstm_cell/SigmoidSigmoid-forward_lstm_1/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аХ
(forward_lstm_1/while/lstm_cell/Sigmoid_1Sigmoid-forward_lstm_1/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аЃ
"forward_lstm_1/while/lstm_cell/mulMul,forward_lstm_1/while/lstm_cell/Sigmoid_1:y:0"forward_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аН
#forward_lstm_1/while/lstm_cell/ReluRelu-forward_lstm_1/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аљ
$forward_lstm_1/while/lstm_cell/mul_1Mul*forward_lstm_1/while/lstm_cell/Sigmoid:y:01forward_lstm_1/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а≤
$forward_lstm_1/while/lstm_cell/add_1AddV2&forward_lstm_1/while/lstm_cell/mul:z:0(forward_lstm_1/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аХ
(forward_lstm_1/while/lstm_cell/Sigmoid_2Sigmoid-forward_lstm_1/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аК
%forward_lstm_1/while/lstm_cell/Relu_1Relu(forward_lstm_1/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЅ
$forward_lstm_1/while/lstm_cell/mul_2Mul,forward_lstm_1/while/lstm_cell/Sigmoid_2:y:03forward_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аБ
?forward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¶
9forward_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_1_while_placeholder_1Hforward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0(forward_lstm_1/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“\
forward_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Й
forward_lstm_1/while/addAddV2 forward_lstm_1_while_placeholder#forward_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_1/while/add_1AddV26forward_lstm_1_while_forward_lstm_1_while_loop_counter%forward_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ж
forward_lstm_1/while/IdentityIdentityforward_lstm_1/while/add_1:z:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: ¶
forward_lstm_1/while/Identity_1Identity<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: Ж
forward_lstm_1/while/Identity_2Identityforward_lstm_1/while/add:z:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: ≥
forward_lstm_1/while/Identity_3IdentityIforward_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_1/while/Identity_4Identity(forward_lstm_1/while/lstm_cell/mul_2:z:0^forward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а§
forward_lstm_1/while/Identity_5Identity(forward_lstm_1/while/lstm_cell/add_1:z:0^forward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€ая
forward_lstm_1/while/NoOpNoOp6^forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5^forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp7^forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "l
3forward_lstm_1_while_forward_lstm_1_strided_slice_15forward_lstm_1_while_forward_lstm_1_strided_slice_1_0"G
forward_lstm_1_while_identity&forward_lstm_1/while/Identity:output:0"K
forward_lstm_1_while_identity_1(forward_lstm_1/while/Identity_1:output:0"K
forward_lstm_1_while_identity_2(forward_lstm_1/while/Identity_2:output:0"K
forward_lstm_1_while_identity_3(forward_lstm_1/while/Identity_3:output:0"K
forward_lstm_1_while_identity_4(forward_lstm_1/while/Identity_4:output:0"K
forward_lstm_1_while_identity_5(forward_lstm_1/while/Identity_5:output:0"В
>forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"Д
?forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourceAforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"А
=forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"д
oforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensorqforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2n
5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2l
4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2p
6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_1/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_1/strided_slice_1:nj

_output_shapes
: 
P
_user_specified_name86forward_lstm_1/TensorArrayUnstack/TensorListFromTensor:($
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
ЅL
Ч
 forward_lstm_1_while_body_851358:
6forward_lstm_1_while_forward_lstm_1_while_loop_counter@
<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations$
 forward_lstm_1_while_placeholder&
"forward_lstm_1_while_placeholder_1&
"forward_lstm_1_while_placeholder_2&
"forward_lstm_1_while_placeholder_39
5forward_lstm_1_while_forward_lstm_1_strided_slice_1_0u
qforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	АU
Aforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:
аАO
@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	А!
forward_lstm_1_while_identity#
forward_lstm_1_while_identity_1#
forward_lstm_1_while_identity_2#
forward_lstm_1_while_identity_3#
forward_lstm_1_while_identity_4#
forward_lstm_1_while_identity_57
3forward_lstm_1_while_forward_lstm_1_strided_slice_1s
oforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	АS
?forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:
аАM
>forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpҐ4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpҐ6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpЧ
Fforward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   с
8forward_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_1_while_placeholderOforward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0µ
4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0б
%forward_lstm_1/while/lstm_cell/MatMulMatMul?forward_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0»
'forward_lstm_1/while/lstm_cell/MatMul_1MatMul"forward_lstm_1_while_placeholder_2>forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¬
"forward_lstm_1/while/lstm_cell/addAddV2/forward_lstm_1/while/lstm_cell/MatMul:product:01forward_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ћ
&forward_lstm_1/while/lstm_cell/BiasAddBiasAdd&forward_lstm_1/while/lstm_cell/add:z:0=forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
.forward_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ч
$forward_lstm_1/while/lstm_cell/splitSplit7forward_lstm_1/while/lstm_cell/split/split_dim:output:0/forward_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitУ
&forward_lstm_1/while/lstm_cell/SigmoidSigmoid-forward_lstm_1/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аХ
(forward_lstm_1/while/lstm_cell/Sigmoid_1Sigmoid-forward_lstm_1/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аЃ
"forward_lstm_1/while/lstm_cell/mulMul,forward_lstm_1/while/lstm_cell/Sigmoid_1:y:0"forward_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аН
#forward_lstm_1/while/lstm_cell/ReluRelu-forward_lstm_1/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аљ
$forward_lstm_1/while/lstm_cell/mul_1Mul*forward_lstm_1/while/lstm_cell/Sigmoid:y:01forward_lstm_1/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а≤
$forward_lstm_1/while/lstm_cell/add_1AddV2&forward_lstm_1/while/lstm_cell/mul:z:0(forward_lstm_1/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аХ
(forward_lstm_1/while/lstm_cell/Sigmoid_2Sigmoid-forward_lstm_1/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аК
%forward_lstm_1/while/lstm_cell/Relu_1Relu(forward_lstm_1/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЅ
$forward_lstm_1/while/lstm_cell/mul_2Mul,forward_lstm_1/while/lstm_cell/Sigmoid_2:y:03forward_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аБ
?forward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¶
9forward_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_1_while_placeholder_1Hforward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0(forward_lstm_1/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“\
forward_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Й
forward_lstm_1/while/addAddV2 forward_lstm_1_while_placeholder#forward_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_1/while/add_1AddV26forward_lstm_1_while_forward_lstm_1_while_loop_counter%forward_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ж
forward_lstm_1/while/IdentityIdentityforward_lstm_1/while/add_1:z:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: ¶
forward_lstm_1/while/Identity_1Identity<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: Ж
forward_lstm_1/while/Identity_2Identityforward_lstm_1/while/add:z:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: ≥
forward_lstm_1/while/Identity_3IdentityIforward_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_1/while/Identity_4Identity(forward_lstm_1/while/lstm_cell/mul_2:z:0^forward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а§
forward_lstm_1/while/Identity_5Identity(forward_lstm_1/while/lstm_cell/add_1:z:0^forward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€ая
forward_lstm_1/while/NoOpNoOp6^forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5^forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp7^forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "l
3forward_lstm_1_while_forward_lstm_1_strided_slice_15forward_lstm_1_while_forward_lstm_1_strided_slice_1_0"G
forward_lstm_1_while_identity&forward_lstm_1/while/Identity:output:0"K
forward_lstm_1_while_identity_1(forward_lstm_1/while/Identity_1:output:0"K
forward_lstm_1_while_identity_2(forward_lstm_1/while/Identity_2:output:0"K
forward_lstm_1_while_identity_3(forward_lstm_1/while/Identity_3:output:0"K
forward_lstm_1_while_identity_4(forward_lstm_1/while/Identity_4:output:0"K
forward_lstm_1_while_identity_5(forward_lstm_1/while/Identity_5:output:0"В
>forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"Д
?forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourceAforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"А
=forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"д
oforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensorqforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2n
5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2l
4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2p
6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_1/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_1/strided_slice_1:nj

_output_shapes
: 
P
_user_specified_name86forward_lstm_1/TensorArrayUnstack/TensorListFromTensor:($
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
Ш
п
 forward_lstm_1_while_cond_850487:
6forward_lstm_1_while_forward_lstm_1_while_loop_counter@
<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations$
 forward_lstm_1_while_placeholder&
"forward_lstm_1_while_placeholder_1&
"forward_lstm_1_while_placeholder_2&
"forward_lstm_1_while_placeholder_3<
8forward_lstm_1_while_less_forward_lstm_1_strided_slice_1R
Nforward_lstm_1_while_forward_lstm_1_while_cond_850487___redundant_placeholder0R
Nforward_lstm_1_while_forward_lstm_1_while_cond_850487___redundant_placeholder1R
Nforward_lstm_1_while_forward_lstm_1_while_cond_850487___redundant_placeholder2R
Nforward_lstm_1_while_forward_lstm_1_while_cond_850487___redundant_placeholder3!
forward_lstm_1_while_identity
Ю
forward_lstm_1/while/LessLess forward_lstm_1_while_placeholder8forward_lstm_1_while_less_forward_lstm_1_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_1/while/IdentityIdentityforward_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_1_while_identity&forward_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_1/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_1/strided_slice_1:

_output_shapes
:
∆	
√
while_cond_851855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_851855___redundant_placeholder04
0while_while_cond_851855___redundant_placeholder14
0while_while_cond_851855___redundant_placeholder24
0while_while_cond_851855___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ј
й
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_850261
lambda_1_input
unknown:	А
	unknown_0:
аА
	unknown_1:	А
	unknown_2:	А
	unknown_3:
аА
	unknown_4:	А
	unknown_5:	ј
	unknown_6:
identityИҐStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCalllambda_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU 2J 8В *i
fdRb
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_850219o
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
#:€€€€€€€€€: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namelambda_1_input:&"
 
_user_specified_name850243:&"
 
_user_specified_name850245:&"
 
_user_specified_name850247:&"
 
_user_specified_name850249:&"
 
_user_specified_name850251:&"
 
_user_specified_name850253:&"
 
_user_specified_name850255:&"
 
_user_specified_name850257
≥Љ
У
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_851588

inputsJ
7forward_lstm_1_lstm_cell_matmul_readvariableop_resource:	АM
9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource:
аАG
8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource:	АK
8backward_lstm_1_lstm_cell_matmul_readvariableop_resource:	АN
:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource:
аАH
9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpҐ/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpҐ1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpҐbackward_lstm_1/whileҐ/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpҐ.forward_lstm_1/lstm_cell/MatMul/ReadVariableOpҐ0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpҐforward_lstm_1/whileX
forward_lstm_1/ShapeShapeinputs*
T0*
_output_shapes
::нѕl
"forward_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
forward_lstm_1/strided_sliceStridedSliceforward_lstm_1/Shape:output:0+forward_lstm_1/strided_slice/stack:output:0-forward_lstm_1/strided_slice/stack_1:output:0-forward_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а†
forward_lstm_1/zeros/packedPack%forward_lstm_1/strided_slice:output:0&forward_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
forward_lstm_1/zerosFill$forward_lstm_1/zeros/packed:output:0#forward_lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аb
forward_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а§
forward_lstm_1/zeros_1/packedPack%forward_lstm_1/strided_slice:output:0(forward_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    †
forward_lstm_1/zeros_1Fill&forward_lstm_1/zeros_1/packed:output:0%forward_lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аr
forward_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Л
forward_lstm_1/transpose	Transposeinputs&forward_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€p
forward_lstm_1/Shape_1Shapeforward_lstm_1/transpose:y:0*
T0*
_output_shapes
::нѕn
$forward_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
forward_lstm_1/strided_slice_1StridedSliceforward_lstm_1/Shape_1:output:0-forward_lstm_1/strided_slice_1/stack:output:0/forward_lstm_1/strided_slice_1/stack_1:output:0/forward_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€б
forward_lstm_1/TensorArrayV2TensorListReserve3forward_lstm_1/TensorArrayV2/element_shape:output:0'forward_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Х
Dforward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Н
6forward_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_1/transpose:y:0Mforward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“n
$forward_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:і
forward_lstm_1/strided_slice_2StridedSliceforward_lstm_1/transpose:y:0-forward_lstm_1/strided_slice_2/stack:output:0/forward_lstm_1/strided_slice_2/stack_1:output:0/forward_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskІ
.forward_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOp7forward_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0љ
forward_lstm_1/lstm_cell/MatMulMatMul'forward_lstm_1/strided_slice_2:output:06forward_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ађ
0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0Ј
!forward_lstm_1/lstm_cell/MatMul_1MatMulforward_lstm_1/zeros:output:08forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А∞
forward_lstm_1/lstm_cell/addAddV2)forward_lstm_1/lstm_cell/MatMul:product:0+forward_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А•
/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0є
 forward_lstm_1/lstm_cell/BiasAddBiasAdd forward_lstm_1/lstm_cell/add:z:07forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аj
(forward_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
forward_lstm_1/lstm_cell/splitSplit1forward_lstm_1/lstm_cell/split/split_dim:output:0)forward_lstm_1/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitЗ
 forward_lstm_1/lstm_cell/SigmoidSigmoid'forward_lstm_1/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЙ
"forward_lstm_1/lstm_cell/Sigmoid_1Sigmoid'forward_lstm_1/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аЯ
forward_lstm_1/lstm_cell/mulMul&forward_lstm_1/lstm_cell/Sigmoid_1:y:0forward_lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аБ
forward_lstm_1/lstm_cell/ReluRelu'forward_lstm_1/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аЂ
forward_lstm_1/lstm_cell/mul_1Mul$forward_lstm_1/lstm_cell/Sigmoid:y:0+forward_lstm_1/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а†
forward_lstm_1/lstm_cell/add_1AddV2 forward_lstm_1/lstm_cell/mul:z:0"forward_lstm_1/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЙ
"forward_lstm_1/lstm_cell/Sigmoid_2Sigmoid'forward_lstm_1/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а~
forward_lstm_1/lstm_cell/Relu_1Relu"forward_lstm_1/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аѓ
forward_lstm_1/lstm_cell/mul_2Mul&forward_lstm_1/lstm_cell/Sigmoid_2:y:0-forward_lstm_1/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а}
,forward_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   m
+forward_lstm_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :т
forward_lstm_1/TensorArrayV2_1TensorListReserve5forward_lstm_1/TensorArrayV2_1/element_shape:output:04forward_lstm_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“U
forward_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€c
!forward_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
forward_lstm_1/whileWhile*forward_lstm_1/while/loop_counter:output:00forward_lstm_1/while/maximum_iterations:output:0forward_lstm_1/time:output:0'forward_lstm_1/TensorArrayV2_1:handle:0forward_lstm_1/zeros:output:0forward_lstm_1/zeros_1:output:0'forward_lstm_1/strided_slice_1:output:0Fforward_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_1_lstm_cell_matmul_readvariableop_resource9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 forward_lstm_1_while_body_851358*,
cond$R"
 forward_lstm_1_while_cond_851357*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Р
?forward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   Д
1forward_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_1/while:output:3Hforward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
element_dtype0*
num_elementsw
$forward_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€p
&forward_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_1/strided_slice_3StridedSlice:forward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_1/strided_slice_3/stack:output:0/forward_lstm_1/strided_slice_3/stack_1:output:0/forward_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€а*
shrink_axis_maskt
forward_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ƒ
forward_lstm_1/transpose_1	Transpose:forward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€аj
forward_lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Y
backward_lstm_1/ShapeShapeinputs*
T0*
_output_shapes
::нѕm
#backward_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
backward_lstm_1/strided_sliceStridedSlicebackward_lstm_1/Shape:output:0,backward_lstm_1/strided_slice/stack:output:0.backward_lstm_1/strided_slice/stack_1:output:0.backward_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а£
backward_lstm_1/zeros/packedPack&backward_lstm_1/strided_slice:output:0'backward_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
backward_lstm_1/zerosFill%backward_lstm_1/zeros/packed:output:0$backward_lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
 backward_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аІ
backward_lstm_1/zeros_1/packedPack&backward_lstm_1/strided_slice:output:0)backward_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_1/zeros_1Fill'backward_lstm_1/zeros_1/packed:output:0&backward_lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аs
backward_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
backward_lstm_1/transpose	Transposeinputs'backward_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€r
backward_lstm_1/Shape_1Shapebackward_lstm_1/transpose:y:0*
T0*
_output_shapes
::нѕo
%backward_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
backward_lstm_1/strided_slice_1StridedSlice backward_lstm_1/Shape_1:output:0.backward_lstm_1/strided_slice_1/stack:output:00backward_lstm_1/strided_slice_1/stack_1:output:00backward_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€д
backward_lstm_1/TensorArrayV2TensorListReserve4backward_lstm_1/TensorArrayV2/element_shape:output:0(backward_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“h
backward_lstm_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_1/ReverseV2	ReverseV2backward_lstm_1/transpose:y:0'backward_lstm_1/ReverseV2/axis:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ц
Ebackward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Х
7backward_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_1/ReverseV2:output:0Nbackward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“o
%backward_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
backward_lstm_1/strided_slice_2StridedSlicebackward_lstm_1/transpose:y:0.backward_lstm_1/strided_slice_2/stack:output:00backward_lstm_1/strided_slice_2/stack_1:output:00backward_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask©
/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOp8backward_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ј
 backward_lstm_1/lstm_cell/MatMulMatMul(backward_lstm_1/strided_slice_2:output:07backward_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0Ї
"backward_lstm_1/lstm_cell/MatMul_1MatMulbackward_lstm_1/zeros:output:09backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
backward_lstm_1/lstm_cell/addAddV2*backward_lstm_1/lstm_cell/MatMul:product:0,backward_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АІ
0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
!backward_lstm_1/lstm_cell/BiasAddBiasAdd!backward_lstm_1/lstm_cell/add:z:08backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
)backward_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
backward_lstm_1/lstm_cell/splitSplit2backward_lstm_1/lstm_cell/split/split_dim:output:0*backward_lstm_1/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitЙ
!backward_lstm_1/lstm_cell/SigmoidSigmoid(backward_lstm_1/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЛ
#backward_lstm_1/lstm_cell/Sigmoid_1Sigmoid(backward_lstm_1/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аҐ
backward_lstm_1/lstm_cell/mulMul'backward_lstm_1/lstm_cell/Sigmoid_1:y:0 backward_lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аГ
backward_lstm_1/lstm_cell/ReluRelu(backward_lstm_1/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аЃ
backward_lstm_1/lstm_cell/mul_1Mul%backward_lstm_1/lstm_cell/Sigmoid:y:0,backward_lstm_1/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а£
backward_lstm_1/lstm_cell/add_1AddV2!backward_lstm_1/lstm_cell/mul:z:0#backward_lstm_1/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЛ
#backward_lstm_1/lstm_cell/Sigmoid_2Sigmoid(backward_lstm_1/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аА
 backward_lstm_1/lstm_cell/Relu_1Relu#backward_lstm_1/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€а≤
backward_lstm_1/lstm_cell/mul_2Mul'backward_lstm_1/lstm_cell/Sigmoid_2:y:0.backward_lstm_1/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а~
-backward_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   n
,backward_lstm_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :х
backward_lstm_1/TensorArrayV2_1TensorListReserve6backward_lstm_1/TensorArrayV2_1/element_shape:output:05backward_lstm_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“V
backward_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€d
"backward_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ј
backward_lstm_1/whileWhile+backward_lstm_1/while/loop_counter:output:01backward_lstm_1/while/maximum_iterations:output:0backward_lstm_1/time:output:0(backward_lstm_1/TensorArrayV2_1:handle:0backward_lstm_1/zeros:output:0 backward_lstm_1/zeros_1:output:0(backward_lstm_1/strided_slice_1:output:0Gbackward_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_1_lstm_cell_matmul_readvariableop_resource:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*-
body%R#
!backward_lstm_1_while_body_851501*-
cond%R#
!backward_lstm_1_while_cond_851500*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations С
@backward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   З
2backward_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_1/while:output:3Ibackward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
element_dtype0*
num_elementsx
%backward_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€q
'backward_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
backward_lstm_1/strided_slice_3StridedSlice;backward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_1/strided_slice_3/stack:output:00backward_lstm_1/strided_slice_3/stack_1:output:00backward_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€а*
shrink_axis_masku
 backward_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
backward_lstm_1/transpose_1	Transpose;backward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€аk
backward_lstm_1/runtimeConst"/device:CPU:0*
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
concatConcatV2'forward_lstm_1/strided_slice_3:output:0(backward_lstm_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ј_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€јА
NoOpNoOp1^backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp0^backward_lstm_1/lstm_cell/MatMul/ReadVariableOp2^backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_1/while0^forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/^forward_lstm_1/lstm_cell/MatMul/ReadVariableOp1^forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_1/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2d
0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2b
/backward_lstm_1/lstm_cell/MatMul/ReadVariableOp/backward_lstm_1/lstm_cell/MatMul/ReadVariableOp2f
1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2.
backward_lstm_1/whilebackward_lstm_1/while2b
/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2`
.forward_lstm_1/lstm_cell/MatMul/ReadVariableOp.forward_lstm_1/lstm_cell/MatMul/ReadVariableOp2d
0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2,
forward_lstm_1/whileforward_lstm_1/while:S O
+
_output_shapes
:€€€€€€€€€
 
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
Ш
п
 forward_lstm_1_while_cond_849968:
6forward_lstm_1_while_forward_lstm_1_while_loop_counter@
<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations$
 forward_lstm_1_while_placeholder&
"forward_lstm_1_while_placeholder_1&
"forward_lstm_1_while_placeholder_2&
"forward_lstm_1_while_placeholder_3<
8forward_lstm_1_while_less_forward_lstm_1_strided_slice_1R
Nforward_lstm_1_while_forward_lstm_1_while_cond_849968___redundant_placeholder0R
Nforward_lstm_1_while_forward_lstm_1_while_cond_849968___redundant_placeholder1R
Nforward_lstm_1_while_forward_lstm_1_while_cond_849968___redundant_placeholder2R
Nforward_lstm_1_while_forward_lstm_1_while_cond_849968___redundant_placeholder3!
forward_lstm_1_while_identity
Ю
forward_lstm_1/while/LessLess forward_lstm_1_while_placeholder8forward_lstm_1_while_less_forward_lstm_1_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_1/while/IdentityIdentityforward_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_1_while_identity&forward_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_1/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_1/strided_slice_1:

_output_shapes
:
Щ;
В
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_848664

inputs#
lstm_cell_848580:	А$
lstm_cell_848582:
аА
lstm_cell_848584:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
shrink_axis_maskй
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_848580lstm_cell_848582lstm_cell_848584*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848579n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : Х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_848580lstm_cell_848582lstm_cell_848584*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_848594*
condR
while_cond_848593*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аN
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
 
_user_specified_nameinputs:&"
 
_user_specified_name848580:&"
 
_user_specified_name848582:&"
 
_user_specified_name848584
ын
ў
__inference__traced_save_853249
file_prefix8
%read_disablecopyonread_dense_1_kernel:	ј3
%read_1_disablecopyonread_dense_1_bias:[
Hread_2_disablecopyonread_bidirectional_1_forward_lstm_1_lstm_cell_kernel:	Аf
Rread_3_disablecopyonread_bidirectional_1_forward_lstm_1_lstm_cell_recurrent_kernel:
аАU
Fread_4_disablecopyonread_bidirectional_1_forward_lstm_1_lstm_cell_bias:	А\
Iread_5_disablecopyonread_bidirectional_1_backward_lstm_1_lstm_cell_kernel:	Аg
Sread_6_disablecopyonread_bidirectional_1_backward_lstm_1_lstm_cell_recurrent_kernel:
аАV
Gread_7_disablecopyonread_bidirectional_1_backward_lstm_1_lstm_cell_bias:	А,
"read_8_disablecopyonread_iteration:	 0
&read_9_disablecopyonread_learning_rate: c
Pread_10_disablecopyonread_adam_m_bidirectional_1_forward_lstm_1_lstm_cell_kernel:	Аc
Pread_11_disablecopyonread_adam_v_bidirectional_1_forward_lstm_1_lstm_cell_kernel:	Аn
Zread_12_disablecopyonread_adam_m_bidirectional_1_forward_lstm_1_lstm_cell_recurrent_kernel:
аАn
Zread_13_disablecopyonread_adam_v_bidirectional_1_forward_lstm_1_lstm_cell_recurrent_kernel:
аА]
Nread_14_disablecopyonread_adam_m_bidirectional_1_forward_lstm_1_lstm_cell_bias:	А]
Nread_15_disablecopyonread_adam_v_bidirectional_1_forward_lstm_1_lstm_cell_bias:	Аd
Qread_16_disablecopyonread_adam_m_bidirectional_1_backward_lstm_1_lstm_cell_kernel:	Аd
Qread_17_disablecopyonread_adam_v_bidirectional_1_backward_lstm_1_lstm_cell_kernel:	Аo
[read_18_disablecopyonread_adam_m_bidirectional_1_backward_lstm_1_lstm_cell_recurrent_kernel:
аАo
[read_19_disablecopyonread_adam_v_bidirectional_1_backward_lstm_1_lstm_cell_recurrent_kernel:
аА^
Oread_20_disablecopyonread_adam_m_bidirectional_1_backward_lstm_1_lstm_cell_bias:	А^
Oread_21_disablecopyonread_adam_v_bidirectional_1_backward_lstm_1_lstm_cell_bias:	АB
/read_22_disablecopyonread_adam_m_dense_1_kernel:	јB
/read_23_disablecopyonread_adam_v_dense_1_kernel:	ј;
-read_24_disablecopyonread_adam_m_dense_1_bias:;
-read_25_disablecopyonread_adam_v_dense_1_bias:)
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
Read/DisableCopyOnReadDisableCopyOnRead%read_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 Ґ
Read/ReadVariableOpReadVariableOp%read_disablecopyonread_dense_1_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ј*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	јb

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	јy
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 °
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_dense_1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
Read_2/DisableCopyOnReadDisableCopyOnReadHread_2_disablecopyonread_bidirectional_1_forward_lstm_1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 …
Read_2/ReadVariableOpReadVariableOpHread_2_disablecopyonread_bidirectional_1_forward_lstm_1_lstm_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аd

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	А¶
Read_3/DisableCopyOnReadDisableCopyOnReadRread_3_disablecopyonread_bidirectional_1_forward_lstm_1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ‘
Read_3/ReadVariableOpReadVariableOpRread_3_disablecopyonread_bidirectional_1_forward_lstm_1_lstm_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
аА*
dtype0o

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
аАe

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0* 
_output_shapes
:
аАЪ
Read_4/DisableCopyOnReadDisableCopyOnReadFread_4_disablecopyonread_bidirectional_1_forward_lstm_1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 √
Read_4/ReadVariableOpReadVariableOpFread_4_disablecopyonread_bidirectional_1_forward_lstm_1_lstm_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЭ
Read_5/DisableCopyOnReadDisableCopyOnReadIread_5_disablecopyonread_bidirectional_1_backward_lstm_1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
  
Read_5/ReadVariableOpReadVariableOpIread_5_disablecopyonread_bidirectional_1_backward_lstm_1_lstm_cell_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0o
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	АІ
Read_6/DisableCopyOnReadDisableCopyOnReadSread_6_disablecopyonread_bidirectional_1_backward_lstm_1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ’
Read_6/ReadVariableOpReadVariableOpSread_6_disablecopyonread_bidirectional_1_backward_lstm_1_lstm_cell_recurrent_kernel^Read_6/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
аА*
dtype0p
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
аАg
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0* 
_output_shapes
:
аАЫ
Read_7/DisableCopyOnReadDisableCopyOnReadGread_7_disablecopyonread_bidirectional_1_backward_lstm_1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ƒ
Read_7/ReadVariableOpReadVariableOpGread_7_disablecopyonread_bidirectional_1_backward_lstm_1_lstm_cell_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:Аv
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
Read_10/DisableCopyOnReadDisableCopyOnReadPread_10_disablecopyonread_adam_m_bidirectional_1_forward_lstm_1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ”
Read_10/ReadVariableOpReadVariableOpPread_10_disablecopyonread_adam_m_bidirectional_1_forward_lstm_1_lstm_cell_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	А•
Read_11/DisableCopyOnReadDisableCopyOnReadPread_11_disablecopyonread_adam_v_bidirectional_1_forward_lstm_1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ”
Read_11/ReadVariableOpReadVariableOpPread_11_disablecopyonread_adam_v_bidirectional_1_forward_lstm_1_lstm_cell_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:	Аѓ
Read_12/DisableCopyOnReadDisableCopyOnReadZread_12_disablecopyonread_adam_m_bidirectional_1_forward_lstm_1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ё
Read_12/ReadVariableOpReadVariableOpZread_12_disablecopyonread_adam_m_bidirectional_1_forward_lstm_1_lstm_cell_recurrent_kernel^Read_12/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
аА*
dtype0q
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
аАg
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0* 
_output_shapes
:
аАѓ
Read_13/DisableCopyOnReadDisableCopyOnReadZread_13_disablecopyonread_adam_v_bidirectional_1_forward_lstm_1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ё
Read_13/ReadVariableOpReadVariableOpZread_13_disablecopyonread_adam_v_bidirectional_1_forward_lstm_1_lstm_cell_recurrent_kernel^Read_13/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
аА*
dtype0q
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
аАg
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0* 
_output_shapes
:
аА£
Read_14/DisableCopyOnReadDisableCopyOnReadNread_14_disablecopyonread_adam_m_bidirectional_1_forward_lstm_1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_14/ReadVariableOpReadVariableOpNread_14_disablecopyonread_adam_m_bidirectional_1_forward_lstm_1_lstm_cell_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:А£
Read_15/DisableCopyOnReadDisableCopyOnReadNread_15_disablecopyonread_adam_v_bidirectional_1_forward_lstm_1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_15/ReadVariableOpReadVariableOpNread_15_disablecopyonread_adam_v_bidirectional_1_forward_lstm_1_lstm_cell_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:А¶
Read_16/DisableCopyOnReadDisableCopyOnReadQread_16_disablecopyonread_adam_m_bidirectional_1_backward_lstm_1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ‘
Read_16/ReadVariableOpReadVariableOpQread_16_disablecopyonread_adam_m_bidirectional_1_backward_lstm_1_lstm_cell_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:	А¶
Read_17/DisableCopyOnReadDisableCopyOnReadQread_17_disablecopyonread_adam_v_bidirectional_1_backward_lstm_1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ‘
Read_17/ReadVariableOpReadVariableOpQread_17_disablecopyonread_adam_v_bidirectional_1_backward_lstm_1_lstm_cell_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:	А∞
Read_18/DisableCopyOnReadDisableCopyOnRead[read_18_disablecopyonread_adam_m_bidirectional_1_backward_lstm_1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 я
Read_18/ReadVariableOpReadVariableOp[read_18_disablecopyonread_adam_m_bidirectional_1_backward_lstm_1_lstm_cell_recurrent_kernel^Read_18/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
аА*
dtype0q
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
аАg
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0* 
_output_shapes
:
аА∞
Read_19/DisableCopyOnReadDisableCopyOnRead[read_19_disablecopyonread_adam_v_bidirectional_1_backward_lstm_1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 я
Read_19/ReadVariableOpReadVariableOp[read_19_disablecopyonread_adam_v_bidirectional_1_backward_lstm_1_lstm_cell_recurrent_kernel^Read_19/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
аА*
dtype0q
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
аАg
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0* 
_output_shapes
:
аА§
Read_20/DisableCopyOnReadDisableCopyOnReadOread_20_disablecopyonread_adam_m_bidirectional_1_backward_lstm_1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ќ
Read_20/ReadVariableOpReadVariableOpOread_20_disablecopyonread_adam_m_bidirectional_1_backward_lstm_1_lstm_cell_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:А§
Read_21/DisableCopyOnReadDisableCopyOnReadOread_21_disablecopyonread_adam_v_bidirectional_1_backward_lstm_1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ќ
Read_21/ReadVariableOpReadVariableOpOread_21_disablecopyonread_adam_v_bidirectional_1_backward_lstm_1_lstm_cell_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:АД
Read_22/DisableCopyOnReadDisableCopyOnRead/read_22_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_22/ReadVariableOpReadVariableOp/read_22_disablecopyonread_adam_m_dense_1_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ј*
dtype0p
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	јf
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:	јД
Read_23/DisableCopyOnReadDisableCopyOnRead/read_23_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_23/ReadVariableOpReadVariableOp/read_23_disablecopyonread_adam_v_dense_1_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ј*
dtype0p
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	јf
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:	јВ
Read_24/DisableCopyOnReadDisableCopyOnRead-read_24_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_24/ReadVariableOpReadVariableOp-read_24_disablecopyonread_adam_m_dense_1_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
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
Read_25/DisableCopyOnReadDisableCopyOnRead-read_25_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_25/ReadVariableOpReadVariableOp-read_25_disablecopyonread_adam_v_dense_1_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
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
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:OK
I
_user_specified_name1/bidirectional_1/forward_lstm_1/lstm_cell/kernel:YU
S
_user_specified_name;9bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel:MI
G
_user_specified_name/-bidirectional_1/forward_lstm_1/lstm_cell/bias:PL
J
_user_specified_name20bidirectional_1/backward_lstm_1/lstm_cell/kernel:ZV
T
_user_specified_name<:bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel:NJ
H
_user_specified_name0.bidirectional_1/backward_lstm_1/lstm_cell/bias:)	%
#
_user_specified_name	iteration:-
)
'
_user_specified_namelearning_rate:VR
P
_user_specified_name86Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/kernel:VR
P
_user_specified_name86Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/kernel:`\
Z
_user_specified_nameB@Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel:`\
Z
_user_specified_nameB@Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel:TP
N
_user_specified_name64Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/bias:TP
N
_user_specified_name64Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/bias:WS
Q
_user_specified_name97Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/kernel:WS
Q
_user_specified_name97Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/kernel:a]
[
_user_specified_nameCAAdam/m/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel:a]
[
_user_specified_nameCAAdam/v/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel:UQ
O
_user_specified_name75Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/bias:UQ
O
_user_specified_name75Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/bias:51
/
_user_specified_nameAdam/m/dense_1/kernel:51
/
_user_specified_nameAdam/v/dense_1/kernel:3/
-
_user_specified_nameAdam/m/dense_1/bias:3/
-
_user_specified_nameAdam/v/dense_1/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
Щ;
В
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_848813

inputs#
lstm_cell_848729:	А$
lstm_cell_848731:
аА
lstm_cell_848733:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
shrink_axis_maskй
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_848729lstm_cell_848731lstm_cell_848733*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848728n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : Х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_848729lstm_cell_848731lstm_cell_848733*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_848743*
condR
while_cond_848742*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аN
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
 
_user_specified_nameinputs:&"
 
_user_specified_name848729:&"
 
_user_specified_name848731:&"
 
_user_specified_name848733
Ј
Г
!backward_lstm_1_while_cond_850111<
8backward_lstm_1_while_backward_lstm_1_while_loop_counterB
>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations%
!backward_lstm_1_while_placeholder'
#backward_lstm_1_while_placeholder_1'
#backward_lstm_1_while_placeholder_2'
#backward_lstm_1_while_placeholder_3>
:backward_lstm_1_while_less_backward_lstm_1_strided_slice_1T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_850111___redundant_placeholder0T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_850111___redundant_placeholder1T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_850111___redundant_placeholder2T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_850111___redundant_placeholder3"
backward_lstm_1_while_identity
Ґ
backward_lstm_1/while/LessLess!backward_lstm_1_while_placeholder:backward_lstm_1_while_less_backward_lstm_1_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_1/while/IdentityIdentitybackward_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_1_while_identity'backward_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_1/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_1/strided_slice_1:

_output_shapes
:
•:
Ј
while_body_852631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
аА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
аА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
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
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аr
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
:€€€€€€€€€аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а£

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
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2P
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC
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
Ђљ
Х
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_851008
inputs_0J
7forward_lstm_1_lstm_cell_matmul_readvariableop_resource:	АM
9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource:
аАG
8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource:	АK
8backward_lstm_1_lstm_cell_matmul_readvariableop_resource:	АN
:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource:
аАH
9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpҐ/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpҐ1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpҐbackward_lstm_1/whileҐ/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpҐ.forward_lstm_1/lstm_cell/MatMul/ReadVariableOpҐ0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpҐforward_lstm_1/whileZ
forward_lstm_1/ShapeShapeinputs_0*
T0*
_output_shapes
::нѕl
"forward_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
forward_lstm_1/strided_sliceStridedSliceforward_lstm_1/Shape:output:0+forward_lstm_1/strided_slice/stack:output:0-forward_lstm_1/strided_slice/stack_1:output:0-forward_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а†
forward_lstm_1/zeros/packedPack%forward_lstm_1/strided_slice:output:0&forward_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
forward_lstm_1/zerosFill$forward_lstm_1/zeros/packed:output:0#forward_lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аb
forward_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а§
forward_lstm_1/zeros_1/packedPack%forward_lstm_1/strided_slice:output:0(forward_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    †
forward_lstm_1/zeros_1Fill&forward_lstm_1/zeros_1/packed:output:0%forward_lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аr
forward_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
forward_lstm_1/transpose	Transposeinputs_0&forward_lstm_1/transpose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€p
forward_lstm_1/Shape_1Shapeforward_lstm_1/transpose:y:0*
T0*
_output_shapes
::нѕn
$forward_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
forward_lstm_1/strided_slice_1StridedSliceforward_lstm_1/Shape_1:output:0-forward_lstm_1/strided_slice_1/stack:output:0/forward_lstm_1/strided_slice_1/stack_1:output:0/forward_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€б
forward_lstm_1/TensorArrayV2TensorListReserve3forward_lstm_1/TensorArrayV2/element_shape:output:0'forward_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Х
Dforward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€Н
6forward_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_1/transpose:y:0Mforward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“n
$forward_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
forward_lstm_1/strided_slice_2StridedSliceforward_lstm_1/transpose:y:0-forward_lstm_1/strided_slice_2/stack:output:0/forward_lstm_1/strided_slice_2/stack_1:output:0/forward_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_maskІ
.forward_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOp7forward_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0љ
forward_lstm_1/lstm_cell/MatMulMatMul'forward_lstm_1/strided_slice_2:output:06forward_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ађ
0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0Ј
!forward_lstm_1/lstm_cell/MatMul_1MatMulforward_lstm_1/zeros:output:08forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А∞
forward_lstm_1/lstm_cell/addAddV2)forward_lstm_1/lstm_cell/MatMul:product:0+forward_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А•
/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0є
 forward_lstm_1/lstm_cell/BiasAddBiasAdd forward_lstm_1/lstm_cell/add:z:07forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аj
(forward_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
forward_lstm_1/lstm_cell/splitSplit1forward_lstm_1/lstm_cell/split/split_dim:output:0)forward_lstm_1/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitЗ
 forward_lstm_1/lstm_cell/SigmoidSigmoid'forward_lstm_1/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЙ
"forward_lstm_1/lstm_cell/Sigmoid_1Sigmoid'forward_lstm_1/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аЯ
forward_lstm_1/lstm_cell/mulMul&forward_lstm_1/lstm_cell/Sigmoid_1:y:0forward_lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аБ
forward_lstm_1/lstm_cell/ReluRelu'forward_lstm_1/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аЂ
forward_lstm_1/lstm_cell/mul_1Mul$forward_lstm_1/lstm_cell/Sigmoid:y:0+forward_lstm_1/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а†
forward_lstm_1/lstm_cell/add_1AddV2 forward_lstm_1/lstm_cell/mul:z:0"forward_lstm_1/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЙ
"forward_lstm_1/lstm_cell/Sigmoid_2Sigmoid'forward_lstm_1/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а~
forward_lstm_1/lstm_cell/Relu_1Relu"forward_lstm_1/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аѓ
forward_lstm_1/lstm_cell/mul_2Mul&forward_lstm_1/lstm_cell/Sigmoid_2:y:0-forward_lstm_1/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а}
,forward_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   m
+forward_lstm_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :т
forward_lstm_1/TensorArrayV2_1TensorListReserve5forward_lstm_1/TensorArrayV2_1/element_shape:output:04forward_lstm_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“U
forward_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€c
!forward_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
forward_lstm_1/whileWhile*forward_lstm_1/while/loop_counter:output:00forward_lstm_1/while/maximum_iterations:output:0forward_lstm_1/time:output:0'forward_lstm_1/TensorArrayV2_1:handle:0forward_lstm_1/zeros:output:0forward_lstm_1/zeros_1:output:0'forward_lstm_1/strided_slice_1:output:0Fforward_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_1_lstm_cell_matmul_readvariableop_resource9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 forward_lstm_1_while_body_850778*,
cond$R"
 forward_lstm_1_while_cond_850777*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Р
?forward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   Д
1forward_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_1/while:output:3Hforward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
element_dtype0*
num_elementsw
$forward_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€p
&forward_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_1/strided_slice_3StridedSlice:forward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_1/strided_slice_3/stack:output:0/forward_lstm_1/strided_slice_3/stack_1:output:0/forward_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€а*
shrink_axis_maskt
forward_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ƒ
forward_lstm_1/transpose_1	Transpose:forward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€аj
forward_lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    [
backward_lstm_1/ShapeShapeinputs_0*
T0*
_output_shapes
::нѕm
#backward_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
backward_lstm_1/strided_sliceStridedSlicebackward_lstm_1/Shape:output:0,backward_lstm_1/strided_slice/stack:output:0.backward_lstm_1/strided_slice/stack_1:output:0.backward_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а£
backward_lstm_1/zeros/packedPack&backward_lstm_1/strided_slice:output:0'backward_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
backward_lstm_1/zerosFill%backward_lstm_1/zeros/packed:output:0$backward_lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
 backward_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аІ
backward_lstm_1/zeros_1/packedPack&backward_lstm_1/strided_slice:output:0)backward_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_1/zeros_1Fill'backward_lstm_1/zeros_1/packed:output:0&backward_lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аs
backward_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          °
backward_lstm_1/transpose	Transposeinputs_0'backward_lstm_1/transpose/perm:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€r
backward_lstm_1/Shape_1Shapebackward_lstm_1/transpose:y:0*
T0*
_output_shapes
::нѕo
%backward_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
backward_lstm_1/strided_slice_1StridedSlice backward_lstm_1/Shape_1:output:0.backward_lstm_1/strided_slice_1/stack:output:00backward_lstm_1/strided_slice_1/stack_1:output:00backward_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€д
backward_lstm_1/TensorArrayV2TensorListReserve4backward_lstm_1/TensorArrayV2/element_shape:output:0(backward_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“h
backward_lstm_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ґ
backward_lstm_1/ReverseV2	ReverseV2backward_lstm_1/transpose:y:0'backward_lstm_1/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€Ц
Ebackward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€Х
7backward_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_1/ReverseV2:output:0Nbackward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“o
%backward_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
backward_lstm_1/strided_slice_2StridedSlicebackward_lstm_1/transpose:y:0.backward_lstm_1/strided_slice_2/stack:output:00backward_lstm_1/strided_slice_2/stack_1:output:00backward_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
shrink_axis_mask©
/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOp8backward_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ј
 backward_lstm_1/lstm_cell/MatMulMatMul(backward_lstm_1/strided_slice_2:output:07backward_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0Ї
"backward_lstm_1/lstm_cell/MatMul_1MatMulbackward_lstm_1/zeros:output:09backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
backward_lstm_1/lstm_cell/addAddV2*backward_lstm_1/lstm_cell/MatMul:product:0,backward_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АІ
0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
!backward_lstm_1/lstm_cell/BiasAddBiasAdd!backward_lstm_1/lstm_cell/add:z:08backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
)backward_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
backward_lstm_1/lstm_cell/splitSplit2backward_lstm_1/lstm_cell/split/split_dim:output:0*backward_lstm_1/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitЙ
!backward_lstm_1/lstm_cell/SigmoidSigmoid(backward_lstm_1/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЛ
#backward_lstm_1/lstm_cell/Sigmoid_1Sigmoid(backward_lstm_1/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аҐ
backward_lstm_1/lstm_cell/mulMul'backward_lstm_1/lstm_cell/Sigmoid_1:y:0 backward_lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аГ
backward_lstm_1/lstm_cell/ReluRelu(backward_lstm_1/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аЃ
backward_lstm_1/lstm_cell/mul_1Mul%backward_lstm_1/lstm_cell/Sigmoid:y:0,backward_lstm_1/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а£
backward_lstm_1/lstm_cell/add_1AddV2!backward_lstm_1/lstm_cell/mul:z:0#backward_lstm_1/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЛ
#backward_lstm_1/lstm_cell/Sigmoid_2Sigmoid(backward_lstm_1/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аА
 backward_lstm_1/lstm_cell/Relu_1Relu#backward_lstm_1/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€а≤
backward_lstm_1/lstm_cell/mul_2Mul'backward_lstm_1/lstm_cell/Sigmoid_2:y:0.backward_lstm_1/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а~
-backward_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   n
,backward_lstm_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :х
backward_lstm_1/TensorArrayV2_1TensorListReserve6backward_lstm_1/TensorArrayV2_1/element_shape:output:05backward_lstm_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“V
backward_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€d
"backward_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ј
backward_lstm_1/whileWhile+backward_lstm_1/while/loop_counter:output:01backward_lstm_1/while/maximum_iterations:output:0backward_lstm_1/time:output:0(backward_lstm_1/TensorArrayV2_1:handle:0backward_lstm_1/zeros:output:0 backward_lstm_1/zeros_1:output:0(backward_lstm_1/strided_slice_1:output:0Gbackward_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_1_lstm_cell_matmul_readvariableop_resource:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*-
body%R#
!backward_lstm_1_while_body_850921*-
cond%R#
!backward_lstm_1_while_cond_850920*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations С
@backward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   З
2backward_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_1/while:output:3Ibackward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
element_dtype0*
num_elementsx
%backward_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€q
'backward_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
backward_lstm_1/strided_slice_3StridedSlice;backward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_1/strided_slice_3/stack:output:00backward_lstm_1/strided_slice_3/stack_1:output:00backward_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€а*
shrink_axis_masku
 backward_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
backward_lstm_1/transpose_1	Transpose;backward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€аk
backward_lstm_1/runtimeConst"/device:CPU:0*
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
concatConcatV2'forward_lstm_1/strided_slice_3:output:0(backward_lstm_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ј_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€јА
NoOpNoOp1^backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp0^backward_lstm_1/lstm_cell/MatMul/ReadVariableOp2^backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_1/while0^forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/^forward_lstm_1/lstm_cell/MatMul/ReadVariableOp1^forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_1/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : 2d
0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2b
/backward_lstm_1/lstm_cell/MatMul/ReadVariableOp/backward_lstm_1/lstm_cell/MatMul/ReadVariableOp2f
1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2.
backward_lstm_1/whilebackward_lstm_1/while2b
/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2`
.forward_lstm_1/lstm_cell/MatMul/ReadVariableOp.forward_lstm_1/lstm_cell/MatMul/ReadVariableOp2d
0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2,
forward_lstm_1/whileforward_lstm_1/while:g c
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
ЅL
Ч
 forward_lstm_1_while_body_849969:
6forward_lstm_1_while_forward_lstm_1_while_loop_counter@
<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations$
 forward_lstm_1_while_placeholder&
"forward_lstm_1_while_placeholder_1&
"forward_lstm_1_while_placeholder_2&
"forward_lstm_1_while_placeholder_39
5forward_lstm_1_while_forward_lstm_1_strided_slice_1_0u
qforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	АU
Aforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:
аАO
@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	А!
forward_lstm_1_while_identity#
forward_lstm_1_while_identity_1#
forward_lstm_1_while_identity_2#
forward_lstm_1_while_identity_3#
forward_lstm_1_while_identity_4#
forward_lstm_1_while_identity_57
3forward_lstm_1_while_forward_lstm_1_strided_slice_1s
oforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	АS
?forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:
аАM
>forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpҐ4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpҐ6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpЧ
Fforward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   с
8forward_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_1_while_placeholderOforward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0µ
4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0б
%forward_lstm_1/while/lstm_cell/MatMulMatMul?forward_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0»
'forward_lstm_1/while/lstm_cell/MatMul_1MatMul"forward_lstm_1_while_placeholder_2>forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¬
"forward_lstm_1/while/lstm_cell/addAddV2/forward_lstm_1/while/lstm_cell/MatMul:product:01forward_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ћ
&forward_lstm_1/while/lstm_cell/BiasAddBiasAdd&forward_lstm_1/while/lstm_cell/add:z:0=forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
.forward_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ч
$forward_lstm_1/while/lstm_cell/splitSplit7forward_lstm_1/while/lstm_cell/split/split_dim:output:0/forward_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitУ
&forward_lstm_1/while/lstm_cell/SigmoidSigmoid-forward_lstm_1/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аХ
(forward_lstm_1/while/lstm_cell/Sigmoid_1Sigmoid-forward_lstm_1/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аЃ
"forward_lstm_1/while/lstm_cell/mulMul,forward_lstm_1/while/lstm_cell/Sigmoid_1:y:0"forward_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аН
#forward_lstm_1/while/lstm_cell/ReluRelu-forward_lstm_1/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аљ
$forward_lstm_1/while/lstm_cell/mul_1Mul*forward_lstm_1/while/lstm_cell/Sigmoid:y:01forward_lstm_1/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а≤
$forward_lstm_1/while/lstm_cell/add_1AddV2&forward_lstm_1/while/lstm_cell/mul:z:0(forward_lstm_1/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аХ
(forward_lstm_1/while/lstm_cell/Sigmoid_2Sigmoid-forward_lstm_1/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аК
%forward_lstm_1/while/lstm_cell/Relu_1Relu(forward_lstm_1/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЅ
$forward_lstm_1/while/lstm_cell/mul_2Mul,forward_lstm_1/while/lstm_cell/Sigmoid_2:y:03forward_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аБ
?forward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¶
9forward_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_1_while_placeholder_1Hforward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0(forward_lstm_1/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“\
forward_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Й
forward_lstm_1/while/addAddV2 forward_lstm_1_while_placeholder#forward_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_1/while/add_1AddV26forward_lstm_1_while_forward_lstm_1_while_loop_counter%forward_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ж
forward_lstm_1/while/IdentityIdentityforward_lstm_1/while/add_1:z:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: ¶
forward_lstm_1/while/Identity_1Identity<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: Ж
forward_lstm_1/while/Identity_2Identityforward_lstm_1/while/add:z:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: ≥
forward_lstm_1/while/Identity_3IdentityIforward_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_1/while/Identity_4Identity(forward_lstm_1/while/lstm_cell/mul_2:z:0^forward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а§
forward_lstm_1/while/Identity_5Identity(forward_lstm_1/while/lstm_cell/add_1:z:0^forward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€ая
forward_lstm_1/while/NoOpNoOp6^forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5^forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp7^forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "l
3forward_lstm_1_while_forward_lstm_1_strided_slice_15forward_lstm_1_while_forward_lstm_1_strided_slice_1_0"G
forward_lstm_1_while_identity&forward_lstm_1/while/Identity:output:0"K
forward_lstm_1_while_identity_1(forward_lstm_1/while/Identity_1:output:0"K
forward_lstm_1_while_identity_2(forward_lstm_1/while/Identity_2:output:0"K
forward_lstm_1_while_identity_3(forward_lstm_1/while/Identity_3:output:0"K
forward_lstm_1_while_identity_4(forward_lstm_1/while/Identity_4:output:0"K
forward_lstm_1_while_identity_5(forward_lstm_1/while/Identity_5:output:0"В
>forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"Д
?forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourceAforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"А
=forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"д
oforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensorqforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2n
5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2l
4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2p
6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_1/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_1/strided_slice_1:nj

_output_shapes
: 
P
_user_specified_name86forward_lstm_1/TensorArrayUnstack/TensorListFromTensor:($
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
Й
ґ
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_849181

inputs(
forward_lstm_1_849017:	А)
forward_lstm_1_849019:
аА$
forward_lstm_1_849021:	А)
backward_lstm_1_849171:	А*
backward_lstm_1_849173:
аА%
backward_lstm_1_849175:	А
identityИҐ'backward_lstm_1/StatefulPartitionedCallҐ&forward_lstm_1/StatefulPartitionedCallҐ
&forward_lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_1_849017forward_lstm_1_849019forward_lstm_1_849021*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_849016І
'backward_lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_1_849171backward_lstm_1_849173backward_lstm_1_849175*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_849170M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :«
concatConcatV2/forward_lstm_1/StatefulPartitionedCall:output:00backward_lstm_1/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ј_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€јu
NoOpNoOp(^backward_lstm_1/StatefulPartitionedCall'^forward_lstm_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : 2R
'backward_lstm_1/StatefulPartitionedCall'backward_lstm_1/StatefulPartitionedCall2P
&forward_lstm_1/StatefulPartitionedCall&forward_lstm_1/StatefulPartitionedCall:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name849017:&"
 
_user_specified_name849019:&"
 
_user_specified_name849021:&"
 
_user_specified_name849171:&"
 
_user_specified_name849173:&"
 
_user_specified_name849175
ъ	
х
C__inference_dense_1_layer_call_and_return_conditional_losses_851607

inputs1
matmul_readvariableop_resource:	ј-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ј*
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
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
∆	
√
while_cond_852630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_852630___redundant_placeholder04
0while_while_cond_852630___redundant_placeholder14
0while_while_cond_852630___redundant_placeholder24
0while_while_cond_852630___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ј
Г
!backward_lstm_1_while_cond_850920<
8backward_lstm_1_while_backward_lstm_1_while_loop_counterB
>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations%
!backward_lstm_1_while_placeholder'
#backward_lstm_1_while_placeholder_1'
#backward_lstm_1_while_placeholder_2'
#backward_lstm_1_while_placeholder_3>
:backward_lstm_1_while_less_backward_lstm_1_strided_slice_1T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_850920___redundant_placeholder0T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_850920___redundant_placeholder1T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_850920___redundant_placeholder2T
Pbackward_lstm_1_while_backward_lstm_1_while_cond_850920___redundant_placeholder3"
backward_lstm_1_while_identity
Ґ
backward_lstm_1/while/LessLess!backward_lstm_1_while_placeholder:backward_lstm_1_while_less_backward_lstm_1_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_1/while/IdentityIdentitybackward_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_1_while_identity'backward_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_1/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_1/strided_slice_1:

_output_shapes
:
∆	
√
while_cond_852336
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_852336___redundant_placeholder04
0while_while_cond_852336___redundant_placeholder14
0while_while_cond_852336___redundant_placeholder24
0while_while_cond_852336___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
•
E
)__inference_lambda_1_layer_call_fn_850343

inputs
identity≥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_849579d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Д
Ч
0__inference_bidirectional_1_layer_call_fn_850394
inputs_0
unknown:	А
	unknown_0:
аА
	unknown_1:	А
	unknown_2:	А
	unknown_3:
аА
	unknown_4:	А
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_849493p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€ј<
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
inputs_0:&"
 
_user_specified_name850380:&"
 
_user_specified_name850382:&"
 
_user_specified_name850384:&"
 
_user_specified_name850386:&"
 
_user_specified_name850388:&"
 
_user_specified_name850390
ƒ
ф
*__inference_lstm_cell_layer_call_fn_852995

inputs
states_0
states_1
unknown:	А
	unknown_0:
аА
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848728p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€а:€€€€€€€€€а: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€а
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€а
"
_user_specified_name
states_1:&"
 
_user_specified_name852983:&"
 
_user_specified_name852985:&"
 
_user_specified_name852987
£О
й
Vmodel_9_bidirectionalLSTM_univariate_bidirectional_1_backward_lstm_1_while_body_848072І
Ґmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_loop_counter≠
®model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_maximum_iterationsZ
Vmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_placeholder\
Xmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_placeholder_1\
Xmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_placeholder_2\
Xmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_placeholder_3¶
°model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_strided_slice_1_0в
Ёmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0И
umodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	АЛ
wmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:
аАЕ
vmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	АW
Smodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_identityY
Umodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_identity_1Y
Umodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_identity_2Y
Umodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_identity_3Y
Umodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_identity_4Y
Umodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_identity_5§
Яmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_strided_slice_1а
џmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_tensorarrayunstack_tensorlistfromtensorЖ
smodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	АЙ
umodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:
аАГ
tmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	АИҐkmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpҐjmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpҐlmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpЌ
|model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Б
nmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЁmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0Vmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_placeholderЕmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0°
jmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpumodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0Г
[model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMulMatMulumodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¶
lmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpwmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0к
]model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMul_1MatMulXmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_placeholder_2tmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ад
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/addAddV2emodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMul:product:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЯ
kmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpvmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0н
\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/BiasAddBiasAdd\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/add:z:0smodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¶
dmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/splitSplitmmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/split/split_dim:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_split€
\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/SigmoidSigmoidcmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аБ
^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/Sigmoid_1Sigmoidcmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€а–
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/mulMulbmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/Sigmoid_1:y:0Xmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€ащ
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/ReluRelucmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€ая
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/mul_1Mul`model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/Sigmoid:y:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а‘
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/add_1AddV2\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/mul:z:0^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аБ
^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/Sigmoid_2Sigmoidcmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€ац
[model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/Relu_1Relu^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аг
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/mul_2Mulbmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/Sigmoid_2:y:0imodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аЈ
umodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ю
omodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemXmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_placeholder_1~model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“Т
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ђ
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/addAddV2Vmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_placeholderYmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: Ф
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ь
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/add_1AddV2Ґmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_loop_counter[model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: ®
Smodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/IdentityIdentityTmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/add_1:z:0P^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/NoOp*
T0*
_output_shapes
: €
Umodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/Identity_1Identity®model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_maximum_iterationsP^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/NoOp*
T0*
_output_shapes
: ®
Umodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/Identity_2IdentityRmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/add:z:0P^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/NoOp*
T0*
_output_shapes
: ’
Umodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/Identity_3Identitymodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0P^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/NoOp*
T0*
_output_shapes
: ∆
Umodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/Identity_4Identity^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/mul_2:z:0P^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а∆
Umodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/Identity_5Identity^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/add_1:z:0P^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аЈ
Omodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/NoOpNoOpl^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpk^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpm^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "≥
Smodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_identity\model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/Identity:output:0"Ј
Umodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_identity_1^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/Identity_1:output:0"Ј
Umodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_identity_2^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/Identity_2:output:0"Ј
Umodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_identity_3^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/Identity_3:output:0"Ј
Umodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_identity_4^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/Identity_4:output:0"Ј
Umodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_identity_5^model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/Identity_5:output:0"о
tmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resourcevmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"р
umodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourcewmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"м
smodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_lstm_cell_matmul_readvariableop_resourceumodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"∆
Яmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_strided_slice_1°model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_strided_slice_1_0"Њ
џmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_tensorarrayunstack_tensorlistfromtensorЁmodel_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_1_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2Џ
kmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpkmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2Ў
jmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpjmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2№
lmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOplmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:Р Л

_output_shapes
: 
q
_user_specified_nameYWmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/loop_counter:ЦС

_output_shapes
: 
w
_user_specified_name_]model_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:НИ

_output_shapes
: 
n
_user_specified_nameVTmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/strided_slice_1:¶°

_output_shapes
: 
Ж
_user_specified_namenlmodel_9_bidirectionalLSTM_univariate/bidirectional_1/backward_lstm_1/TensorArrayUnstack/TensorListFromTensor:($
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
п
Ц
(__inference_dense_1_layer_call_fn_851597

inputs
unknown:	ј
	unknown_0:
identityИҐStatefulPartitionedCallЎ
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
GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_849893o
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
:€€€€€€€€€ј: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs:&"
 
_user_specified_name851591:&"
 
_user_specified_name851593
 L
Ч
 forward_lstm_1_while_body_850778:
6forward_lstm_1_while_forward_lstm_1_while_loop_counter@
<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations$
 forward_lstm_1_while_placeholder&
"forward_lstm_1_while_placeholder_1&
"forward_lstm_1_while_placeholder_2&
"forward_lstm_1_while_placeholder_39
5forward_lstm_1_while_forward_lstm_1_strided_slice_1_0u
qforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	АU
Aforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:
аАO
@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	А!
forward_lstm_1_while_identity#
forward_lstm_1_while_identity_1#
forward_lstm_1_while_identity_2#
forward_lstm_1_while_identity_3#
forward_lstm_1_while_identity_4#
forward_lstm_1_while_identity_57
3forward_lstm_1_while_forward_lstm_1_strided_slice_1s
oforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	АS
?forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:
аАM
>forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpҐ4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpҐ6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpЧ
Fforward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€ъ
8forward_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_1_while_placeholderOforward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0µ
4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0б
%forward_lstm_1/while/lstm_cell/MatMulMatMul?forward_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0»
'forward_lstm_1/while/lstm_cell/MatMul_1MatMul"forward_lstm_1_while_placeholder_2>forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¬
"forward_lstm_1/while/lstm_cell/addAddV2/forward_lstm_1/while/lstm_cell/MatMul:product:01forward_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ћ
&forward_lstm_1/while/lstm_cell/BiasAddBiasAdd&forward_lstm_1/while/lstm_cell/add:z:0=forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
.forward_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ч
$forward_lstm_1/while/lstm_cell/splitSplit7forward_lstm_1/while/lstm_cell/split/split_dim:output:0/forward_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitУ
&forward_lstm_1/while/lstm_cell/SigmoidSigmoid-forward_lstm_1/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аХ
(forward_lstm_1/while/lstm_cell/Sigmoid_1Sigmoid-forward_lstm_1/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аЃ
"forward_lstm_1/while/lstm_cell/mulMul,forward_lstm_1/while/lstm_cell/Sigmoid_1:y:0"forward_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аН
#forward_lstm_1/while/lstm_cell/ReluRelu-forward_lstm_1/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аљ
$forward_lstm_1/while/lstm_cell/mul_1Mul*forward_lstm_1/while/lstm_cell/Sigmoid:y:01forward_lstm_1/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а≤
$forward_lstm_1/while/lstm_cell/add_1AddV2&forward_lstm_1/while/lstm_cell/mul:z:0(forward_lstm_1/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аХ
(forward_lstm_1/while/lstm_cell/Sigmoid_2Sigmoid-forward_lstm_1/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аК
%forward_lstm_1/while/lstm_cell/Relu_1Relu(forward_lstm_1/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЅ
$forward_lstm_1/while/lstm_cell/mul_2Mul,forward_lstm_1/while/lstm_cell/Sigmoid_2:y:03forward_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аБ
?forward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¶
9forward_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_1_while_placeholder_1Hforward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0(forward_lstm_1/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“\
forward_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Й
forward_lstm_1/while/addAddV2 forward_lstm_1_while_placeholder#forward_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_1/while/add_1AddV26forward_lstm_1_while_forward_lstm_1_while_loop_counter%forward_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ж
forward_lstm_1/while/IdentityIdentityforward_lstm_1/while/add_1:z:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: ¶
forward_lstm_1/while/Identity_1Identity<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: Ж
forward_lstm_1/while/Identity_2Identityforward_lstm_1/while/add:z:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: ≥
forward_lstm_1/while/Identity_3IdentityIforward_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_1/while/Identity_4Identity(forward_lstm_1/while/lstm_cell/mul_2:z:0^forward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а§
forward_lstm_1/while/Identity_5Identity(forward_lstm_1/while/lstm_cell/add_1:z:0^forward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€ая
forward_lstm_1/while/NoOpNoOp6^forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5^forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp7^forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "l
3forward_lstm_1_while_forward_lstm_1_strided_slice_15forward_lstm_1_while_forward_lstm_1_strided_slice_1_0"G
forward_lstm_1_while_identity&forward_lstm_1/while/Identity:output:0"K
forward_lstm_1_while_identity_1(forward_lstm_1/while/Identity_1:output:0"K
forward_lstm_1_while_identity_2(forward_lstm_1/while/Identity_2:output:0"K
forward_lstm_1_while_identity_3(forward_lstm_1/while/Identity_3:output:0"K
forward_lstm_1_while_identity_4(forward_lstm_1/while/Identity_4:output:0"K
forward_lstm_1_while_identity_5(forward_lstm_1/while/Identity_5:output:0"В
>forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"Д
?forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourceAforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"А
=forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"д
oforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensorqforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2n
5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2l
4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2p
6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_1/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_1/strided_slice_1:nj

_output_shapes
: 
P
_user_specified_name86forward_lstm_1/TensorArrayUnstack/TensorListFromTensor:($
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
•:
Ј
while_body_849397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
аА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
аА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
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
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аr
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
:€€€€€€€€€аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а£

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
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2P
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC
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
∆	
√
while_cond_852777
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_852777___redundant_placeholder04
0while_while_cond_852777___redundant_placeholder14
0while_while_cond_852777___redundant_placeholder24
0while_while_cond_852777___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
№M
Ј
!backward_lstm_1_while_body_849783<
8backward_lstm_1_while_backward_lstm_1_while_loop_counterB
>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations%
!backward_lstm_1_while_placeholder'
#backward_lstm_1_while_placeholder_1'
#backward_lstm_1_while_placeholder_2'
#backward_lstm_1_while_placeholder_3;
7backward_lstm_1_while_backward_lstm_1_strided_slice_1_0w
sbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	АV
Bbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:
аАP
Abackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	А"
backward_lstm_1_while_identity$
 backward_lstm_1_while_identity_1$
 backward_lstm_1_while_identity_2$
 backward_lstm_1_while_identity_3$
 backward_lstm_1_while_identity_4$
 backward_lstm_1_while_identity_59
5backward_lstm_1_while_backward_lstm_1_strided_slice_1u
qbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	АT
@backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:
аАN
?backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpҐ5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpҐ7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpШ
Gbackward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ц
9backward_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_1_while_placeholderPbackward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ј
5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0д
&backward_lstm_1/while/lstm_cell/MatMulMatMul@backward_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЉ
7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ћ
(backward_lstm_1/while/lstm_cell/MatMul_1MatMul#backward_lstm_1_while_placeholder_2?backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≈
#backward_lstm_1/while/lstm_cell/addAddV20backward_lstm_1/while/lstm_cell/MatMul:product:02backward_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0ќ
'backward_lstm_1/while/lstm_cell/BiasAddBiasAdd'backward_lstm_1/while/lstm_cell/add:z:0>backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
/backward_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
%backward_lstm_1/while/lstm_cell/splitSplit8backward_lstm_1/while/lstm_cell/split/split_dim:output:00backward_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitХ
'backward_lstm_1/while/lstm_cell/SigmoidSigmoid.backward_lstm_1/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЧ
)backward_lstm_1/while/lstm_cell/Sigmoid_1Sigmoid.backward_lstm_1/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€а±
#backward_lstm_1/while/lstm_cell/mulMul-backward_lstm_1/while/lstm_cell/Sigmoid_1:y:0#backward_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аП
$backward_lstm_1/while/lstm_cell/ReluRelu.backward_lstm_1/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€ај
%backward_lstm_1/while/lstm_cell/mul_1Mul+backward_lstm_1/while/lstm_cell/Sigmoid:y:02backward_lstm_1/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аµ
%backward_lstm_1/while/lstm_cell/add_1AddV2'backward_lstm_1/while/lstm_cell/mul:z:0)backward_lstm_1/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЧ
)backward_lstm_1/while/lstm_cell/Sigmoid_2Sigmoid.backward_lstm_1/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аМ
&backward_lstm_1/while/lstm_cell/Relu_1Relu)backward_lstm_1/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аƒ
%backward_lstm_1/while/lstm_cell/mul_2Mul-backward_lstm_1/while/lstm_cell/Sigmoid_2:y:04backward_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
@backward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ™
:backward_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_1_while_placeholder_1Ibackward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0)backward_lstm_1/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“]
backward_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :М
backward_lstm_1/while/addAddV2!backward_lstm_1_while_placeholder$backward_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_1/while/add_1AddV28backward_lstm_1_while_backward_lstm_1_while_loop_counter&backward_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: Й
backward_lstm_1/while/IdentityIdentitybackward_lstm_1/while/add_1:z:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: ™
 backward_lstm_1/while/Identity_1Identity>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: Й
 backward_lstm_1/while/Identity_2Identitybackward_lstm_1/while/add:z:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: ґ
 backward_lstm_1/while/Identity_3IdentityJbackward_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: І
 backward_lstm_1/while/Identity_4Identity)backward_lstm_1/while/lstm_cell/mul_2:z:0^backward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аІ
 backward_lstm_1/while/Identity_5Identity)backward_lstm_1/while/lstm_cell/add_1:z:0^backward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аг
backward_lstm_1/while/NoOpNoOp7^backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp6^backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp8^backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5backward_lstm_1_while_backward_lstm_1_strided_slice_17backward_lstm_1_while_backward_lstm_1_strided_slice_1_0"I
backward_lstm_1_while_identity'backward_lstm_1/while/Identity:output:0"M
 backward_lstm_1_while_identity_1)backward_lstm_1/while/Identity_1:output:0"M
 backward_lstm_1_while_identity_2)backward_lstm_1/while/Identity_2:output:0"M
 backward_lstm_1_while_identity_3)backward_lstm_1/while/Identity_3:output:0"M
 backward_lstm_1_while_identity_4)backward_lstm_1/while/Identity_4:output:0"M
 backward_lstm_1_while_identity_5)backward_lstm_1/while/Identity_5:output:0"Д
?backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resourceAbackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"Ж
@backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourceBbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"В
>backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"и
qbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2p
6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2n
5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2r
7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_1/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_1/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97backward_lstm_1/TensorArrayUnstack/TensorListFromTensor:($
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
Џ

Х
0__inference_bidirectional_1_layer_call_fn_850411

inputs
unknown:	А
	unknown_0:
аА
	unknown_1:	А
	unknown_2:	А
	unknown_3:
аА
	unknown_4:	А
identityИҐStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_849870p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€ј<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name850397:&"
 
_user_specified_name850399:&"
 
_user_specified_name850401:&"
 
_user_specified_name850403:&"
 
_user_specified_name850405:&"
 
_user_specified_name850407
Ь:
Ј
while_body_851711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
аА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
аА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
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
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аr
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
:€€€€€€€€€аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а£

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
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2P
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC
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
Д
Ч
0__inference_bidirectional_1_layer_call_fn_850377
inputs_0
unknown:	А
	unknown_0:
аА
	unknown_1:	А
	unknown_2:	А
	unknown_3:
аА
	unknown_4:	А
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_849181p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€ј<
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
inputs_0:&"
 
_user_specified_name850363:&"
 
_user_specified_name850365:&"
 
_user_specified_name850367:&"
 
_user_specified_name850369:&"
 
_user_specified_name850371:&"
 
_user_specified_name850373
ХK
У
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_851941
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
аА8
)lstm_cell_biasadd_readvariableop_resource:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€а~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_851856*
condR
while_cond_851855*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аУ
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
„
»
$__inference_signature_wrapper_850338
lambda_1_input
unknown:	А
	unknown_0:
аА
	unknown_1:	А
	unknown_2:	А
	unknown_3:
аА
	unknown_4:	А
	unknown_5:	ј
	unknown_6:
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCalllambda_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU 2J 8В **
f%R#
!__inference__wrapped_model_848165o
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
#:€€€€€€€€€: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namelambda_1_input:&"
 
_user_specified_name850320:&"
 
_user_specified_name850322:&"
 
_user_specified_name850324:&"
 
_user_specified_name850326:&"
 
_user_specified_name850328:&"
 
_user_specified_name850330:&"
 
_user_specified_name850332:&"
 
_user_specified_name850334
—
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_849908

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
:€€€€€€€€€_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ЪM
Т
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852716

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
аА8
)lstm_cell_biasadd_readvariableop_resource:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€а~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_852631*
condR
while_cond_852630*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аУ
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
№M
Ј
!backward_lstm_1_while_body_851501<
8backward_lstm_1_while_backward_lstm_1_while_loop_counterB
>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations%
!backward_lstm_1_while_placeholder'
#backward_lstm_1_while_placeholder_1'
#backward_lstm_1_while_placeholder_2'
#backward_lstm_1_while_placeholder_3;
7backward_lstm_1_while_backward_lstm_1_strided_slice_1_0w
sbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	АV
Bbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:
аАP
Abackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	А"
backward_lstm_1_while_identity$
 backward_lstm_1_while_identity_1$
 backward_lstm_1_while_identity_2$
 backward_lstm_1_while_identity_3$
 backward_lstm_1_while_identity_4$
 backward_lstm_1_while_identity_59
5backward_lstm_1_while_backward_lstm_1_strided_slice_1u
qbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	АT
@backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:
аАN
?backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpҐ5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpҐ7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpШ
Gbackward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ц
9backward_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_1_while_placeholderPbackward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ј
5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0д
&backward_lstm_1/while/lstm_cell/MatMulMatMul@backward_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЉ
7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ћ
(backward_lstm_1/while/lstm_cell/MatMul_1MatMul#backward_lstm_1_while_placeholder_2?backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≈
#backward_lstm_1/while/lstm_cell/addAddV20backward_lstm_1/while/lstm_cell/MatMul:product:02backward_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0ќ
'backward_lstm_1/while/lstm_cell/BiasAddBiasAdd'backward_lstm_1/while/lstm_cell/add:z:0>backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
/backward_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
%backward_lstm_1/while/lstm_cell/splitSplit8backward_lstm_1/while/lstm_cell/split/split_dim:output:00backward_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitХ
'backward_lstm_1/while/lstm_cell/SigmoidSigmoid.backward_lstm_1/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЧ
)backward_lstm_1/while/lstm_cell/Sigmoid_1Sigmoid.backward_lstm_1/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€а±
#backward_lstm_1/while/lstm_cell/mulMul-backward_lstm_1/while/lstm_cell/Sigmoid_1:y:0#backward_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аП
$backward_lstm_1/while/lstm_cell/ReluRelu.backward_lstm_1/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€ај
%backward_lstm_1/while/lstm_cell/mul_1Mul+backward_lstm_1/while/lstm_cell/Sigmoid:y:02backward_lstm_1/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аµ
%backward_lstm_1/while/lstm_cell/add_1AddV2'backward_lstm_1/while/lstm_cell/mul:z:0)backward_lstm_1/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЧ
)backward_lstm_1/while/lstm_cell/Sigmoid_2Sigmoid.backward_lstm_1/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аМ
&backward_lstm_1/while/lstm_cell/Relu_1Relu)backward_lstm_1/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аƒ
%backward_lstm_1/while/lstm_cell/mul_2Mul-backward_lstm_1/while/lstm_cell/Sigmoid_2:y:04backward_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
@backward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ™
:backward_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_1_while_placeholder_1Ibackward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0)backward_lstm_1/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“]
backward_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :М
backward_lstm_1/while/addAddV2!backward_lstm_1_while_placeholder$backward_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_1/while/add_1AddV28backward_lstm_1_while_backward_lstm_1_while_loop_counter&backward_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: Й
backward_lstm_1/while/IdentityIdentitybackward_lstm_1/while/add_1:z:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: ™
 backward_lstm_1/while/Identity_1Identity>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: Й
 backward_lstm_1/while/Identity_2Identitybackward_lstm_1/while/add:z:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: ґ
 backward_lstm_1/while/Identity_3IdentityJbackward_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: І
 backward_lstm_1/while/Identity_4Identity)backward_lstm_1/while/lstm_cell/mul_2:z:0^backward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аІ
 backward_lstm_1/while/Identity_5Identity)backward_lstm_1/while/lstm_cell/add_1:z:0^backward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аг
backward_lstm_1/while/NoOpNoOp7^backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp6^backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp8^backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5backward_lstm_1_while_backward_lstm_1_strided_slice_17backward_lstm_1_while_backward_lstm_1_strided_slice_1_0"I
backward_lstm_1_while_identity'backward_lstm_1/while/Identity:output:0"M
 backward_lstm_1_while_identity_1)backward_lstm_1/while/Identity_1:output:0"M
 backward_lstm_1_while_identity_2)backward_lstm_1/while/Identity_2:output:0"M
 backward_lstm_1_while_identity_3)backward_lstm_1/while/Identity_3:output:0"M
 backward_lstm_1_while_identity_4)backward_lstm_1/while/Identity_4:output:0"M
 backward_lstm_1_while_identity_5)backward_lstm_1/while/Identity_5:output:0"Д
?backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resourceAbackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"Ж
@backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourceBbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"В
>backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"и
qbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2p
6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2n
5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2r
7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_1/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_1/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97backward_lstm_1/TensorArrayUnstack/TensorListFromTensor:($
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
Ш
п
 forward_lstm_1_while_cond_851357:
6forward_lstm_1_while_forward_lstm_1_while_loop_counter@
<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations$
 forward_lstm_1_while_placeholder&
"forward_lstm_1_while_placeholder_1&
"forward_lstm_1_while_placeholder_2&
"forward_lstm_1_while_placeholder_3<
8forward_lstm_1_while_less_forward_lstm_1_strided_slice_1R
Nforward_lstm_1_while_forward_lstm_1_while_cond_851357___redundant_placeholder0R
Nforward_lstm_1_while_forward_lstm_1_while_cond_851357___redundant_placeholder1R
Nforward_lstm_1_while_forward_lstm_1_while_cond_851357___redundant_placeholder2R
Nforward_lstm_1_while_forward_lstm_1_while_cond_851357___redundant_placeholder3!
forward_lstm_1_while_identity
Ю
forward_lstm_1/while/LessLess forward_lstm_1_while_placeholder8forward_lstm_1_while_less_forward_lstm_1_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_1/while/IdentityIdentityforward_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_1_while_identity&forward_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_1/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_1/strided_slice_1:

_output_shapes
:
ƒ
ф
*__inference_lstm_cell_layer_call_fn_852880

inputs
states_0
states_1
unknown:	А
	unknown_0:
аА
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848227p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€а:€€€€€€€€€а: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€а
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€а
"
_user_specified_name
states_1:&"
 
_user_specified_name852868:&"
 
_user_specified_name852870:&"
 
_user_specified_name852872
ф
њ
/__inference_forward_lstm_1_layer_call_fn_851629
inputs_0
unknown:	А
	unknown_0:
аА
	unknown_1:	А
identityИҐStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_848459p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а<
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
inputs_0:&"
 
_user_specified_name851621:&"
 
_user_specified_name851623:&"
 
_user_specified_name851625
Ш
п
 forward_lstm_1_while_cond_849639:
6forward_lstm_1_while_forward_lstm_1_while_loop_counter@
<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations$
 forward_lstm_1_while_placeholder&
"forward_lstm_1_while_placeholder_1&
"forward_lstm_1_while_placeholder_2&
"forward_lstm_1_while_placeholder_3<
8forward_lstm_1_while_less_forward_lstm_1_strided_slice_1R
Nforward_lstm_1_while_forward_lstm_1_while_cond_849639___redundant_placeholder0R
Nforward_lstm_1_while_forward_lstm_1_while_cond_849639___redundant_placeholder1R
Nforward_lstm_1_while_forward_lstm_1_while_cond_849639___redundant_placeholder2R
Nforward_lstm_1_while_forward_lstm_1_while_cond_849639___redundant_placeholder3!
forward_lstm_1_while_identity
Ю
forward_lstm_1/while/LessLess forward_lstm_1_while_placeholder8forward_lstm_1_while_less_forward_lstm_1_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_1/while/IdentityIdentityforward_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_1_while_identity&forward_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_1/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_1/strided_slice_1:

_output_shapes
:
•:
Ј
while_body_849085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
аА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
аА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
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
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аr
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
:€€€€€€€€€аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а£

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
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2P
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC
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
Ѕ
В
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848579

inputs

states
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
аА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€аV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€аO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€а`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€аL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€а:€€€€€€€€€а: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€а
 
_user_specified_namestates:PL
(
_output_shapes
:€€€€€€€€€а
 
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
•:
Ј
while_body_852146
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
аА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
аА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
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
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аr
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
:€€€€€€€€€аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а£

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
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2P
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC
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
ъ	
х
C__inference_dense_1_layer_call_and_return_conditional_losses_849893

inputs1
matmul_readvariableop_resource:	ј-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ј*
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
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ЪM
Т
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_849170

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
аА8
)lstm_cell_biasadd_readvariableop_resource:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€а~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_849085*
condR
while_cond_849084*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аУ
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
∆	
√
while_cond_852145
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_852145___redundant_placeholder04
0while_while_cond_852145___redundant_placeholder14
0while_while_cond_852145___redundant_placeholder24
0while_while_cond_852145___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ш
п
 forward_lstm_1_while_cond_851067:
6forward_lstm_1_while_forward_lstm_1_while_loop_counter@
<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations$
 forward_lstm_1_while_placeholder&
"forward_lstm_1_while_placeholder_1&
"forward_lstm_1_while_placeholder_2&
"forward_lstm_1_while_placeholder_3<
8forward_lstm_1_while_less_forward_lstm_1_strided_slice_1R
Nforward_lstm_1_while_forward_lstm_1_while_cond_851067___redundant_placeholder0R
Nforward_lstm_1_while_forward_lstm_1_while_cond_851067___redundant_placeholder1R
Nforward_lstm_1_while_forward_lstm_1_while_cond_851067___redundant_placeholder2R
Nforward_lstm_1_while_forward_lstm_1_while_cond_851067___redundant_placeholder3!
forward_lstm_1_while_identity
Ю
forward_lstm_1/while/LessLess forward_lstm_1_while_placeholder8forward_lstm_1_while_less_forward_lstm_1_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_1/while/IdentityIdentityforward_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_1_while_identity&forward_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_1/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_1/strided_slice_1:

_output_shapes
:
В	
Њ
0__inference_backward_lstm_1_layer_call_fn_852275

inputs
unknown:	А
	unknown_0:
аА
	unknown_1:	А
identityИҐStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_849482p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а<
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
 
_user_specified_nameinputs:&"
 
_user_specified_name852267:&"
 
_user_specified_name852269:&"
 
_user_specified_name852271
Ь:
Ј
while_body_851856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
аА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
аА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
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
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аr
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
:€€€€€€€€€аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а£

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
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2P
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC
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
∆	
√
while_cond_851710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_851710___redundant_placeholder04
0while_while_cond_851710___redundant_placeholder14
0while_while_cond_851710___redundant_placeholder24
0while_while_cond_851710___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ф
њ
/__inference_forward_lstm_1_layer_call_fn_851618
inputs_0
unknown:	А
	unknown_0:
аА
	unknown_1:	А
identityИҐStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_848312p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а<
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
inputs_0:&"
 
_user_specified_name851610:&"
 
_user_specified_name851612:&"
 
_user_specified_name851614
≥Љ
У
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_851298

inputsJ
7forward_lstm_1_lstm_cell_matmul_readvariableop_resource:	АM
9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource:
аАG
8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource:	АK
8backward_lstm_1_lstm_cell_matmul_readvariableop_resource:	АN
:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource:
аАH
9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpҐ/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpҐ1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpҐbackward_lstm_1/whileҐ/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpҐ.forward_lstm_1/lstm_cell/MatMul/ReadVariableOpҐ0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpҐforward_lstm_1/whileX
forward_lstm_1/ShapeShapeinputs*
T0*
_output_shapes
::нѕl
"forward_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
forward_lstm_1/strided_sliceStridedSliceforward_lstm_1/Shape:output:0+forward_lstm_1/strided_slice/stack:output:0-forward_lstm_1/strided_slice/stack_1:output:0-forward_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а†
forward_lstm_1/zeros/packedPack%forward_lstm_1/strided_slice:output:0&forward_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
forward_lstm_1/zerosFill$forward_lstm_1/zeros/packed:output:0#forward_lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аb
forward_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а§
forward_lstm_1/zeros_1/packedPack%forward_lstm_1/strided_slice:output:0(forward_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    †
forward_lstm_1/zeros_1Fill&forward_lstm_1/zeros_1/packed:output:0%forward_lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аr
forward_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Л
forward_lstm_1/transpose	Transposeinputs&forward_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€p
forward_lstm_1/Shape_1Shapeforward_lstm_1/transpose:y:0*
T0*
_output_shapes
::нѕn
$forward_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
forward_lstm_1/strided_slice_1StridedSliceforward_lstm_1/Shape_1:output:0-forward_lstm_1/strided_slice_1/stack:output:0/forward_lstm_1/strided_slice_1/stack_1:output:0/forward_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€б
forward_lstm_1/TensorArrayV2TensorListReserve3forward_lstm_1/TensorArrayV2/element_shape:output:0'forward_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Х
Dforward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Н
6forward_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_1/transpose:y:0Mforward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“n
$forward_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:і
forward_lstm_1/strided_slice_2StridedSliceforward_lstm_1/transpose:y:0-forward_lstm_1/strided_slice_2/stack:output:0/forward_lstm_1/strided_slice_2/stack_1:output:0/forward_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskІ
.forward_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOp7forward_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0љ
forward_lstm_1/lstm_cell/MatMulMatMul'forward_lstm_1/strided_slice_2:output:06forward_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ађ
0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0Ј
!forward_lstm_1/lstm_cell/MatMul_1MatMulforward_lstm_1/zeros:output:08forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А∞
forward_lstm_1/lstm_cell/addAddV2)forward_lstm_1/lstm_cell/MatMul:product:0+forward_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А•
/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0є
 forward_lstm_1/lstm_cell/BiasAddBiasAdd forward_lstm_1/lstm_cell/add:z:07forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аj
(forward_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
forward_lstm_1/lstm_cell/splitSplit1forward_lstm_1/lstm_cell/split/split_dim:output:0)forward_lstm_1/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitЗ
 forward_lstm_1/lstm_cell/SigmoidSigmoid'forward_lstm_1/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЙ
"forward_lstm_1/lstm_cell/Sigmoid_1Sigmoid'forward_lstm_1/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аЯ
forward_lstm_1/lstm_cell/mulMul&forward_lstm_1/lstm_cell/Sigmoid_1:y:0forward_lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аБ
forward_lstm_1/lstm_cell/ReluRelu'forward_lstm_1/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аЂ
forward_lstm_1/lstm_cell/mul_1Mul$forward_lstm_1/lstm_cell/Sigmoid:y:0+forward_lstm_1/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а†
forward_lstm_1/lstm_cell/add_1AddV2 forward_lstm_1/lstm_cell/mul:z:0"forward_lstm_1/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЙ
"forward_lstm_1/lstm_cell/Sigmoid_2Sigmoid'forward_lstm_1/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а~
forward_lstm_1/lstm_cell/Relu_1Relu"forward_lstm_1/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аѓ
forward_lstm_1/lstm_cell/mul_2Mul&forward_lstm_1/lstm_cell/Sigmoid_2:y:0-forward_lstm_1/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а}
,forward_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   m
+forward_lstm_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :т
forward_lstm_1/TensorArrayV2_1TensorListReserve5forward_lstm_1/TensorArrayV2_1/element_shape:output:04forward_lstm_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“U
forward_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€c
!forward_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
forward_lstm_1/whileWhile*forward_lstm_1/while/loop_counter:output:00forward_lstm_1/while/maximum_iterations:output:0forward_lstm_1/time:output:0'forward_lstm_1/TensorArrayV2_1:handle:0forward_lstm_1/zeros:output:0forward_lstm_1/zeros_1:output:0'forward_lstm_1/strided_slice_1:output:0Fforward_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_1_lstm_cell_matmul_readvariableop_resource9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 forward_lstm_1_while_body_851068*,
cond$R"
 forward_lstm_1_while_cond_851067*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Р
?forward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   Д
1forward_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_1/while:output:3Hforward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
element_dtype0*
num_elementsw
$forward_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€p
&forward_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_1/strided_slice_3StridedSlice:forward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_1/strided_slice_3/stack:output:0/forward_lstm_1/strided_slice_3/stack_1:output:0/forward_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€а*
shrink_axis_maskt
forward_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ƒ
forward_lstm_1/transpose_1	Transpose:forward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€аj
forward_lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Y
backward_lstm_1/ShapeShapeinputs*
T0*
_output_shapes
::нѕm
#backward_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
backward_lstm_1/strided_sliceStridedSlicebackward_lstm_1/Shape:output:0,backward_lstm_1/strided_slice/stack:output:0.backward_lstm_1/strided_slice/stack_1:output:0.backward_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а£
backward_lstm_1/zeros/packedPack&backward_lstm_1/strided_slice:output:0'backward_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
backward_lstm_1/zerosFill%backward_lstm_1/zeros/packed:output:0$backward_lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
 backward_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аІ
backward_lstm_1/zeros_1/packedPack&backward_lstm_1/strided_slice:output:0)backward_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_1/zeros_1Fill'backward_lstm_1/zeros_1/packed:output:0&backward_lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аs
backward_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
backward_lstm_1/transpose	Transposeinputs'backward_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€r
backward_lstm_1/Shape_1Shapebackward_lstm_1/transpose:y:0*
T0*
_output_shapes
::нѕo
%backward_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
backward_lstm_1/strided_slice_1StridedSlice backward_lstm_1/Shape_1:output:0.backward_lstm_1/strided_slice_1/stack:output:00backward_lstm_1/strided_slice_1/stack_1:output:00backward_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€д
backward_lstm_1/TensorArrayV2TensorListReserve4backward_lstm_1/TensorArrayV2/element_shape:output:0(backward_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“h
backward_lstm_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_1/ReverseV2	ReverseV2backward_lstm_1/transpose:y:0'backward_lstm_1/ReverseV2/axis:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ц
Ebackward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Х
7backward_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_1/ReverseV2:output:0Nbackward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“o
%backward_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
backward_lstm_1/strided_slice_2StridedSlicebackward_lstm_1/transpose:y:0.backward_lstm_1/strided_slice_2/stack:output:00backward_lstm_1/strided_slice_2/stack_1:output:00backward_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask©
/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOp8backward_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ј
 backward_lstm_1/lstm_cell/MatMulMatMul(backward_lstm_1/strided_slice_2:output:07backward_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0Ї
"backward_lstm_1/lstm_cell/MatMul_1MatMulbackward_lstm_1/zeros:output:09backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
backward_lstm_1/lstm_cell/addAddV2*backward_lstm_1/lstm_cell/MatMul:product:0,backward_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АІ
0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
!backward_lstm_1/lstm_cell/BiasAddBiasAdd!backward_lstm_1/lstm_cell/add:z:08backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
)backward_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
backward_lstm_1/lstm_cell/splitSplit2backward_lstm_1/lstm_cell/split/split_dim:output:0*backward_lstm_1/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitЙ
!backward_lstm_1/lstm_cell/SigmoidSigmoid(backward_lstm_1/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЛ
#backward_lstm_1/lstm_cell/Sigmoid_1Sigmoid(backward_lstm_1/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аҐ
backward_lstm_1/lstm_cell/mulMul'backward_lstm_1/lstm_cell/Sigmoid_1:y:0 backward_lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аГ
backward_lstm_1/lstm_cell/ReluRelu(backward_lstm_1/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аЃ
backward_lstm_1/lstm_cell/mul_1Mul%backward_lstm_1/lstm_cell/Sigmoid:y:0,backward_lstm_1/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а£
backward_lstm_1/lstm_cell/add_1AddV2!backward_lstm_1/lstm_cell/mul:z:0#backward_lstm_1/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЛ
#backward_lstm_1/lstm_cell/Sigmoid_2Sigmoid(backward_lstm_1/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аА
 backward_lstm_1/lstm_cell/Relu_1Relu#backward_lstm_1/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€а≤
backward_lstm_1/lstm_cell/mul_2Mul'backward_lstm_1/lstm_cell/Sigmoid_2:y:0.backward_lstm_1/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а~
-backward_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   n
,backward_lstm_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :х
backward_lstm_1/TensorArrayV2_1TensorListReserve6backward_lstm_1/TensorArrayV2_1/element_shape:output:05backward_lstm_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“V
backward_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€d
"backward_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ј
backward_lstm_1/whileWhile+backward_lstm_1/while/loop_counter:output:01backward_lstm_1/while/maximum_iterations:output:0backward_lstm_1/time:output:0(backward_lstm_1/TensorArrayV2_1:handle:0backward_lstm_1/zeros:output:0 backward_lstm_1/zeros_1:output:0(backward_lstm_1/strided_slice_1:output:0Gbackward_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_1_lstm_cell_matmul_readvariableop_resource:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*-
body%R#
!backward_lstm_1_while_body_851211*-
cond%R#
!backward_lstm_1_while_cond_851210*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations С
@backward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   З
2backward_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_1/while:output:3Ibackward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
element_dtype0*
num_elementsx
%backward_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€q
'backward_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
backward_lstm_1/strided_slice_3StridedSlice;backward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_1/strided_slice_3/stack:output:00backward_lstm_1/strided_slice_3/stack_1:output:00backward_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€а*
shrink_axis_masku
 backward_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
backward_lstm_1/transpose_1	Transpose;backward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€аk
backward_lstm_1/runtimeConst"/device:CPU:0*
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
concatConcatV2'forward_lstm_1/strided_slice_3:output:0(backward_lstm_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ј_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€јА
NoOpNoOp1^backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp0^backward_lstm_1/lstm_cell/MatMul/ReadVariableOp2^backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_1/while0^forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/^forward_lstm_1/lstm_cell/MatMul/ReadVariableOp1^forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_1/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2d
0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2b
/backward_lstm_1/lstm_cell/MatMul/ReadVariableOp/backward_lstm_1/lstm_cell/MatMul/ReadVariableOp2f
1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2.
backward_lstm_1/whilebackward_lstm_1/while2b
/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2`
.forward_lstm_1/lstm_cell/MatMul/ReadVariableOp.forward_lstm_1/lstm_cell/MatMul/ReadVariableOp2d
0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2,
forward_lstm_1/whileforward_lstm_1/while:S O
+
_output_shapes
:€€€€€€€€€
 
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
й%
–
while_body_848594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_848618_0:	А,
while_lstm_cell_848620_0:
аА'
while_lstm_cell_848622_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_848618:	А*
while_lstm_cell_848620:
аА%
while_lstm_cell_848622:	АИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0І
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_848618_0while_lstm_cell_848620_0while_lstm_cell_848622_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848579r
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
:€€€€€€€€€аО
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_848618while_lstm_cell_848618_0"2
while_lstm_cell_848620while_lstm_cell_848620_0"2
while_lstm_cell_848622while_lstm_cell_848622_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2R
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name848618:&	"
 
_user_specified_name848620:&
"
 
_user_specified_name848622
°
Р
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_850219
lambda_1_input)
bidirectional_1_850200:	А*
bidirectional_1_850202:
аА%
bidirectional_1_850204:	А)
bidirectional_1_850206:	А*
bidirectional_1_850208:
аА%
bidirectional_1_850210:	А!
dense_1_850213:	ј
dense_1_850215:
identityИҐ'bidirectional_1/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallƒ
lambda_1/PartitionedCallPartitionedCalllambda_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_849908Р
'bidirectional_1/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0bidirectional_1_850200bidirectional_1_850202bidirectional_1_850204bidirectional_1_850206bidirectional_1_850208bidirectional_1_850210*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_850199Ц
dense_1/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_1/StatefulPartitionedCall:output:0dense_1_850213dense_1_850215*
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
GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_849893w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€n
NoOpNoOp(^bidirectional_1/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : : : 2R
'bidirectional_1/StatefulPartitionedCall'bidirectional_1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namelambda_1_input:&"
 
_user_specified_name850200:&"
 
_user_specified_name850202:&"
 
_user_specified_name850204:&"
 
_user_specified_name850206:&"
 
_user_specified_name850208:&"
 
_user_specified_name850210:&"
 
_user_specified_name850213:&"
 
_user_specified_name850215
±K
С
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_849328

inputs;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
аА8
)lstm_cell_biasadd_readvariableop_resource:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€а~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_849243*
condR
while_cond_849242*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аУ
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
≥Љ
У
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_849870

inputsJ
7forward_lstm_1_lstm_cell_matmul_readvariableop_resource:	АM
9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource:
аАG
8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource:	АK
8backward_lstm_1_lstm_cell_matmul_readvariableop_resource:	АN
:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource:
аАH
9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource:	А
identityИҐ0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpҐ/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpҐ1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpҐbackward_lstm_1/whileҐ/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpҐ.forward_lstm_1/lstm_cell/MatMul/ReadVariableOpҐ0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpҐforward_lstm_1/whileX
forward_lstm_1/ShapeShapeinputs*
T0*
_output_shapes
::нѕl
"forward_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
forward_lstm_1/strided_sliceStridedSliceforward_lstm_1/Shape:output:0+forward_lstm_1/strided_slice/stack:output:0-forward_lstm_1/strided_slice/stack_1:output:0-forward_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а†
forward_lstm_1/zeros/packedPack%forward_lstm_1/strided_slice:output:0&forward_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
forward_lstm_1/zerosFill$forward_lstm_1/zeros/packed:output:0#forward_lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аb
forward_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а§
forward_lstm_1/zeros_1/packedPack%forward_lstm_1/strided_slice:output:0(forward_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    †
forward_lstm_1/zeros_1Fill&forward_lstm_1/zeros_1/packed:output:0%forward_lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аr
forward_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Л
forward_lstm_1/transpose	Transposeinputs&forward_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€p
forward_lstm_1/Shape_1Shapeforward_lstm_1/transpose:y:0*
T0*
_output_shapes
::нѕn
$forward_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
forward_lstm_1/strided_slice_1StridedSliceforward_lstm_1/Shape_1:output:0-forward_lstm_1/strided_slice_1/stack:output:0/forward_lstm_1/strided_slice_1/stack_1:output:0/forward_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€б
forward_lstm_1/TensorArrayV2TensorListReserve3forward_lstm_1/TensorArrayV2/element_shape:output:0'forward_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Х
Dforward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Н
6forward_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_1/transpose:y:0Mforward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“n
$forward_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:і
forward_lstm_1/strided_slice_2StridedSliceforward_lstm_1/transpose:y:0-forward_lstm_1/strided_slice_2/stack:output:0/forward_lstm_1/strided_slice_2/stack_1:output:0/forward_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskІ
.forward_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOp7forward_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0љ
forward_lstm_1/lstm_cell/MatMulMatMul'forward_lstm_1/strided_slice_2:output:06forward_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ађ
0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0Ј
!forward_lstm_1/lstm_cell/MatMul_1MatMulforward_lstm_1/zeros:output:08forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А∞
forward_lstm_1/lstm_cell/addAddV2)forward_lstm_1/lstm_cell/MatMul:product:0+forward_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А•
/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0є
 forward_lstm_1/lstm_cell/BiasAddBiasAdd forward_lstm_1/lstm_cell/add:z:07forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аj
(forward_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
forward_lstm_1/lstm_cell/splitSplit1forward_lstm_1/lstm_cell/split/split_dim:output:0)forward_lstm_1/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitЗ
 forward_lstm_1/lstm_cell/SigmoidSigmoid'forward_lstm_1/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЙ
"forward_lstm_1/lstm_cell/Sigmoid_1Sigmoid'forward_lstm_1/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аЯ
forward_lstm_1/lstm_cell/mulMul&forward_lstm_1/lstm_cell/Sigmoid_1:y:0forward_lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аБ
forward_lstm_1/lstm_cell/ReluRelu'forward_lstm_1/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аЂ
forward_lstm_1/lstm_cell/mul_1Mul$forward_lstm_1/lstm_cell/Sigmoid:y:0+forward_lstm_1/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а†
forward_lstm_1/lstm_cell/add_1AddV2 forward_lstm_1/lstm_cell/mul:z:0"forward_lstm_1/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЙ
"forward_lstm_1/lstm_cell/Sigmoid_2Sigmoid'forward_lstm_1/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а~
forward_lstm_1/lstm_cell/Relu_1Relu"forward_lstm_1/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аѓ
forward_lstm_1/lstm_cell/mul_2Mul&forward_lstm_1/lstm_cell/Sigmoid_2:y:0-forward_lstm_1/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а}
,forward_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   m
+forward_lstm_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :т
forward_lstm_1/TensorArrayV2_1TensorListReserve5forward_lstm_1/TensorArrayV2_1/element_shape:output:04forward_lstm_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“U
forward_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€c
!forward_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
forward_lstm_1/whileWhile*forward_lstm_1/while/loop_counter:output:00forward_lstm_1/while/maximum_iterations:output:0forward_lstm_1/time:output:0'forward_lstm_1/TensorArrayV2_1:handle:0forward_lstm_1/zeros:output:0forward_lstm_1/zeros_1:output:0'forward_lstm_1/strided_slice_1:output:0Fforward_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:07forward_lstm_1_lstm_cell_matmul_readvariableop_resource9forward_lstm_1_lstm_cell_matmul_1_readvariableop_resource8forward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 forward_lstm_1_while_body_849640*,
cond$R"
 forward_lstm_1_while_cond_849639*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Р
?forward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   Д
1forward_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_1/while:output:3Hforward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
element_dtype0*
num_elementsw
$forward_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€p
&forward_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_1/strided_slice_3StridedSlice:forward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_1/strided_slice_3/stack:output:0/forward_lstm_1/strided_slice_3/stack_1:output:0/forward_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€а*
shrink_axis_maskt
forward_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ƒ
forward_lstm_1/transpose_1	Transpose:forward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€аj
forward_lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Y
backward_lstm_1/ShapeShapeinputs*
T0*
_output_shapes
::нѕm
#backward_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
backward_lstm_1/strided_sliceStridedSlicebackward_lstm_1/Shape:output:0,backward_lstm_1/strided_slice/stack:output:0.backward_lstm_1/strided_slice/stack_1:output:0.backward_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :а£
backward_lstm_1/zeros/packedPack&backward_lstm_1/strided_slice:output:0'backward_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
backward_lstm_1/zerosFill%backward_lstm_1/zeros/packed:output:0$backward_lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
 backward_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аІ
backward_lstm_1/zeros_1/packedPack&backward_lstm_1/strided_slice:output:0)backward_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_1/zeros_1Fill'backward_lstm_1/zeros_1/packed:output:0&backward_lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€аs
backward_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
backward_lstm_1/transpose	Transposeinputs'backward_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€r
backward_lstm_1/Shape_1Shapebackward_lstm_1/transpose:y:0*
T0*
_output_shapes
::нѕo
%backward_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
backward_lstm_1/strided_slice_1StridedSlice backward_lstm_1/Shape_1:output:0.backward_lstm_1/strided_slice_1/stack:output:00backward_lstm_1/strided_slice_1/stack_1:output:00backward_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€д
backward_lstm_1/TensorArrayV2TensorListReserve4backward_lstm_1/TensorArrayV2/element_shape:output:0(backward_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“h
backward_lstm_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_1/ReverseV2	ReverseV2backward_lstm_1/transpose:y:0'backward_lstm_1/ReverseV2/axis:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ц
Ebackward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Х
7backward_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_1/ReverseV2:output:0Nbackward_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“o
%backward_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
backward_lstm_1/strided_slice_2StridedSlicebackward_lstm_1/transpose:y:0.backward_lstm_1/strided_slice_2/stack:output:00backward_lstm_1/strided_slice_2/stack_1:output:00backward_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask©
/backward_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOp8backward_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ј
 backward_lstm_1/lstm_cell/MatMulMatMul(backward_lstm_1/strided_slice_2:output:07backward_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0Ї
"backward_lstm_1/lstm_cell/MatMul_1MatMulbackward_lstm_1/zeros:output:09backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
backward_lstm_1/lstm_cell/addAddV2*backward_lstm_1/lstm_cell/MatMul:product:0,backward_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АІ
0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
!backward_lstm_1/lstm_cell/BiasAddBiasAdd!backward_lstm_1/lstm_cell/add:z:08backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
)backward_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
backward_lstm_1/lstm_cell/splitSplit2backward_lstm_1/lstm_cell/split/split_dim:output:0*backward_lstm_1/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitЙ
!backward_lstm_1/lstm_cell/SigmoidSigmoid(backward_lstm_1/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЛ
#backward_lstm_1/lstm_cell/Sigmoid_1Sigmoid(backward_lstm_1/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аҐ
backward_lstm_1/lstm_cell/mulMul'backward_lstm_1/lstm_cell/Sigmoid_1:y:0 backward_lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аГ
backward_lstm_1/lstm_cell/ReluRelu(backward_lstm_1/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аЃ
backward_lstm_1/lstm_cell/mul_1Mul%backward_lstm_1/lstm_cell/Sigmoid:y:0,backward_lstm_1/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а£
backward_lstm_1/lstm_cell/add_1AddV2!backward_lstm_1/lstm_cell/mul:z:0#backward_lstm_1/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЛ
#backward_lstm_1/lstm_cell/Sigmoid_2Sigmoid(backward_lstm_1/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аА
 backward_lstm_1/lstm_cell/Relu_1Relu#backward_lstm_1/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€а≤
backward_lstm_1/lstm_cell/mul_2Mul'backward_lstm_1/lstm_cell/Sigmoid_2:y:0.backward_lstm_1/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а~
-backward_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   n
,backward_lstm_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :х
backward_lstm_1/TensorArrayV2_1TensorListReserve6backward_lstm_1/TensorArrayV2_1/element_shape:output:05backward_lstm_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“V
backward_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€d
"backward_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ј
backward_lstm_1/whileWhile+backward_lstm_1/while/loop_counter:output:01backward_lstm_1/while/maximum_iterations:output:0backward_lstm_1/time:output:0(backward_lstm_1/TensorArrayV2_1:handle:0backward_lstm_1/zeros:output:0 backward_lstm_1/zeros_1:output:0(backward_lstm_1/strided_slice_1:output:0Gbackward_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:08backward_lstm_1_lstm_cell_matmul_readvariableop_resource:backward_lstm_1_lstm_cell_matmul_1_readvariableop_resource9backward_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*-
body%R#
!backward_lstm_1_while_body_849783*-
cond%R#
!backward_lstm_1_while_cond_849782*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations С
@backward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   З
2backward_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_1/while:output:3Ibackward_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
element_dtype0*
num_elementsx
%backward_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€q
'backward_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
backward_lstm_1/strided_slice_3StridedSlice;backward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_1/strided_slice_3/stack:output:00backward_lstm_1/strided_slice_3/stack_1:output:00backward_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€а*
shrink_axis_masku
 backward_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
backward_lstm_1/transpose_1	Transpose;backward_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€аk
backward_lstm_1/runtimeConst"/device:CPU:0*
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
concatConcatV2'forward_lstm_1/strided_slice_3:output:0(backward_lstm_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ј_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€јА
NoOpNoOp1^backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp0^backward_lstm_1/lstm_cell/MatMul/ReadVariableOp2^backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_1/while0^forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/^forward_lstm_1/lstm_cell/MatMul/ReadVariableOp1^forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_1/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2d
0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp0backward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2b
/backward_lstm_1/lstm_cell/MatMul/ReadVariableOp/backward_lstm_1/lstm_cell/MatMul/ReadVariableOp2f
1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp1backward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2.
backward_lstm_1/whilebackward_lstm_1/while2b
/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/forward_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2`
.forward_lstm_1/lstm_cell/MatMul/ReadVariableOp.forward_lstm_1/lstm_cell/MatMul/ReadVariableOp2d
0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp0forward_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2,
forward_lstm_1/whileforward_lstm_1/while:S O
+
_output_shapes
:€€€€€€€€€
 
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
№M
Ј
!backward_lstm_1_while_body_851211<
8backward_lstm_1_while_backward_lstm_1_while_loop_counterB
>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations%
!backward_lstm_1_while_placeholder'
#backward_lstm_1_while_placeholder_1'
#backward_lstm_1_while_placeholder_2'
#backward_lstm_1_while_placeholder_3;
7backward_lstm_1_while_backward_lstm_1_strided_slice_1_0w
sbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	АV
Bbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:
аАP
Abackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	А"
backward_lstm_1_while_identity$
 backward_lstm_1_while_identity_1$
 backward_lstm_1_while_identity_2$
 backward_lstm_1_while_identity_3$
 backward_lstm_1_while_identity_4$
 backward_lstm_1_while_identity_59
5backward_lstm_1_while_backward_lstm_1_strided_slice_1u
qbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	АT
@backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:
аАN
?backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpҐ5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpҐ7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpШ
Gbackward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ц
9backward_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_1_while_placeholderPbackward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ј
5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0д
&backward_lstm_1/while/lstm_cell/MatMulMatMul@backward_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЉ
7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ћ
(backward_lstm_1/while/lstm_cell/MatMul_1MatMul#backward_lstm_1_while_placeholder_2?backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≈
#backward_lstm_1/while/lstm_cell/addAddV20backward_lstm_1/while/lstm_cell/MatMul:product:02backward_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0ќ
'backward_lstm_1/while/lstm_cell/BiasAddBiasAdd'backward_lstm_1/while/lstm_cell/add:z:0>backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
/backward_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
%backward_lstm_1/while/lstm_cell/splitSplit8backward_lstm_1/while/lstm_cell/split/split_dim:output:00backward_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitХ
'backward_lstm_1/while/lstm_cell/SigmoidSigmoid.backward_lstm_1/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЧ
)backward_lstm_1/while/lstm_cell/Sigmoid_1Sigmoid.backward_lstm_1/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€а±
#backward_lstm_1/while/lstm_cell/mulMul-backward_lstm_1/while/lstm_cell/Sigmoid_1:y:0#backward_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аП
$backward_lstm_1/while/lstm_cell/ReluRelu.backward_lstm_1/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€ај
%backward_lstm_1/while/lstm_cell/mul_1Mul+backward_lstm_1/while/lstm_cell/Sigmoid:y:02backward_lstm_1/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аµ
%backward_lstm_1/while/lstm_cell/add_1AddV2'backward_lstm_1/while/lstm_cell/mul:z:0)backward_lstm_1/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЧ
)backward_lstm_1/while/lstm_cell/Sigmoid_2Sigmoid.backward_lstm_1/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аМ
&backward_lstm_1/while/lstm_cell/Relu_1Relu)backward_lstm_1/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аƒ
%backward_lstm_1/while/lstm_cell/mul_2Mul-backward_lstm_1/while/lstm_cell/Sigmoid_2:y:04backward_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
@backward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ™
:backward_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_1_while_placeholder_1Ibackward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0)backward_lstm_1/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“]
backward_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :М
backward_lstm_1/while/addAddV2!backward_lstm_1_while_placeholder$backward_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_1/while/add_1AddV28backward_lstm_1_while_backward_lstm_1_while_loop_counter&backward_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: Й
backward_lstm_1/while/IdentityIdentitybackward_lstm_1/while/add_1:z:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: ™
 backward_lstm_1/while/Identity_1Identity>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: Й
 backward_lstm_1/while/Identity_2Identitybackward_lstm_1/while/add:z:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: ґ
 backward_lstm_1/while/Identity_3IdentityJbackward_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: І
 backward_lstm_1/while/Identity_4Identity)backward_lstm_1/while/lstm_cell/mul_2:z:0^backward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аІ
 backward_lstm_1/while/Identity_5Identity)backward_lstm_1/while/lstm_cell/add_1:z:0^backward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аг
backward_lstm_1/while/NoOpNoOp7^backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp6^backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp8^backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5backward_lstm_1_while_backward_lstm_1_strided_slice_17backward_lstm_1_while_backward_lstm_1_strided_slice_1_0"I
backward_lstm_1_while_identity'backward_lstm_1/while/Identity:output:0"M
 backward_lstm_1_while_identity_1)backward_lstm_1/while/Identity_1:output:0"M
 backward_lstm_1_while_identity_2)backward_lstm_1/while/Identity_2:output:0"M
 backward_lstm_1_while_identity_3)backward_lstm_1/while/Identity_3:output:0"M
 backward_lstm_1_while_identity_4)backward_lstm_1/while/Identity_4:output:0"M
 backward_lstm_1_while_identity_5)backward_lstm_1/while/Identity_5:output:0"Д
?backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resourceAbackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"Ж
@backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourceBbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"В
>backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"и
qbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2p
6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2n
5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2r
7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_1/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_1/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97backward_lstm_1/TensorArrayUnstack/TensorListFromTensor:($
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
Ь:
Ј
while_body_852484
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
аА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
аА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
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
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аr
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
:€€€€€€€€€аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а£

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
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2P
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC
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
й%
–
while_body_848743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_848767_0:	А,
while_lstm_cell_848769_0:
аА'
while_lstm_cell_848771_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_848767:	А*
while_lstm_cell_848769:
аА%
while_lstm_cell_848771:	АИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0І
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_848767_0while_lstm_cell_848769_0while_lstm_cell_848771_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848728r
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
:€€€€€€€€€аО
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_848767while_lstm_cell_848767_0"2
while_lstm_cell_848769while_lstm_cell_848769_0"2
while_lstm_cell_848771while_lstm_cell_848771_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2R
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name848767:&	"
 
_user_specified_name848769:&
"
 
_user_specified_name848771
Й
ґ
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_849493

inputs(
forward_lstm_1_849329:	А)
forward_lstm_1_849331:
аА$
forward_lstm_1_849333:	А)
backward_lstm_1_849483:	А*
backward_lstm_1_849485:
аА%
backward_lstm_1_849487:	А
identityИҐ'backward_lstm_1/StatefulPartitionedCallҐ&forward_lstm_1/StatefulPartitionedCallҐ
&forward_lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_1_849329forward_lstm_1_849331forward_lstm_1_849333*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_849328І
'backward_lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_1_849483backward_lstm_1_849485backward_lstm_1_849487*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_849482M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :«
concatConcatV2/forward_lstm_1/StatefulPartitionedCall:output:00backward_lstm_1/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ј_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€јu
NoOpNoOp(^backward_lstm_1/StatefulPartitionedCall'^forward_lstm_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : 2R
'backward_lstm_1/StatefulPartitionedCall'backward_lstm_1/StatefulPartitionedCall2P
&forward_lstm_1/StatefulPartitionedCall&forward_lstm_1/StatefulPartitionedCall:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name849329:&"
 
_user_specified_name849331:&"
 
_user_specified_name849333:&"
 
_user_specified_name849483:&"
 
_user_specified_name849485:&"
 
_user_specified_name849487
Џ

Х
0__inference_bidirectional_1_layer_call_fn_850428

inputs
unknown:	А
	unknown_0:
аА
	unknown_1:	А
	unknown_2:	А
	unknown_3:
аА
	unknown_4:	А
identityИҐStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_850199p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€ј<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name850414:&"
 
_user_specified_name850416:&"
 
_user_specified_name850418:&"
 
_user_specified_name850420:&"
 
_user_specified_name850422:&"
 
_user_specified_name850424
фL
Ф
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852422
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
аА8
)lstm_cell_biasadd_readvariableop_resource:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€а~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_852337*
condR
while_cond_852336*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аУ
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
•:
Ј
while_body_852001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
аА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
аА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
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
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аr
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
:€€€€€€€€€аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а£

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
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2P
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC
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
 L
Ч
 forward_lstm_1_while_body_850488:
6forward_lstm_1_while_forward_lstm_1_while_loop_counter@
<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations$
 forward_lstm_1_while_placeholder&
"forward_lstm_1_while_placeholder_1&
"forward_lstm_1_while_placeholder_2&
"forward_lstm_1_while_placeholder_39
5forward_lstm_1_while_forward_lstm_1_strided_slice_1_0u
qforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0R
?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	АU
Aforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:
аАO
@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	А!
forward_lstm_1_while_identity#
forward_lstm_1_while_identity_1#
forward_lstm_1_while_identity_2#
forward_lstm_1_while_identity_3#
forward_lstm_1_while_identity_4#
forward_lstm_1_while_identity_57
3forward_lstm_1_while_forward_lstm_1_strided_slice_1s
oforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensorP
=forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	АS
?forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:
аАM
>forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpҐ4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpҐ6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpЧ
Fforward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€ъ
8forward_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_1_while_placeholderOforward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0µ
4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0б
%forward_lstm_1/while/lstm_cell/MatMulMatMul?forward_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0<forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0»
'forward_lstm_1/while/lstm_cell/MatMul_1MatMul"forward_lstm_1_while_placeholder_2>forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А¬
"forward_lstm_1/while/lstm_cell/addAddV2/forward_lstm_1/while/lstm_cell/MatMul:product:01forward_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ћ
&forward_lstm_1/while/lstm_cell/BiasAddBiasAdd&forward_lstm_1/while/lstm_cell/add:z:0=forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
.forward_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ч
$forward_lstm_1/while/lstm_cell/splitSplit7forward_lstm_1/while/lstm_cell/split/split_dim:output:0/forward_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitУ
&forward_lstm_1/while/lstm_cell/SigmoidSigmoid-forward_lstm_1/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аХ
(forward_lstm_1/while/lstm_cell/Sigmoid_1Sigmoid-forward_lstm_1/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аЃ
"forward_lstm_1/while/lstm_cell/mulMul,forward_lstm_1/while/lstm_cell/Sigmoid_1:y:0"forward_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аН
#forward_lstm_1/while/lstm_cell/ReluRelu-forward_lstm_1/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аљ
$forward_lstm_1/while/lstm_cell/mul_1Mul*forward_lstm_1/while/lstm_cell/Sigmoid:y:01forward_lstm_1/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€а≤
$forward_lstm_1/while/lstm_cell/add_1AddV2&forward_lstm_1/while/lstm_cell/mul:z:0(forward_lstm_1/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аХ
(forward_lstm_1/while/lstm_cell/Sigmoid_2Sigmoid-forward_lstm_1/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аК
%forward_lstm_1/while/lstm_cell/Relu_1Relu(forward_lstm_1/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЅ
$forward_lstm_1/while/lstm_cell/mul_2Mul,forward_lstm_1/while/lstm_cell/Sigmoid_2:y:03forward_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аБ
?forward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¶
9forward_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_1_while_placeholder_1Hforward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0(forward_lstm_1/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“\
forward_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Й
forward_lstm_1/while/addAddV2 forward_lstm_1_while_placeholder#forward_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_1/while/add_1AddV26forward_lstm_1_while_forward_lstm_1_while_loop_counter%forward_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ж
forward_lstm_1/while/IdentityIdentityforward_lstm_1/while/add_1:z:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: ¶
forward_lstm_1/while/Identity_1Identity<forward_lstm_1_while_forward_lstm_1_while_maximum_iterations^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: Ж
forward_lstm_1/while/Identity_2Identityforward_lstm_1/while/add:z:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: ≥
forward_lstm_1/while/Identity_3IdentityIforward_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_1/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_1/while/Identity_4Identity(forward_lstm_1/while/lstm_cell/mul_2:z:0^forward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а§
forward_lstm_1/while/Identity_5Identity(forward_lstm_1/while/lstm_cell/add_1:z:0^forward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€ая
forward_lstm_1/while/NoOpNoOp6^forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5^forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp7^forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "l
3forward_lstm_1_while_forward_lstm_1_strided_slice_15forward_lstm_1_while_forward_lstm_1_strided_slice_1_0"G
forward_lstm_1_while_identity&forward_lstm_1/while/Identity:output:0"K
forward_lstm_1_while_identity_1(forward_lstm_1/while/Identity_1:output:0"K
forward_lstm_1_while_identity_2(forward_lstm_1/while/Identity_2:output:0"K
forward_lstm_1_while_identity_3(forward_lstm_1/while/Identity_3:output:0"K
forward_lstm_1_while_identity_4(forward_lstm_1/while/Identity_4:output:0"K
forward_lstm_1_while_identity_5(forward_lstm_1/while/Identity_5:output:0"В
>forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource@forward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"Д
?forward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourceAforward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"А
=forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource?forward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"д
oforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensorqforward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2n
5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5forward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2l
4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp4forward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2p
6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp6forward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:Y U

_output_shapes
: 
;
_user_specified_name#!forward_lstm_1/while/loop_counter:_[

_output_shapes
: 
A
_user_specified_name)'forward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:VR

_output_shapes
: 
8
_user_specified_name forward_lstm_1/strided_slice_1:nj

_output_shapes
: 
P
_user_specified_name86forward_lstm_1/TensorArrayUnstack/TensorListFromTensor:($
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
Ъ
°
Umodel_9_bidirectionalLSTM_univariate_bidirectional_1_forward_lstm_1_while_cond_847928•
†model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_loop_counterЂ
¶model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_maximum_iterationsY
Umodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_placeholder[
Wmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_placeholder_1[
Wmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_placeholder_2[
Wmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_placeholder_3І
Ґmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_less_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_strided_slice_1љ
Єmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_cond_847928___redundant_placeholder0љ
Єmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_cond_847928___redundant_placeholder1љ
Єmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_cond_847928___redundant_placeholder2љ
Єmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_cond_847928___redundant_placeholder3V
Rmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_identity
у
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/LessLessUmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_placeholderҐmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_less_model_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_strided_slice_1*
T0*
_output_shapes
: ”
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/IdentityIdentityRmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "±
Rmodel_9_bidirectionallstm_univariate_bidirectional_1_forward_lstm_1_while_identity[model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::П К

_output_shapes
: 
p
_user_specified_nameXVmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/loop_counter:ХР

_output_shapes
: 
v
_user_specified_name^\model_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:МЗ

_output_shapes
: 
m
_user_specified_nameUSmodel_9_bidirectionalLSTM_univariate/bidirectional_1/forward_lstm_1/strided_slice_1:

_output_shapes
:
—
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_850354

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
:€€€€€€€€€_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
•:
Ј
while_body_849243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	АF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
аА@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	АD
0while_lstm_cell_matmul_1_readvariableop_resource:
аА>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
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
:	А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аБ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€аР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аЕ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аФ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аr
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
:€€€€€€€€€аw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€а£

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
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2P
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC
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
фL
Ф
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852569
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	А>
*lstm_cell_matmul_1_readvariableop_resource:
аА8
)lstm_cell_biasadd_readvariableop_resource:	А
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
B :аs
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
:€€€€€€€€€аS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :аw
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
:€€€€€€€€€аc
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
:	А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АО
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€аr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€аc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€а~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€а`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   ^
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
value	B : а
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_852484*
condR
while_cond_852483*M
output_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€а   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€а*
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
:€€€€€€€€€а*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€а[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аУ
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
й%
–
while_body_848242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_848266_0:	А,
while_lstm_cell_848268_0:
аА'
while_lstm_cell_848270_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_848266:	А*
while_lstm_cell_848268:
аА%
while_lstm_cell_848270:	АИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0І
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_848266_0while_lstm_cell_848268_0while_lstm_cell_848270_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_848227r
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
:€€€€€€€€€аО
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_848266while_lstm_cell_848266_0"2
while_lstm_cell_848268while_lstm_cell_848268_0"2
while_lstm_cell_848270while_lstm_cell_848270_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2R
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name848266:&	"
 
_user_specified_name848268:&
"
 
_user_specified_name848270
…
Д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_852961

inputs
states_0
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
аА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
аА*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€аV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€аO
ReluRelusplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€а`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€аL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€аm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€а:€€€€€€€€€а: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€а
"
_user_specified_name
states_0:RN
(
_output_shapes
:€€€€€€€€€а
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
∆	
√
while_cond_852483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_852483___redundant_placeholder04
0while_while_cond_852483___redundant_placeholder14
0while_while_cond_852483___redundant_placeholder24
0while_while_cond_852483___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
В	
Њ
0__inference_backward_lstm_1_layer_call_fn_852264

inputs
unknown:	А
	unknown_0:
аА
	unknown_1:	А
identityИҐStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_849170p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€а<
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
 
_user_specified_nameinputs:&"
 
_user_specified_name852256:&"
 
_user_specified_name852258:&"
 
_user_specified_name852260
еM
Ј
!backward_lstm_1_while_body_850631<
8backward_lstm_1_while_backward_lstm_1_while_loop_counterB
>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations%
!backward_lstm_1_while_placeholder'
#backward_lstm_1_while_placeholder_1'
#backward_lstm_1_while_placeholder_2'
#backward_lstm_1_while_placeholder_3;
7backward_lstm_1_while_backward_lstm_1_strided_slice_1_0w
sbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0S
@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	АV
Bbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:
аАP
Abackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	А"
backward_lstm_1_while_identity$
 backward_lstm_1_while_identity_1$
 backward_lstm_1_while_identity_2$
 backward_lstm_1_while_identity_3$
 backward_lstm_1_while_identity_4$
 backward_lstm_1_while_identity_59
5backward_lstm_1_while_backward_lstm_1_strided_slice_1u
qbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensorQ
>backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	АT
@backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:
аАN
?backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpҐ5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpҐ7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpШ
Gbackward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€€€€€€
9backward_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_1_while_placeholderPbackward_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
element_dtype0Ј
5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype0д
&backward_lstm_1/while/lstm_cell/MatMulMatMul@backward_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0=backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЉ
7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
аА*
dtype0Ћ
(backward_lstm_1/while/lstm_cell/MatMul_1MatMul#backward_lstm_1_while_placeholder_2?backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≈
#backward_lstm_1/while/lstm_cell/addAddV20backward_lstm_1/while/lstm_cell/MatMul:product:02backward_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAbackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0ќ
'backward_lstm_1/while/lstm_cell/BiasAddBiasAdd'backward_lstm_1/while/lstm_cell/add:z:0>backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
/backward_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
%backward_lstm_1/while/lstm_cell/splitSplit8backward_lstm_1/while/lstm_cell/split/split_dim:output:00backward_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а:€€€€€€€€€а*
	num_splitХ
'backward_lstm_1/while/lstm_cell/SigmoidSigmoid.backward_lstm_1/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€аЧ
)backward_lstm_1/while/lstm_cell/Sigmoid_1Sigmoid.backward_lstm_1/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€а±
#backward_lstm_1/while/lstm_cell/mulMul-backward_lstm_1/while/lstm_cell/Sigmoid_1:y:0#backward_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€аП
$backward_lstm_1/while/lstm_cell/ReluRelu.backward_lstm_1/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€ај
%backward_lstm_1/while/lstm_cell/mul_1Mul+backward_lstm_1/while/lstm_cell/Sigmoid:y:02backward_lstm_1/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аµ
%backward_lstm_1/while/lstm_cell/add_1AddV2'backward_lstm_1/while/lstm_cell/mul:z:0)backward_lstm_1/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аЧ
)backward_lstm_1/while/lstm_cell/Sigmoid_2Sigmoid.backward_lstm_1/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€аМ
&backward_lstm_1/while/lstm_cell/Relu_1Relu)backward_lstm_1/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€аƒ
%backward_lstm_1/while/lstm_cell/mul_2Mul-backward_lstm_1/while/lstm_cell/Sigmoid_2:y:04backward_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:€€€€€€€€€аВ
@backward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ™
:backward_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_1_while_placeholder_1Ibackward_lstm_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0)backward_lstm_1/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“]
backward_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :М
backward_lstm_1/while/addAddV2!backward_lstm_1_while_placeholder$backward_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_1/while/add_1AddV28backward_lstm_1_while_backward_lstm_1_while_loop_counter&backward_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: Й
backward_lstm_1/while/IdentityIdentitybackward_lstm_1/while/add_1:z:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: ™
 backward_lstm_1/while/Identity_1Identity>backward_lstm_1_while_backward_lstm_1_while_maximum_iterations^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: Й
 backward_lstm_1/while/Identity_2Identitybackward_lstm_1/while/add:z:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: ґ
 backward_lstm_1/while/Identity_3IdentityJbackward_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_1/while/NoOp*
T0*
_output_shapes
: І
 backward_lstm_1/while/Identity_4Identity)backward_lstm_1/while/lstm_cell/mul_2:z:0^backward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аІ
 backward_lstm_1/while/Identity_5Identity)backward_lstm_1/while/lstm_cell/add_1:z:0^backward_lstm_1/while/NoOp*
T0*(
_output_shapes
:€€€€€€€€€аг
backward_lstm_1/while/NoOpNoOp7^backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp6^backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp8^backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5backward_lstm_1_while_backward_lstm_1_strided_slice_17backward_lstm_1_while_backward_lstm_1_strided_slice_1_0"I
backward_lstm_1_while_identity'backward_lstm_1/while/Identity:output:0"M
 backward_lstm_1_while_identity_1)backward_lstm_1/while/Identity_1:output:0"M
 backward_lstm_1_while_identity_2)backward_lstm_1/while/Identity_2:output:0"M
 backward_lstm_1_while_identity_3)backward_lstm_1/while/Identity_3:output:0"M
 backward_lstm_1_while_identity_4)backward_lstm_1/while/Identity_4:output:0"M
 backward_lstm_1_while_identity_5)backward_lstm_1/while/Identity_5:output:0"Д
?backward_lstm_1_while_lstm_cell_biasadd_readvariableop_resourceAbackward_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"Ж
@backward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourceBbackward_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"В
>backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource@backward_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"и
qbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_1_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€а:€€€€€€€€€а: : : : : 2p
6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp6backward_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2n
5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp5backward_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2r
7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp7backward_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"backward_lstm_1/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(backward_lstm_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:WS

_output_shapes
: 
9
_user_specified_name!backward_lstm_1/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97backward_lstm_1/TensorArrayUnstack/TensorListFromTensor:($
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
∆	
√
while_cond_848388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_848388___redundant_placeholder04
0while_while_cond_848388___redundant_placeholder14
0while_while_cond_848388___redundant_placeholder24
0while_while_cond_848388___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
—
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_850360

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
:€€€€€€€€€_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
•
E
)__inference_lambda_1_layer_call_fn_850348

inputs
identity≥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_849908d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
∆	
√
while_cond_848241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_848241___redundant_placeholder04
0while_while_cond_848241___redundant_placeholder14
0while_while_cond_848241___redundant_placeholder24
0while_while_cond_848241___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
∆	
√
while_cond_849396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_849396___redundant_placeholder04
0while_while_cond_849396___redundant_placeholder14
0while_while_cond_849396___redundant_placeholder24
0while_while_cond_849396___redundant_placeholder3
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
B: : : : :€€€€€€€€€а:€€€€€€€€€а: :::::J F
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
:€€€€€€€€€а:.*
(
_output_shapes
:€€€€€€€€€а:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:"нL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Є
serving_default§
I
lambda_1_input7
 serving_default_lambda_1_input:0€€€€€€€€€;
dense_10
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:°™
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
э
.trace_0
/trace_12∆
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_850240
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_850261µ
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
≥
0trace_0
1trace_12ь
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_849900
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_850219µ
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
”B–
!__inference__wrapped_model_848165lambda_1_input"Ш
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
≈
?trace_0
@trace_12О
)__inference_lambda_1_layer_call_fn_850343
)__inference_lambda_1_layer_call_fn_850348µ
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
ы
Atrace_0
Btrace_12ƒ
D__inference_lambda_1_layer_call_and_return_conditional_losses_850354
D__inference_lambda_1_layer_call_and_return_conditional_losses_850360µ
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
С
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32¶
0__inference_bidirectional_1_layer_call_fn_850377
0__inference_bidirectional_1_layer_call_fn_850394
0__inference_bidirectional_1_layer_call_fn_850411
0__inference_bidirectional_1_layer_call_fn_850428џ
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
э
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32Т
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_850718
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_851008
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_851298
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_851588џ
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
в
gtrace_02≈
(__inference_dense_1_layer_call_fn_851597Ш
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
э
htrace_02а
C__inference_dense_1_layer_call_and_return_conditional_losses_851607Ш
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
!:	ј2dense_1/kernel
:2dense_1/bias
B:@	А2/bidirectional_1/forward_lstm_1/lstm_cell/kernel
M:K
аА29bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel
<::А2-bidirectional_1/forward_lstm_1/lstm_cell/bias
C:A	А20bidirectional_1/backward_lstm_1/lstm_cell/kernel
N:L
аА2:bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel
=:;А2.bidirectional_1/backward_lstm_1/lstm_cell/bias
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
ЛBИ
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_850240lambda_1_input"ђ
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
ЛBИ
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_850261lambda_1_input"ђ
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
¶B£
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_849900lambda_1_input"ђ
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
¶B£
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_850219lambda_1_input"ђ
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
ёBџ
$__inference_signature_wrapper_850338lambda_1_input"†
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
jlambda_1_input
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
зBд
)__inference_lambda_1_layer_call_fn_850343inputs"ђ
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
зBд
)__inference_lambda_1_layer_call_fn_850348inputs"ђ
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
ВB€
D__inference_lambda_1_layer_call_and_return_conditional_losses_850354inputs"ђ
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
ВB€
D__inference_lambda_1_layer_call_and_return_conditional_losses_850360inputs"ђ
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
ОBЛ
0__inference_bidirectional_1_layer_call_fn_850377inputs_0" 
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
ОBЛ
0__inference_bidirectional_1_layer_call_fn_850394inputs_0" 
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
МBЙ
0__inference_bidirectional_1_layer_call_fn_850411inputs" 
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
МBЙ
0__inference_bidirectional_1_layer_call_fn_850428inputs" 
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
©B¶
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_850718inputs_0" 
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
©B¶
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_851008inputs_0" 
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
ІB§
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_851298inputs" 
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
ІB§
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_851588inputs" 
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
Д
Аtrace_0
Бtrace_1
Вtrace_2
Гtrace_32С
/__inference_forward_lstm_1_layer_call_fn_851618
/__inference_forward_lstm_1_layer_call_fn_851629
/__inference_forward_lstm_1_layer_call_fn_851640
/__inference_forward_lstm_1_layer_call_fn_851651 
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
р
Дtrace_0
Еtrace_1
Жtrace_2
Зtrace_32э
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_851796
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_851941
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_852086
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_852231 
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
И
Цtrace_0
Чtrace_1
Шtrace_2
Щtrace_32Х
0__inference_backward_lstm_1_layer_call_fn_852242
0__inference_backward_lstm_1_layer_call_fn_852253
0__inference_backward_lstm_1_layer_call_fn_852264
0__inference_backward_lstm_1_layer_call_fn_852275 
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
ф
Ъtrace_0
Ыtrace_1
Ьtrace_2
Эtrace_32Б
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852422
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852569
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852716
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852863 
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
“Bѕ
(__inference_dense_1_layer_call_fn_851597inputs"Ш
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
нBк
C__inference_dense_1_layer_call_and_return_conditional_losses_851607inputs"Ш
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
G:E	А26Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/kernel
G:E	А26Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/kernel
R:P
аА2@Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel
R:P
аА2@Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/recurrent_kernel
A:?А24Adam/m/bidirectional_1/forward_lstm_1/lstm_cell/bias
A:?А24Adam/v/bidirectional_1/forward_lstm_1/lstm_cell/bias
H:F	А27Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/kernel
H:F	А27Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/kernel
S:Q
аА2AAdam/m/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel
S:Q
аА2AAdam/v/bidirectional_1/backward_lstm_1/lstm_cell/recurrent_kernel
B:@А25Adam/m/bidirectional_1/backward_lstm_1/lstm_cell/bias
B:@А25Adam/v/bidirectional_1/backward_lstm_1/lstm_cell/bias
&:$	ј2Adam/m/dense_1/kernel
&:$	ј2Adam/v/dense_1/kernel
:2Adam/m/dense_1/bias
:2Adam/v/dense_1/bias
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
АBэ
/__inference_forward_lstm_1_layer_call_fn_851618inputs_0"љ
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
/__inference_forward_lstm_1_layer_call_fn_851629inputs_0"љ
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
/__inference_forward_lstm_1_layer_call_fn_851640inputs"љ
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
/__inference_forward_lstm_1_layer_call_fn_851651inputs"љ
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
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_851796inputs_0"љ
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
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_851941inputs_0"љ
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
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_852086inputs"љ
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
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_852231inputs"љ
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
…
ѓtrace_0
∞trace_12О
*__inference_lstm_cell_layer_call_fn_852880
*__inference_lstm_cell_layer_call_fn_852897≥
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
€
±trace_0
≤trace_12ƒ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_852929
E__inference_lstm_cell_layer_call_and_return_conditional_losses_852961≥
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
БBю
0__inference_backward_lstm_1_layer_call_fn_852242inputs_0"љ
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
БBю
0__inference_backward_lstm_1_layer_call_fn_852253inputs_0"љ
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
0__inference_backward_lstm_1_layer_call_fn_852264inputs"љ
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
0__inference_backward_lstm_1_layer_call_fn_852275inputs"љ
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
ЬBЩ
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852422inputs_0"љ
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
ЬBЩ
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852569inputs_0"љ
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
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852716inputs"љ
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
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852863inputs"љ
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
…
Єtrace_0
єtrace_12О
*__inference_lstm_cell_layer_call_fn_852978
*__inference_lstm_cell_layer_call_fn_852995≥
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
€
Їtrace_0
їtrace_12ƒ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_853027
E__inference_lstm_cell_layer_call_and_return_conditional_losses_853059≥
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
юBы
*__inference_lstm_cell_layer_call_fn_852880inputsstates_0states_1"Ѓ
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
юBы
*__inference_lstm_cell_layer_call_fn_852897inputsstates_0states_1"Ѓ
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
ЩBЦ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_852929inputsstates_0states_1"Ѓ
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
ЩBЦ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_852961inputsstates_0states_1"Ѓ
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
юBы
*__inference_lstm_cell_layer_call_fn_852978inputsstates_0states_1"Ѓ
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
юBы
*__inference_lstm_cell_layer_call_fn_852995inputsstates_0states_1"Ѓ
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
ЩBЦ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_853027inputsstates_0states_1"Ѓ
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
ЩBЦ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_853059inputsstates_0states_1"Ѓ
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
 Ы
!__inference__wrapped_model_848165v#$%&'(!"7Ґ4
-Ґ*
(К%
lambda_1_input€€€€€€€€€
™ "1™.
,
dense_1!К
dense_1€€€€€€€€€’
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852422Е&'(OҐL
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
tensor_0€€€€€€€€€а
Ъ ’
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852569Е&'(OҐL
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
tensor_0€€€€€€€€€а
Ъ „
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852716З&'(QҐN
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
tensor_0€€€€€€€€€а
Ъ „
K__inference_backward_lstm_1_layer_call_and_return_conditional_losses_852863З&'(QҐN
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
tensor_0€€€€€€€€€а
Ъ Ѓ
0__inference_backward_lstm_1_layer_call_fn_852242z&'(OҐL
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
unknown€€€€€€€€€аЃ
0__inference_backward_lstm_1_layer_call_fn_852253z&'(OҐL
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
unknown€€€€€€€€€а∞
0__inference_backward_lstm_1_layer_call_fn_852264|&'(QҐN
GҐD
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
p

 
™ ""К
unknown€€€€€€€€€а∞
0__inference_backward_lstm_1_layer_call_fn_852275|&'(QҐN
GҐD
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
p 

 
™ ""К
unknown€€€€€€€€€ае
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_850718Х#$%&'(\ҐY
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
tensor_0€€€€€€€€€ј
Ъ е
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_851008Х#$%&'(\ҐY
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
tensor_0€€€€€€€€€ј
Ъ Ћ
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_851298|#$%&'(CҐ@
9Ґ6
$К!
inputs€€€€€€€€€
p

 

 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€ј
Ъ Ћ
K__inference_bidirectional_1_layer_call_and_return_conditional_losses_851588|#$%&'(CҐ@
9Ґ6
$К!
inputs€€€€€€€€€
p 

 

 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€ј
Ъ њ
0__inference_bidirectional_1_layer_call_fn_850377К#$%&'(\ҐY
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
unknown€€€€€€€€€јњ
0__inference_bidirectional_1_layer_call_fn_850394К#$%&'(\ҐY
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
unknown€€€€€€€€€ј•
0__inference_bidirectional_1_layer_call_fn_850411q#$%&'(CҐ@
9Ґ6
$К!
inputs€€€€€€€€€
p

 

 

 
™ ""К
unknown€€€€€€€€€ј•
0__inference_bidirectional_1_layer_call_fn_850428q#$%&'(CҐ@
9Ґ6
$К!
inputs€€€€€€€€€
p 

 

 

 
™ ""К
unknown€€€€€€€€€јЂ
C__inference_dense_1_layer_call_and_return_conditional_losses_851607d!"0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Е
(__inference_dense_1_layer_call_fn_851597Y!"0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ "!К
unknown€€€€€€€€€‘
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_851796Е#$%OҐL
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
tensor_0€€€€€€€€€а
Ъ ‘
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_851941Е#$%OҐL
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
tensor_0€€€€€€€€€а
Ъ ÷
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_852086З#$%QҐN
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
tensor_0€€€€€€€€€а
Ъ ÷
J__inference_forward_lstm_1_layer_call_and_return_conditional_losses_852231З#$%QҐN
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
tensor_0€€€€€€€€€а
Ъ ≠
/__inference_forward_lstm_1_layer_call_fn_851618z#$%OҐL
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
unknown€€€€€€€€€а≠
/__inference_forward_lstm_1_layer_call_fn_851629z#$%OҐL
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
unknown€€€€€€€€€аѓ
/__inference_forward_lstm_1_layer_call_fn_851640|#$%QҐN
GҐD
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
p

 
™ ""К
unknown€€€€€€€€€аѓ
/__inference_forward_lstm_1_layer_call_fn_851651|#$%QҐN
GҐD
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
p 

 
™ ""К
unknown€€€€€€€€€а≥
D__inference_lambda_1_layer_call_and_return_conditional_losses_850354k7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ ≥
D__inference_lambda_1_layer_call_and_return_conditional_losses_850360k7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ Н
)__inference_lambda_1_layer_call_fn_850343`7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p
™ "%К"
unknown€€€€€€€€€Н
)__inference_lambda_1_layer_call_fn_850348`7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p 
™ "%К"
unknown€€€€€€€€€д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_852929Ъ#$%ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€а
#К 
states_1€€€€€€€€€а
p
™ "НҐЙ
БҐ~
%К"

tensor_0_0€€€€€€€€€а
UЪR
'К$
tensor_0_1_0€€€€€€€€€а
'К$
tensor_0_1_1€€€€€€€€€а
Ъ д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_852961Ъ#$%ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€а
#К 
states_1€€€€€€€€€а
p 
™ "НҐЙ
БҐ~
%К"

tensor_0_0€€€€€€€€€а
UЪR
'К$
tensor_0_1_0€€€€€€€€€а
'К$
tensor_0_1_1€€€€€€€€€а
Ъ д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_853027Ъ&'(ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€а
#К 
states_1€€€€€€€€€а
p
™ "НҐЙ
БҐ~
%К"

tensor_0_0€€€€€€€€€а
UЪR
'К$
tensor_0_1_0€€€€€€€€€а
'К$
tensor_0_1_1€€€€€€€€€а
Ъ д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_853059Ъ&'(ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€а
#К 
states_1€€€€€€€€€а
p 
™ "НҐЙ
БҐ~
%К"

tensor_0_0€€€€€€€€€а
UЪR
'К$
tensor_0_1_0€€€€€€€€€а
'К$
tensor_0_1_1€€€€€€€€€а
Ъ ґ
*__inference_lstm_cell_layer_call_fn_852880З#$%ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€а
#К 
states_1€€€€€€€€€а
p
™ "{Ґx
#К 
tensor_0€€€€€€€€€а
QЪN
%К"

tensor_1_0€€€€€€€€€а
%К"

tensor_1_1€€€€€€€€€аґ
*__inference_lstm_cell_layer_call_fn_852897З#$%ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€а
#К 
states_1€€€€€€€€€а
p 
™ "{Ґx
#К 
tensor_0€€€€€€€€€а
QЪN
%К"

tensor_1_0€€€€€€€€€а
%К"

tensor_1_1€€€€€€€€€аґ
*__inference_lstm_cell_layer_call_fn_852978З&'(ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€а
#К 
states_1€€€€€€€€€а
p
™ "{Ґx
#К 
tensor_0€€€€€€€€€а
QЪN
%К"

tensor_1_0€€€€€€€€€а
%К"

tensor_1_1€€€€€€€€€аґ
*__inference_lstm_cell_layer_call_fn_852995З&'(ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states_0€€€€€€€€€а
#К 
states_1€€€€€€€€€а
p 
™ "{Ґx
#К 
tensor_0€€€€€€€€€а
QЪN
%К"

tensor_1_0€€€€€€€€€а
%К"

tensor_1_1€€€€€€€€€аЁ
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_849900y#$%&'(!"?Ґ<
5Ґ2
(К%
lambda_1_input€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ё
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_850219y#$%&'(!"?Ґ<
5Ґ2
(К%
lambda_1_input€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ј
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_850240n#$%&'(!"?Ґ<
5Ґ2
(К%
lambda_1_input€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€Ј
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_850261n#$%&'(!"?Ґ<
5Ґ2
(К%
lambda_1_input€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€±
$__inference_signature_wrapper_850338И#$%&'(!"IҐF
Ґ 
?™<
:
lambda_1_input(К%
lambda_1_input€€€€€€€€€"1™.
,
dense_1!К
dense_1€€€€€€€€€