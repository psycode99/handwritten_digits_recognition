ĺ
­&ţ%
D
AddV2
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"!
output_typetype0	:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
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
A
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype

ImageSummary
tag
tensor"T
summary"

max_imagesint(0"
Ttype0:
2"'
	bad_colortensorB:˙  ˙
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	
0
Neg
x"T
y"T"
Ttype:
2
	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
ŕ
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 
9
VarIsInitializedOp
resource
is_initialized

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.11.02v2.11.0-rc2-15-g6290819256d´Ř
f
XPlaceholder*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
i
LabelsPlaceholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
dtype0*
shape:˙˙˙˙˙˙˙˙˙

`
layer_1/w/shapeConst*
_output_shapes
:*
dtype0*
valueB"     
S
layer_1/w/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
U
layer_1/w/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚĚ=

layer_1/w/TruncatedNormalTruncatedNormallayer_1/w/shape*
T0* 
_output_shapes
:
*
dtype0*
seedą˙ĺ)*
seed2*
l
layer_1/w/mulMullayer_1/w/TruncatedNormallayer_1/w/stddev*
T0* 
_output_shapes
:

\
	layer_1/wAddV2layer_1/w/mullayer_1/w/mean*
T0* 
_output_shapes
:

Ë
layer_1/VariableVarHandleOp*#
_class
loc:@layer_1/Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
*!
shared_namelayer_1/Variable
q
1layer_1/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOplayer_1/Variable*
_output_shapes
: 

layer_1/Variable/AssignAssignVariableOplayer_1/Variable	layer_1/w*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
w
$layer_1/Variable/Read/ReadVariableOpReadVariableOplayer_1/Variable* 
_output_shapes
:
*
dtype0
X
	layer_1/bConst*
_output_shapes	
:*
dtype0*
valueB*    
Ě
layer_1/Variable_1VarHandleOp*%
_class
loc:@layer_1/Variable_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*#
shared_namelayer_1/Variable_1
u
3layer_1/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOplayer_1/Variable_1*
_output_shapes
: 

layer_1/Variable_1/AssignAssignVariableOplayer_1/Variable_1	layer_1/b*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
v
&layer_1/Variable_1/Read/ReadVariableOpReadVariableOplayer_1/Variable_1*
_output_shapes	
:*
dtype0
p
layer_1/MatMul/ReadVariableOpReadVariableOplayer_1/Variable* 
_output_shapes
:
*
dtype0

layer_1/MatMulMatMulXlayer_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
j
layer_1/add/ReadVariableOpReadVariableOplayer_1/Variable_1*
_output_shapes	
:*
dtype0
s
layer_1/addAddV2layer_1/MatMullayer_1/add/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
layer_1/ReluRelulayer_1/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
layer_1/weights/tagConst*
_output_shapes
: *
dtype0* 
valueB Blayer_1/weights
q
layer_1/weights/ReadVariableOpReadVariableOplayer_1/Variable* 
_output_shapes
:
*
dtype0
y
layer_1/weightsHistogramSummarylayer_1/weights/taglayer_1/weights/ReadVariableOp*
T0*
_output_shapes
: 
a
layer_1/biases/tagConst*
_output_shapes
: *
dtype0*
valueB Blayer_1/biases
m
layer_1/biases/ReadVariableOpReadVariableOplayer_1/Variable_1*
_output_shapes	
:*
dtype0
v
layer_1/biasesHistogramSummarylayer_1/biases/taglayer_1/biases/ReadVariableOp*
T0*
_output_shapes
: 
R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
b
dropout/MulMullayer_1/Reludropout/Const*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Y
dropout/ShapeShapelayer_1/Relu*
T0*
_output_shapes
:*
out_type0

$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*

seed *
seed2 
[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>

dropout/GreaterEqualGreaterEqual$dropout/random_uniform/RandomUniformdropout/GreaterEqual/y*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    

dropout/SelectV2SelectV2dropout/GreaterEqualdropout/Muldropout/Const_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
layer_2/w/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
S
layer_2/w/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
U
layer_2/w/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚĚ=

layer_2/w/TruncatedNormalTruncatedNormallayer_2/w/shape*
T0*
_output_shapes
:	@*
dtype0*
seedą˙ĺ)*
seed2*
k
layer_2/w/mulMullayer_2/w/TruncatedNormallayer_2/w/stddev*
T0*
_output_shapes
:	@
[
	layer_2/wAddV2layer_2/w/mullayer_2/w/mean*
T0*
_output_shapes
:	@
Ę
layer_2/VariableVarHandleOp*#
_class
loc:@layer_2/Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	@*!
shared_namelayer_2/Variable
q
1layer_2/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOplayer_2/Variable*
_output_shapes
: 

layer_2/Variable/AssignAssignVariableOplayer_2/Variable	layer_2/w*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
v
$layer_2/Variable/Read/ReadVariableOpReadVariableOplayer_2/Variable*
_output_shapes
:	@*
dtype0
V
	layer_2/bConst*
_output_shapes
:@*
dtype0*
valueB@*    
Ë
layer_2/Variable_1VarHandleOp*%
_class
loc:@layer_2/Variable_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*#
shared_namelayer_2/Variable_1
u
3layer_2/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOplayer_2/Variable_1*
_output_shapes
: 

layer_2/Variable_1/AssignAssignVariableOplayer_2/Variable_1	layer_2/b*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
u
&layer_2/Variable_1/Read/ReadVariableOpReadVariableOplayer_2/Variable_1*
_output_shapes
:@*
dtype0
o
layer_2/MatMul/ReadVariableOpReadVariableOplayer_2/Variable*
_output_shapes
:	@*
dtype0
Ą
layer_2/MatMulMatMuldropout/SelectV2layer_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_a( *
transpose_b( 
i
layer_2/add/ReadVariableOpReadVariableOplayer_2/Variable_1*
_output_shapes
:@*
dtype0
r
layer_2/addAddV2layer_2/MatMullayer_2/add/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
S
layer_2/ReluRelulayer_2/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
c
layer_2/weights/tagConst*
_output_shapes
: *
dtype0* 
valueB Blayer_2/weights
p
layer_2/weights/ReadVariableOpReadVariableOplayer_2/Variable*
_output_shapes
:	@*
dtype0
y
layer_2/weightsHistogramSummarylayer_2/weights/taglayer_2/weights/ReadVariableOp*
T0*
_output_shapes
: 
a
layer_2/biases/tagConst*
_output_shapes
: *
dtype0*
valueB Blayer_2/biases
l
layer_2/biases/ReadVariableOpReadVariableOplayer_2/Variable_1*
_output_shapes
:@*
dtype0
v
layer_2/biasesHistogramSummarylayer_2/biases/taglayer_2/biases/ReadVariableOp*
T0*
_output_shapes
: 
\
out/w/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   
   
O

out/w/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Q
out/w/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚĚ=

out/w/TruncatedNormalTruncatedNormalout/w/shape*
T0*
_output_shapes

:@
*
dtype0*
seedą˙ĺ)*
seed2*
^
	out/w/mulMulout/w/TruncatedNormalout/w/stddev*
T0*
_output_shapes

:@

N
out/wAddV2	out/w/mul
out/w/mean*
T0*
_output_shapes

:@

˝
out/VariableVarHandleOp*
_class
loc:@out/Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:@
*
shared_nameout/Variable
i
-out/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpout/Variable*
_output_shapes
: 

out/Variable/AssignAssignVariableOpout/Variableout/w*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
m
 out/Variable/Read/ReadVariableOpReadVariableOpout/Variable*
_output_shapes

:@
*
dtype0
R
out/bConst*
_output_shapes
:
*
dtype0*
valueB
*    
ż
out/Variable_1VarHandleOp*!
_class
loc:@out/Variable_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
*
shared_nameout/Variable_1
m
/out/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpout/Variable_1*
_output_shapes
: 

out/Variable_1/AssignAssignVariableOpout/Variable_1out/b*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
m
"out/Variable_1/Read/ReadVariableOpReadVariableOpout/Variable_1*
_output_shapes
:
*
dtype0
f
out/MatMul/ReadVariableOpReadVariableOpout/Variable*
_output_shapes

:@
*
dtype0


out/MatMulMatMullayer_2/Reluout/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( *
transpose_b( 
a
out/add/ReadVariableOpReadVariableOpout/Variable_1*
_output_shapes
:
*
dtype0
f
out/addAddV2
out/MatMulout/add/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Q
out/SoftmaxSoftmaxout/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

[
out/weights/tagConst*
_output_shapes
: *
dtype0*
valueB Bout/weights
g
out/weights/ReadVariableOpReadVariableOpout/Variable*
_output_shapes

:@
*
dtype0
m
out/weightsHistogramSummaryout/weights/tagout/weights/ReadVariableOp*
T0*
_output_shapes
: 
Y
out/biases/tagConst*
_output_shapes
: *
dtype0*
valueB B
out/biases
d
out/biases/ReadVariableOpReadVariableOpout/Variable_1*
_output_shapes
:
*
dtype0
j

out/biasesHistogramSummaryout/biases/tagout/biases/ReadVariableOp*
T0*
_output_shapes
: 
r
0loss_calc/softmax_cross_entropy_with_logits/RankConst*
_output_shapes
: *
dtype0*
value	B :
|
1loss_calc/softmax_cross_entropy_with_logits/ShapeShapeout/Softmax*
T0*
_output_shapes
:*
out_type0
t
2loss_calc/softmax_cross_entropy_with_logits/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :
~
3loss_calc/softmax_cross_entropy_with_logits/Shape_1Shapeout/Softmax*
T0*
_output_shapes
:*
out_type0
s
1loss_calc/softmax_cross_entropy_with_logits/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :
ž
/loss_calc/softmax_cross_entropy_with_logits/SubSub2loss_calc/softmax_cross_entropy_with_logits/Rank_11loss_calc/softmax_cross_entropy_with_logits/Sub/y*
T0*
_output_shapes
: 
Ş
7loss_calc/softmax_cross_entropy_with_logits/Slice/beginPack/loss_calc/softmax_cross_entropy_with_logits/Sub*
N*
T0*
_output_shapes
:*

axis 

6loss_calc/softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:

1loss_calc/softmax_cross_entropy_with_logits/SliceSlice3loss_calc/softmax_cross_entropy_with_logits/Shape_17loss_calc/softmax_cross_entropy_with_logits/Slice/begin6loss_calc/softmax_cross_entropy_with_logits/Slice/size*
Index0*
T0*
_output_shapes
:

;loss_calc/softmax_cross_entropy_with_logits/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙
y
7loss_calc/softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ą
2loss_calc/softmax_cross_entropy_with_logits/concatConcatV2;loss_calc/softmax_cross_entropy_with_logits/concat/values_01loss_calc/softmax_cross_entropy_with_logits/Slice7loss_calc/softmax_cross_entropy_with_logits/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
Č
3loss_calc/softmax_cross_entropy_with_logits/ReshapeReshapeout/Softmax2loss_calc/softmax_cross_entropy_with_logits/concat*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
t
2loss_calc/softmax_cross_entropy_with_logits/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :
y
3loss_calc/softmax_cross_entropy_with_logits/Shape_2ShapeLabels*
T0*
_output_shapes
:*
out_type0
u
3loss_calc/softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :
Â
1loss_calc/softmax_cross_entropy_with_logits/Sub_1Sub2loss_calc/softmax_cross_entropy_with_logits/Rank_23loss_calc/softmax_cross_entropy_with_logits/Sub_1/y*
T0*
_output_shapes
: 
Ž
9loss_calc/softmax_cross_entropy_with_logits/Slice_1/beginPack1loss_calc/softmax_cross_entropy_with_logits/Sub_1*
N*
T0*
_output_shapes
:*

axis 

8loss_calc/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:

3loss_calc/softmax_cross_entropy_with_logits/Slice_1Slice3loss_calc/softmax_cross_entropy_with_logits/Shape_29loss_calc/softmax_cross_entropy_with_logits/Slice_1/begin8loss_calc/softmax_cross_entropy_with_logits/Slice_1/size*
Index0*
T0*
_output_shapes
:

=loss_calc/softmax_cross_entropy_with_logits/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙
{
9loss_calc/softmax_cross_entropy_with_logits/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Š
4loss_calc/softmax_cross_entropy_with_logits/concat_1ConcatV2=loss_calc/softmax_cross_entropy_with_logits/concat_1/values_03loss_calc/softmax_cross_entropy_with_logits/Slice_19loss_calc/softmax_cross_entropy_with_logits/concat_1/axis*
N*
T0*

Tidx0*
_output_shapes
:
Ç
5loss_calc/softmax_cross_entropy_with_logits/Reshape_1ReshapeLabels4loss_calc/softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

+loss_calc/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits3loss_calc/softmax_cross_entropy_with_logits/Reshape5loss_calc/softmax_cross_entropy_with_logits/Reshape_1*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
u
3loss_calc/softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :
Ŕ
1loss_calc/softmax_cross_entropy_with_logits/Sub_2Sub0loss_calc/softmax_cross_entropy_with_logits/Rank3loss_calc/softmax_cross_entropy_with_logits/Sub_2/y*
T0*
_output_shapes
: 

9loss_calc/softmax_cross_entropy_with_logits/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB: 
­
8loss_calc/softmax_cross_entropy_with_logits/Slice_2/sizePack1loss_calc/softmax_cross_entropy_with_logits/Sub_2*
N*
T0*
_output_shapes
:*

axis 

3loss_calc/softmax_cross_entropy_with_logits/Slice_2Slice1loss_calc/softmax_cross_entropy_with_logits/Shape9loss_calc/softmax_cross_entropy_with_logits/Slice_2/begin8loss_calc/softmax_cross_entropy_with_logits/Slice_2/size*
Index0*
T0*
_output_shapes
:
Ţ
5loss_calc/softmax_cross_entropy_with_logits/Reshape_2Reshape+loss_calc/softmax_cross_entropy_with_logits3loss_calc/softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Y
loss_calc/ConstConst*
_output_shapes
:*
dtype0*
valueB: 

loss_calc/MeanMean5loss_calc/softmax_cross_entropy_with_logits/Reshape_2loss_calc/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
\
optimizer/gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
h
#optimizer/gradients/grad_ys_0/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

optimizer/gradients/grad_ys_0Filloptimizer/gradients/Shape#optimizer/gradients/grad_ys_0/Const*
T0*
_output_shapes
: *

index_type0

5optimizer/gradients/loss_calc/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Ă
/optimizer/gradients/loss_calc/Mean_grad/ReshapeReshapeoptimizer/gradients/grad_ys_05optimizer/gradients/loss_calc/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
˘
-optimizer/gradients/loss_calc/Mean_grad/ShapeShape5loss_calc/softmax_cross_entropy_with_logits/Reshape_2*
T0*
_output_shapes
:*
out_type0
Ô
,optimizer/gradients/loss_calc/Mean_grad/TileTile/optimizer/gradients/loss_calc/Mean_grad/Reshape-optimizer/gradients/loss_calc/Mean_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
/optimizer/gradients/loss_calc/Mean_grad/Shape_1Shape5loss_calc/softmax_cross_entropy_with_logits/Reshape_2*
T0*
_output_shapes
:*
out_type0
r
/optimizer/gradients/loss_calc/Mean_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
w
-optimizer/gradients/loss_calc/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ň
,optimizer/gradients/loss_calc/Mean_grad/ProdProd/optimizer/gradients/loss_calc/Mean_grad/Shape_1-optimizer/gradients/loss_calc/Mean_grad/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
y
/optimizer/gradients/loss_calc/Mean_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Ö
.optimizer/gradients/loss_calc/Mean_grad/Prod_1Prod/optimizer/gradients/loss_calc/Mean_grad/Shape_2/optimizer/gradients/loss_calc/Mean_grad/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
s
1optimizer/gradients/loss_calc/Mean_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
ž
/optimizer/gradients/loss_calc/Mean_grad/MaximumMaximum.optimizer/gradients/loss_calc/Mean_grad/Prod_11optimizer/gradients/loss_calc/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
ź
0optimizer/gradients/loss_calc/Mean_grad/floordivFloorDiv,optimizer/gradients/loss_calc/Mean_grad/Prod/optimizer/gradients/loss_calc/Mean_grad/Maximum*
T0*
_output_shapes
: 
Ś
,optimizer/gradients/loss_calc/Mean_grad/CastCast0optimizer/gradients/loss_calc/Mean_grad/floordiv*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
Ä
/optimizer/gradients/loss_calc/Mean_grad/truedivRealDiv,optimizer/gradients/loss_calc/Mean_grad/Tile,optimizer/gradients/loss_calc/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
Toptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape+loss_calc/softmax_cross_entropy_with_logits*
T0*
_output_shapes
:*
out_type0
¤
Voptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape/optimizer/gradients/loss_calc/Mean_grad/truedivToptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

optimizer/gradients/zeros_like	ZerosLike-loss_calc/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

Soptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
Č
Ooptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsVoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeSoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
Hoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mulMulOoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims-loss_calc/softmax_cross_entropy_with_logits:1*
T0*&
 _has_manual_control_dependencies(*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Í
Ooptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax3loss_calc/softmax_cross_entropy_with_logits/Reshape*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ű
Hoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/NegNegOoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
Uoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
Ě
Qoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsVoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeUoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*
T0*

Tdim0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ń
Joptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mul_1MulQoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1Hoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/Neg*
T0*&
 _has_manual_control_dependencies(*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

Uoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOpI^optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mulK^optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mul_1*&
 _has_manual_control_dependencies(
Ł
]optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentityHoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mulV^optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mul*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Š
_optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1IdentityJoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mul_1V^optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*]
_classS
QOloc:@optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mul_1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

Roptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapeout/Softmax*
T0*
_output_shapes
:*
out_type0
Ň
Toptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshape]optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyRoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ä
(optimizer/gradients/out/Softmax_grad/mulMulToptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_grad/Reshapeout/Softmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


:optimizer/gradients/out/Softmax_grad/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
ä
(optimizer/gradients/out/Softmax_grad/SumSum(optimizer/gradients/out/Softmax_grad/mul:optimizer/gradients/out/Softmax_grad/Sum/reduction_indices*
T0*

Tidx0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
á
(optimizer/gradients/out/Softmax_grad/subSubToptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_grad/Reshape(optimizer/gradients/out/Softmax_grad/Sum*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


*optimizer/gradients/out/Softmax_grad/mul_1Mul(optimizer/gradients/out/Softmax_grad/subout/Softmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

p
&optimizer/gradients/out/add_grad/ShapeShape
out/MatMul*
T0*
_output_shapes
:*
out_type0
~
(optimizer/gradients/out/add_grad/Shape_1Shapeout/add/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
Ţ
6optimizer/gradients/out/add_grad/BroadcastGradientArgsBroadcastGradientArgs&optimizer/gradients/out/add_grad/Shape(optimizer/gradients/out/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ď
$optimizer/gradients/out/add_grad/SumSum*optimizer/gradients/out/Softmax_grad/mul_16optimizer/gradients/out/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
é
(optimizer/gradients/out/add_grad/ReshapeReshape$optimizer/gradients/out/add_grad/Sum&optimizer/gradients/out/add_grad/Shape*
T0*
Tshape0*&
 _has_manual_control_dependencies(*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ó
&optimizer/gradients/out/add_grad/Sum_1Sum*optimizer/gradients/out/Softmax_grad/mul_18optimizer/gradients/out/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
â
*optimizer/gradients/out/add_grad/Reshape_1Reshape&optimizer/gradients/out/add_grad/Sum_1(optimizer/gradients/out/add_grad/Shape_1*
T0*
Tshape0*&
 _has_manual_control_dependencies(*
_output_shapes
:

š
1optimizer/gradients/out/add_grad/tuple/group_depsNoOp)^optimizer/gradients/out/add_grad/Reshape+^optimizer/gradients/out/add_grad/Reshape_1*&
 _has_manual_control_dependencies(

9optimizer/gradients/out/add_grad/tuple/control_dependencyIdentity(optimizer/gradients/out/add_grad/Reshape2^optimizer/gradients/out/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@optimizer/gradients/out/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


;optimizer/gradients/out/add_grad/tuple/control_dependency_1Identity*optimizer/gradients/out/add_grad/Reshape_12^optimizer/gradients/out/add_grad/tuple/group_deps*
T0*=
_class3
1/loc:@optimizer/gradients/out/add_grad/Reshape_1*
_output_shapes
:


*optimizer/gradients/out/MatMul_grad/MatMulMatMul9optimizer/gradients/out/add_grad/tuple/control_dependencyout/MatMul/ReadVariableOp*
T0*&
 _has_manual_control_dependencies(*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_a( *
transpose_b(
ö
,optimizer/gradients/out/MatMul_grad/MatMul_1MatMullayer_2/Relu9optimizer/gradients/out/add_grad/tuple/control_dependency*
T0*&
 _has_manual_control_dependencies(*
_output_shapes

:@
*
transpose_a(*
transpose_b( 
Ŕ
4optimizer/gradients/out/MatMul_grad/tuple/group_depsNoOp+^optimizer/gradients/out/MatMul_grad/MatMul-^optimizer/gradients/out/MatMul_grad/MatMul_1*&
 _has_manual_control_dependencies(

<optimizer/gradients/out/MatMul_grad/tuple/control_dependencyIdentity*optimizer/gradients/out/MatMul_grad/MatMul5^optimizer/gradients/out/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@optimizer/gradients/out/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

>optimizer/gradients/out/MatMul_grad/tuple/control_dependency_1Identity,optimizer/gradients/out/MatMul_grad/MatMul_15^optimizer/gradients/out/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@optimizer/gradients/out/MatMul_grad/MatMul_1*
_output_shapes

:@

¸
.optimizer/gradients/layer_2/Relu_grad/ReluGradReluGrad<optimizer/gradients/out/MatMul_grad/tuple/control_dependencylayer_2/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
x
*optimizer/gradients/layer_2/add_grad/ShapeShapelayer_2/MatMul*
T0*
_output_shapes
:*
out_type0

,optimizer/gradients/layer_2/add_grad/Shape_1Shapelayer_2/add/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
ę
:optimizer/gradients/layer_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs*optimizer/gradients/layer_2/add_grad/Shape,optimizer/gradients/layer_2/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ű
(optimizer/gradients/layer_2/add_grad/SumSum.optimizer/gradients/layer_2/Relu_grad/ReluGrad:optimizer/gradients/layer_2/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ő
,optimizer/gradients/layer_2/add_grad/ReshapeReshape(optimizer/gradients/layer_2/add_grad/Sum*optimizer/gradients/layer_2/add_grad/Shape*
T0*
Tshape0*&
 _has_manual_control_dependencies(*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ß
*optimizer/gradients/layer_2/add_grad/Sum_1Sum.optimizer/gradients/layer_2/Relu_grad/ReluGrad<optimizer/gradients/layer_2/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
î
.optimizer/gradients/layer_2/add_grad/Reshape_1Reshape*optimizer/gradients/layer_2/add_grad/Sum_1,optimizer/gradients/layer_2/add_grad/Shape_1*
T0*
Tshape0*&
 _has_manual_control_dependencies(*
_output_shapes
:@
Ĺ
5optimizer/gradients/layer_2/add_grad/tuple/group_depsNoOp-^optimizer/gradients/layer_2/add_grad/Reshape/^optimizer/gradients/layer_2/add_grad/Reshape_1*&
 _has_manual_control_dependencies(
˘
=optimizer/gradients/layer_2/add_grad/tuple/control_dependencyIdentity,optimizer/gradients/layer_2/add_grad/Reshape6^optimizer/gradients/layer_2/add_grad/tuple/group_deps*
T0*?
_class5
31loc:@optimizer/gradients/layer_2/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

?optimizer/gradients/layer_2/add_grad/tuple/control_dependency_1Identity.optimizer/gradients/layer_2/add_grad/Reshape_16^optimizer/gradients/layer_2/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@optimizer/gradients/layer_2/add_grad/Reshape_1*
_output_shapes
:@

.optimizer/gradients/layer_2/MatMul_grad/MatMulMatMul=optimizer/gradients/layer_2/add_grad/tuple/control_dependencylayer_2/MatMul/ReadVariableOp*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(

0optimizer/gradients/layer_2/MatMul_grad/MatMul_1MatMuldropout/SelectV2=optimizer/gradients/layer_2/add_grad/tuple/control_dependency*
T0*&
 _has_manual_control_dependencies(*
_output_shapes
:	@*
transpose_a(*
transpose_b( 
Ě
8optimizer/gradients/layer_2/MatMul_grad/tuple/group_depsNoOp/^optimizer/gradients/layer_2/MatMul_grad/MatMul1^optimizer/gradients/layer_2/MatMul_grad/MatMul_1*&
 _has_manual_control_dependencies(
­
@optimizer/gradients/layer_2/MatMul_grad/tuple/control_dependencyIdentity.optimizer/gradients/layer_2/MatMul_grad/MatMul9^optimizer/gradients/layer_2/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@optimizer/gradients/layer_2/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
Boptimizer/gradients/layer_2/MatMul_grad/tuple/control_dependency_1Identity0optimizer/gradients/layer_2/MatMul_grad/MatMul_19^optimizer/gradients/layer_2/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@optimizer/gradients/layer_2/MatMul_grad/MatMul_1*
_output_shapes
:	@
t
/optimizer/gradients/dropout/SelectV2_grad/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
ú
2optimizer/gradients/dropout/SelectV2_grad/SelectV2SelectV2dropout/GreaterEqual@optimizer/gradients/layer_2/MatMul_grad/tuple/control_dependency/optimizer/gradients/dropout/SelectV2_grad/zeros*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
/optimizer/gradients/dropout/SelectV2_grad/ShapeShapedropout/Mul*
T0*
_output_shapes
:*
out_type0

1optimizer/gradients/dropout/SelectV2_grad/Shape_1Shapedropout/SelectV2*
T0*
_output_shapes
:*
out_type0
ů
?optimizer/gradients/dropout/SelectV2_grad/BroadcastGradientArgsBroadcastGradientArgs/optimizer/gradients/dropout/SelectV2_grad/Shape1optimizer/gradients/dropout/SelectV2_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

-optimizer/gradients/dropout/SelectV2_grad/SumSum2optimizer/gradients/dropout/SelectV2_grad/SelectV2?optimizer/gradients/dropout/SelectV2_grad/BroadcastGradientArgs*
T0*

Tidx0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	keep_dims(

1optimizer/gradients/dropout/SelectV2_grad/ReshapeReshape-optimizer/gradients/dropout/SelectV2_grad/Sum/optimizer/gradients/dropout/SelectV2_grad/Shape*
T0*
Tshape0*&
 _has_manual_control_dependencies(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
4optimizer/gradients/dropout/SelectV2_grad/SelectV2_1SelectV2dropout/GreaterEqual/optimizer/gradients/dropout/SelectV2_grad/zeros@optimizer/gradients/layer_2/MatMul_grad/tuple/control_dependency*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
1optimizer/gradients/dropout/SelectV2_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
ý
Aoptimizer/gradients/dropout/SelectV2_grad/BroadcastGradientArgs_1BroadcastGradientArgs1optimizer/gradients/dropout/SelectV2_grad/Shape_21optimizer/gradients/dropout/SelectV2_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

/optimizer/gradients/dropout/SelectV2_grad/Sum_1Sum4optimizer/gradients/dropout/SelectV2_grad/SelectV2_1Aoptimizer/gradients/dropout/SelectV2_grad/BroadcastGradientArgs_1*
T0*

Tidx0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	keep_dims(
ů
3optimizer/gradients/dropout/SelectV2_grad/Reshape_1Reshape/optimizer/gradients/dropout/SelectV2_grad/Sum_11optimizer/gradients/dropout/SelectV2_grad/Shape_2*
T0*
Tshape0*&
 _has_manual_control_dependencies(*
_output_shapes
: 
Ô
:optimizer/gradients/dropout/SelectV2_grad/tuple/group_depsNoOp2^optimizer/gradients/dropout/SelectV2_grad/Reshape4^optimizer/gradients/dropout/SelectV2_grad/Reshape_1*&
 _has_manual_control_dependencies(
ˇ
Boptimizer/gradients/dropout/SelectV2_grad/tuple/control_dependencyIdentity1optimizer/gradients/dropout/SelectV2_grad/Reshape;^optimizer/gradients/dropout/SelectV2_grad/tuple/group_deps*
T0*D
_class:
86loc:@optimizer/gradients/dropout/SelectV2_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Doptimizer/gradients/dropout/SelectV2_grad/tuple/control_dependency_1Identity3optimizer/gradients/dropout/SelectV2_grad/Reshape_1;^optimizer/gradients/dropout/SelectV2_grad/tuple/group_deps*
T0*F
_class<
:8loc:@optimizer/gradients/dropout/SelectV2_grad/Reshape_1*
_output_shapes
: 
v
*optimizer/gradients/dropout/Mul_grad/ShapeShapelayer_1/Relu*
T0*
_output_shapes
:*
out_type0
w
,optimizer/gradients/dropout/Mul_grad/Shape_1Shapedropout/Const*
T0*
_output_shapes
: *
out_type0
ę
:optimizer/gradients/dropout/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs*optimizer/gradients/dropout/Mul_grad/Shape,optimizer/gradients/dropout/Mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ľ
(optimizer/gradients/dropout/Mul_grad/MulMulBoptimizer/gradients/dropout/SelectV2_grad/tuple/control_dependencydropout/Const*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ő
(optimizer/gradients/dropout/Mul_grad/SumSum(optimizer/gradients/dropout/Mul_grad/Mul:optimizer/gradients/dropout/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ö
,optimizer/gradients/dropout/Mul_grad/ReshapeReshape(optimizer/gradients/dropout/Mul_grad/Sum*optimizer/gradients/dropout/Mul_grad/Shape*
T0*
Tshape0*&
 _has_manual_control_dependencies(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
*optimizer/gradients/dropout/Mul_grad/Mul_1Mullayer_1/ReluBoptimizer/gradients/dropout/SelectV2_grad/tuple/control_dependency*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
*optimizer/gradients/dropout/Mul_grad/Sum_1Sum*optimizer/gradients/dropout/Mul_grad/Mul_1<optimizer/gradients/dropout/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ę
.optimizer/gradients/dropout/Mul_grad/Reshape_1Reshape*optimizer/gradients/dropout/Mul_grad/Sum_1,optimizer/gradients/dropout/Mul_grad/Shape_1*
T0*
Tshape0*&
 _has_manual_control_dependencies(*
_output_shapes
: 
Ĺ
5optimizer/gradients/dropout/Mul_grad/tuple/group_depsNoOp-^optimizer/gradients/dropout/Mul_grad/Reshape/^optimizer/gradients/dropout/Mul_grad/Reshape_1*&
 _has_manual_control_dependencies(
Ł
=optimizer/gradients/dropout/Mul_grad/tuple/control_dependencyIdentity,optimizer/gradients/dropout/Mul_grad/Reshape6^optimizer/gradients/dropout/Mul_grad/tuple/group_deps*
T0*?
_class5
31loc:@optimizer/gradients/dropout/Mul_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

?optimizer/gradients/dropout/Mul_grad/tuple/control_dependency_1Identity.optimizer/gradients/dropout/Mul_grad/Reshape_16^optimizer/gradients/dropout/Mul_grad/tuple/group_deps*
T0*A
_class7
53loc:@optimizer/gradients/dropout/Mul_grad/Reshape_1*
_output_shapes
: 
ş
.optimizer/gradients/layer_1/Relu_grad/ReluGradReluGrad=optimizer/gradients/dropout/Mul_grad/tuple/control_dependencylayer_1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
*optimizer/gradients/layer_1/add_grad/ShapeShapelayer_1/MatMul*
T0*
_output_shapes
:*
out_type0

,optimizer/gradients/layer_1/add_grad/Shape_1Shapelayer_1/add/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
ę
:optimizer/gradients/layer_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs*optimizer/gradients/layer_1/add_grad/Shape,optimizer/gradients/layer_1/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ű
(optimizer/gradients/layer_1/add_grad/SumSum.optimizer/gradients/layer_1/Relu_grad/ReluGrad:optimizer/gradients/layer_1/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ö
,optimizer/gradients/layer_1/add_grad/ReshapeReshape(optimizer/gradients/layer_1/add_grad/Sum*optimizer/gradients/layer_1/add_grad/Shape*
T0*
Tshape0*&
 _has_manual_control_dependencies(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ß
*optimizer/gradients/layer_1/add_grad/Sum_1Sum.optimizer/gradients/layer_1/Relu_grad/ReluGrad<optimizer/gradients/layer_1/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ď
.optimizer/gradients/layer_1/add_grad/Reshape_1Reshape*optimizer/gradients/layer_1/add_grad/Sum_1,optimizer/gradients/layer_1/add_grad/Shape_1*
T0*
Tshape0*&
 _has_manual_control_dependencies(*
_output_shapes	
:
Ĺ
5optimizer/gradients/layer_1/add_grad/tuple/group_depsNoOp-^optimizer/gradients/layer_1/add_grad/Reshape/^optimizer/gradients/layer_1/add_grad/Reshape_1*&
 _has_manual_control_dependencies(
Ł
=optimizer/gradients/layer_1/add_grad/tuple/control_dependencyIdentity,optimizer/gradients/layer_1/add_grad/Reshape6^optimizer/gradients/layer_1/add_grad/tuple/group_deps*
T0*?
_class5
31loc:@optimizer/gradients/layer_1/add_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

?optimizer/gradients/layer_1/add_grad/tuple/control_dependency_1Identity.optimizer/gradients/layer_1/add_grad/Reshape_16^optimizer/gradients/layer_1/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@optimizer/gradients/layer_1/add_grad/Reshape_1*
_output_shapes	
:

.optimizer/gradients/layer_1/MatMul_grad/MatMulMatMul=optimizer/gradients/layer_1/add_grad/tuple/control_dependencylayer_1/MatMul/ReadVariableOp*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(
ő
0optimizer/gradients/layer_1/MatMul_grad/MatMul_1MatMulX=optimizer/gradients/layer_1/add_grad/tuple/control_dependency*
T0*&
 _has_manual_control_dependencies(* 
_output_shapes
:
*
transpose_a(*
transpose_b( 
Ě
8optimizer/gradients/layer_1/MatMul_grad/tuple/group_depsNoOp/^optimizer/gradients/layer_1/MatMul_grad/MatMul1^optimizer/gradients/layer_1/MatMul_grad/MatMul_1*&
 _has_manual_control_dependencies(
­
@optimizer/gradients/layer_1/MatMul_grad/tuple/control_dependencyIdentity.optimizer/gradients/layer_1/MatMul_grad/MatMul9^optimizer/gradients/layer_1/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@optimizer/gradients/layer_1/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Boptimizer/gradients/layer_1/MatMul_grad/tuple/control_dependency_1Identity0optimizer/gradients/layer_1/MatMul_grad/MatMul_19^optimizer/gradients/layer_1/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@optimizer/gradients/layer_1/MatMul_grad/MatMul_1* 
_output_shapes
:


/optimizer/beta1_power/Initializer/initial_valueConst*#
_class
loc:@layer_1/Variable*
_output_shapes
: *
dtype0*
valueB
 *fff?
Ë
optimizer/beta1_powerVarHandleOp*#
_class
loc:@layer_1/Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *&
shared_nameoptimizer/beta1_power
 
6optimizer/beta1_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpoptimizer/beta1_power*#
_class
loc:@layer_1/Variable*
_output_shapes
: 
Ă
optimizer/beta1_power/AssignAssignVariableOpoptimizer/beta1_power/optimizer/beta1_power/Initializer/initial_value*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 

)optimizer/beta1_power/Read/ReadVariableOpReadVariableOpoptimizer/beta1_power*#
_class
loc:@layer_1/Variable*
_output_shapes
: *
dtype0

/optimizer/beta2_power/Initializer/initial_valueConst*#
_class
loc:@layer_1/Variable*
_output_shapes
: *
dtype0*
valueB
 *wž?
Ë
optimizer/beta2_powerVarHandleOp*#
_class
loc:@layer_1/Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *&
shared_nameoptimizer/beta2_power
 
6optimizer/beta2_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpoptimizer/beta2_power*#
_class
loc:@layer_1/Variable*
_output_shapes
: 
Ă
optimizer/beta2_power/AssignAssignVariableOpoptimizer/beta2_power/optimizer/beta2_power/Initializer/initial_value*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 

)optimizer/beta2_power/Read/ReadVariableOpReadVariableOpoptimizer/beta2_power*#
_class
loc:@layer_1/Variable*
_output_shapes
: *
dtype0
­
7layer_1/Variable/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_1/Variable*
_output_shapes
:*
dtype0*
valueB"     

-layer_1/Variable/Adam/Initializer/zeros/ConstConst*#
_class
loc:@layer_1/Variable*
_output_shapes
: *
dtype0*
valueB
 *    
ů
'layer_1/Variable/Adam/Initializer/zerosFill7layer_1/Variable/Adam/Initializer/zeros/shape_as_tensor-layer_1/Variable/Adam/Initializer/zeros/Const*
T0*#
_class
loc:@layer_1/Variable* 
_output_shapes
:
*

index_type0
Ő
layer_1/Variable/AdamVarHandleOp*#
_class
loc:@layer_1/Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
*&
shared_namelayer_1/Variable/Adam
 
6layer_1/Variable/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOplayer_1/Variable/Adam*#
_class
loc:@layer_1/Variable*
_output_shapes
: 
ť
layer_1/Variable/Adam/AssignAssignVariableOplayer_1/Variable/Adam'layer_1/Variable/Adam/Initializer/zeros*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
Ś
)layer_1/Variable/Adam/Read/ReadVariableOpReadVariableOplayer_1/Variable/Adam*#
_class
loc:@layer_1/Variable* 
_output_shapes
:
*
dtype0
Ż
9layer_1/Variable/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_1/Variable*
_output_shapes
:*
dtype0*
valueB"     

/layer_1/Variable/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@layer_1/Variable*
_output_shapes
: *
dtype0*
valueB
 *    
˙
)layer_1/Variable/Adam_1/Initializer/zerosFill9layer_1/Variable/Adam_1/Initializer/zeros/shape_as_tensor/layer_1/Variable/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@layer_1/Variable* 
_output_shapes
:
*

index_type0
Ů
layer_1/Variable/Adam_1VarHandleOp*#
_class
loc:@layer_1/Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
*(
shared_namelayer_1/Variable/Adam_1
¤
8layer_1/Variable/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOplayer_1/Variable/Adam_1*#
_class
loc:@layer_1/Variable*
_output_shapes
: 
Á
layer_1/Variable/Adam_1/AssignAssignVariableOplayer_1/Variable/Adam_1)layer_1/Variable/Adam_1/Initializer/zeros*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
Ş
+layer_1/Variable/Adam_1/Read/ReadVariableOpReadVariableOplayer_1/Variable/Adam_1*#
_class
loc:@layer_1/Variable* 
_output_shapes
:
*
dtype0

)layer_1/Variable_1/Adam/Initializer/zerosConst*%
_class
loc:@layer_1/Variable_1*
_output_shapes	
:*
dtype0*
valueB*    
Ö
layer_1/Variable_1/AdamVarHandleOp*%
_class
loc:@layer_1/Variable_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*(
shared_namelayer_1/Variable_1/Adam
Ś
8layer_1/Variable_1/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOplayer_1/Variable_1/Adam*%
_class
loc:@layer_1/Variable_1*
_output_shapes
: 
Á
layer_1/Variable_1/Adam/AssignAssignVariableOplayer_1/Variable_1/Adam)layer_1/Variable_1/Adam/Initializer/zeros*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
§
+layer_1/Variable_1/Adam/Read/ReadVariableOpReadVariableOplayer_1/Variable_1/Adam*%
_class
loc:@layer_1/Variable_1*
_output_shapes	
:*
dtype0
Ą
+layer_1/Variable_1/Adam_1/Initializer/zerosConst*%
_class
loc:@layer_1/Variable_1*
_output_shapes	
:*
dtype0*
valueB*    
Ú
layer_1/Variable_1/Adam_1VarHandleOp*%
_class
loc:@layer_1/Variable_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:**
shared_namelayer_1/Variable_1/Adam_1
Ş
:layer_1/Variable_1/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOplayer_1/Variable_1/Adam_1*%
_class
loc:@layer_1/Variable_1*
_output_shapes
: 
Ç
 layer_1/Variable_1/Adam_1/AssignAssignVariableOplayer_1/Variable_1/Adam_1+layer_1/Variable_1/Adam_1/Initializer/zeros*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
Ť
-layer_1/Variable_1/Adam_1/Read/ReadVariableOpReadVariableOplayer_1/Variable_1/Adam_1*%
_class
loc:@layer_1/Variable_1*
_output_shapes	
:*
dtype0
­
7layer_2/Variable/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_2/Variable*
_output_shapes
:*
dtype0*
valueB"   @   

-layer_2/Variable/Adam/Initializer/zeros/ConstConst*#
_class
loc:@layer_2/Variable*
_output_shapes
: *
dtype0*
valueB
 *    
ř
'layer_2/Variable/Adam/Initializer/zerosFill7layer_2/Variable/Adam/Initializer/zeros/shape_as_tensor-layer_2/Variable/Adam/Initializer/zeros/Const*
T0*#
_class
loc:@layer_2/Variable*
_output_shapes
:	@*

index_type0
Ô
layer_2/Variable/AdamVarHandleOp*#
_class
loc:@layer_2/Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	@*&
shared_namelayer_2/Variable/Adam
 
6layer_2/Variable/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOplayer_2/Variable/Adam*#
_class
loc:@layer_2/Variable*
_output_shapes
: 
ť
layer_2/Variable/Adam/AssignAssignVariableOplayer_2/Variable/Adam'layer_2/Variable/Adam/Initializer/zeros*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
Ľ
)layer_2/Variable/Adam/Read/ReadVariableOpReadVariableOplayer_2/Variable/Adam*#
_class
loc:@layer_2/Variable*
_output_shapes
:	@*
dtype0
Ż
9layer_2/Variable/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_2/Variable*
_output_shapes
:*
dtype0*
valueB"   @   

/layer_2/Variable/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@layer_2/Variable*
_output_shapes
: *
dtype0*
valueB
 *    
ţ
)layer_2/Variable/Adam_1/Initializer/zerosFill9layer_2/Variable/Adam_1/Initializer/zeros/shape_as_tensor/layer_2/Variable/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@layer_2/Variable*
_output_shapes
:	@*

index_type0
Ř
layer_2/Variable/Adam_1VarHandleOp*#
_class
loc:@layer_2/Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	@*(
shared_namelayer_2/Variable/Adam_1
¤
8layer_2/Variable/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOplayer_2/Variable/Adam_1*#
_class
loc:@layer_2/Variable*
_output_shapes
: 
Á
layer_2/Variable/Adam_1/AssignAssignVariableOplayer_2/Variable/Adam_1)layer_2/Variable/Adam_1/Initializer/zeros*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
Š
+layer_2/Variable/Adam_1/Read/ReadVariableOpReadVariableOplayer_2/Variable/Adam_1*#
_class
loc:@layer_2/Variable*
_output_shapes
:	@*
dtype0

)layer_2/Variable_1/Adam/Initializer/zerosConst*%
_class
loc:@layer_2/Variable_1*
_output_shapes
:@*
dtype0*
valueB@*    
Ő
layer_2/Variable_1/AdamVarHandleOp*%
_class
loc:@layer_2/Variable_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*(
shared_namelayer_2/Variable_1/Adam
Ś
8layer_2/Variable_1/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOplayer_2/Variable_1/Adam*%
_class
loc:@layer_2/Variable_1*
_output_shapes
: 
Á
layer_2/Variable_1/Adam/AssignAssignVariableOplayer_2/Variable_1/Adam)layer_2/Variable_1/Adam/Initializer/zeros*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
Ś
+layer_2/Variable_1/Adam/Read/ReadVariableOpReadVariableOplayer_2/Variable_1/Adam*%
_class
loc:@layer_2/Variable_1*
_output_shapes
:@*
dtype0

+layer_2/Variable_1/Adam_1/Initializer/zerosConst*%
_class
loc:@layer_2/Variable_1*
_output_shapes
:@*
dtype0*
valueB@*    
Ů
layer_2/Variable_1/Adam_1VarHandleOp*%
_class
loc:@layer_2/Variable_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@**
shared_namelayer_2/Variable_1/Adam_1
Ş
:layer_2/Variable_1/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOplayer_2/Variable_1/Adam_1*%
_class
loc:@layer_2/Variable_1*
_output_shapes
: 
Ç
 layer_2/Variable_1/Adam_1/AssignAssignVariableOplayer_2/Variable_1/Adam_1+layer_2/Variable_1/Adam_1/Initializer/zeros*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
Ş
-layer_2/Variable_1/Adam_1/Read/ReadVariableOpReadVariableOplayer_2/Variable_1/Adam_1*%
_class
loc:@layer_2/Variable_1*
_output_shapes
:@*
dtype0

#out/Variable/Adam/Initializer/zerosConst*
_class
loc:@out/Variable*
_output_shapes

:@
*
dtype0*
valueB@
*    
Ç
out/Variable/AdamVarHandleOp*
_class
loc:@out/Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:@
*"
shared_nameout/Variable/Adam

2out/Variable/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpout/Variable/Adam*
_class
loc:@out/Variable*
_output_shapes
: 
Ż
out/Variable/Adam/AssignAssignVariableOpout/Variable/Adam#out/Variable/Adam/Initializer/zeros*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 

%out/Variable/Adam/Read/ReadVariableOpReadVariableOpout/Variable/Adam*
_class
loc:@out/Variable*
_output_shapes

:@
*
dtype0

%out/Variable/Adam_1/Initializer/zerosConst*
_class
loc:@out/Variable*
_output_shapes

:@
*
dtype0*
valueB@
*    
Ë
out/Variable/Adam_1VarHandleOp*
_class
loc:@out/Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:@
*$
shared_nameout/Variable/Adam_1

4out/Variable/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpout/Variable/Adam_1*
_class
loc:@out/Variable*
_output_shapes
: 
ľ
out/Variable/Adam_1/AssignAssignVariableOpout/Variable/Adam_1%out/Variable/Adam_1/Initializer/zeros*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 

'out/Variable/Adam_1/Read/ReadVariableOpReadVariableOpout/Variable/Adam_1*
_class
loc:@out/Variable*
_output_shapes

:@
*
dtype0

%out/Variable_1/Adam/Initializer/zerosConst*!
_class
loc:@out/Variable_1*
_output_shapes
:
*
dtype0*
valueB
*    
É
out/Variable_1/AdamVarHandleOp*!
_class
loc:@out/Variable_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
*$
shared_nameout/Variable_1/Adam

4out/Variable_1/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpout/Variable_1/Adam*!
_class
loc:@out/Variable_1*
_output_shapes
: 
ľ
out/Variable_1/Adam/AssignAssignVariableOpout/Variable_1/Adam%out/Variable_1/Adam/Initializer/zeros*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 

'out/Variable_1/Adam/Read/ReadVariableOpReadVariableOpout/Variable_1/Adam*!
_class
loc:@out/Variable_1*
_output_shapes
:
*
dtype0

'out/Variable_1/Adam_1/Initializer/zerosConst*!
_class
loc:@out/Variable_1*
_output_shapes
:
*
dtype0*
valueB
*    
Í
out/Variable_1/Adam_1VarHandleOp*!
_class
loc:@out/Variable_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
*&
shared_nameout/Variable_1/Adam_1

6out/Variable_1/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpout/Variable_1/Adam_1*!
_class
loc:@out/Variable_1*
_output_shapes
: 
ť
out/Variable_1/Adam_1/AssignAssignVariableOpout/Variable_1/Adam_1'out/Variable_1/Adam_1/Initializer/zeros*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 

)out/Variable_1/Adam_1/Read/ReadVariableOpReadVariableOpout/Variable_1/Adam_1*!
_class
loc:@out/Variable_1*
_output_shapes
:
*
dtype0
a
optimizer/Adam/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *o:
Y
optimizer/Adam/beta1Const*
_output_shapes
: *
dtype0*
valueB
 *fff?
Y
optimizer/Adam/beta2Const*
_output_shapes
: *
dtype0*
valueB
 *wž?
[
optimizer/Adam/epsilonConst*
_output_shapes
: *
dtype0*
valueB
 *wĚ+2

Goptimizer/Adam/update_layer_1/Variable/ResourceApplyAdam/ReadVariableOpReadVariableOpoptimizer/beta1_power*
_output_shapes
: *
dtype0

Ioptimizer/Adam/update_layer_1/Variable/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpoptimizer/beta2_power*
_output_shapes
: *
dtype0
Ć
8optimizer/Adam/update_layer_1/Variable/ResourceApplyAdamResourceApplyAdamlayer_1/Variablelayer_1/Variable/Adamlayer_1/Variable/Adam_1Goptimizer/Adam/update_layer_1/Variable/ResourceApplyAdam/ReadVariableOpIoptimizer/Adam/update_layer_1/Variable/ResourceApplyAdam/ReadVariableOp_1optimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonBoptimizer/gradients/layer_1/MatMul_grad/tuple/control_dependency_1*
T0*#
_class
loc:@layer_1/Variable*&
 _has_manual_control_dependencies(*
use_locking( *
use_nesterov( 

Ioptimizer/Adam/update_layer_1/Variable_1/ResourceApplyAdam/ReadVariableOpReadVariableOpoptimizer/beta1_power*
_output_shapes
: *
dtype0

Koptimizer/Adam/update_layer_1/Variable_1/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpoptimizer/beta2_power*
_output_shapes
: *
dtype0
Ń
:optimizer/Adam/update_layer_1/Variable_1/ResourceApplyAdamResourceApplyAdamlayer_1/Variable_1layer_1/Variable_1/Adamlayer_1/Variable_1/Adam_1Ioptimizer/Adam/update_layer_1/Variable_1/ResourceApplyAdam/ReadVariableOpKoptimizer/Adam/update_layer_1/Variable_1/ResourceApplyAdam/ReadVariableOp_1optimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon?optimizer/gradients/layer_1/add_grad/tuple/control_dependency_1*
T0*%
_class
loc:@layer_1/Variable_1*&
 _has_manual_control_dependencies(*
use_locking( *
use_nesterov( 

Goptimizer/Adam/update_layer_2/Variable/ResourceApplyAdam/ReadVariableOpReadVariableOpoptimizer/beta1_power*
_output_shapes
: *
dtype0

Ioptimizer/Adam/update_layer_2/Variable/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpoptimizer/beta2_power*
_output_shapes
: *
dtype0
Ć
8optimizer/Adam/update_layer_2/Variable/ResourceApplyAdamResourceApplyAdamlayer_2/Variablelayer_2/Variable/Adamlayer_2/Variable/Adam_1Goptimizer/Adam/update_layer_2/Variable/ResourceApplyAdam/ReadVariableOpIoptimizer/Adam/update_layer_2/Variable/ResourceApplyAdam/ReadVariableOp_1optimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonBoptimizer/gradients/layer_2/MatMul_grad/tuple/control_dependency_1*
T0*#
_class
loc:@layer_2/Variable*&
 _has_manual_control_dependencies(*
use_locking( *
use_nesterov( 

Ioptimizer/Adam/update_layer_2/Variable_1/ResourceApplyAdam/ReadVariableOpReadVariableOpoptimizer/beta1_power*
_output_shapes
: *
dtype0

Koptimizer/Adam/update_layer_2/Variable_1/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpoptimizer/beta2_power*
_output_shapes
: *
dtype0
Ń
:optimizer/Adam/update_layer_2/Variable_1/ResourceApplyAdamResourceApplyAdamlayer_2/Variable_1layer_2/Variable_1/Adamlayer_2/Variable_1/Adam_1Ioptimizer/Adam/update_layer_2/Variable_1/ResourceApplyAdam/ReadVariableOpKoptimizer/Adam/update_layer_2/Variable_1/ResourceApplyAdam/ReadVariableOp_1optimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon?optimizer/gradients/layer_2/add_grad/tuple/control_dependency_1*
T0*%
_class
loc:@layer_2/Variable_1*&
 _has_manual_control_dependencies(*
use_locking( *
use_nesterov( 

Coptimizer/Adam/update_out/Variable/ResourceApplyAdam/ReadVariableOpReadVariableOpoptimizer/beta1_power*
_output_shapes
: *
dtype0

Eoptimizer/Adam/update_out/Variable/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpoptimizer/beta2_power*
_output_shapes
: *
dtype0
Ś
4optimizer/Adam/update_out/Variable/ResourceApplyAdamResourceApplyAdamout/Variableout/Variable/Adamout/Variable/Adam_1Coptimizer/Adam/update_out/Variable/ResourceApplyAdam/ReadVariableOpEoptimizer/Adam/update_out/Variable/ResourceApplyAdam/ReadVariableOp_1optimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon>optimizer/gradients/out/MatMul_grad/tuple/control_dependency_1*
T0*
_class
loc:@out/Variable*&
 _has_manual_control_dependencies(*
use_locking( *
use_nesterov( 

Eoptimizer/Adam/update_out/Variable_1/ResourceApplyAdam/ReadVariableOpReadVariableOpoptimizer/beta1_power*
_output_shapes
: *
dtype0

Goptimizer/Adam/update_out/Variable_1/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpoptimizer/beta2_power*
_output_shapes
: *
dtype0
ą
6optimizer/Adam/update_out/Variable_1/ResourceApplyAdamResourceApplyAdamout/Variable_1out/Variable_1/Adamout/Variable_1/Adam_1Eoptimizer/Adam/update_out/Variable_1/ResourceApplyAdam/ReadVariableOpGoptimizer/Adam/update_out/Variable_1/ResourceApplyAdam/ReadVariableOp_1optimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon;optimizer/gradients/out/add_grad/tuple/control_dependency_1*
T0*!
_class
loc:@out/Variable_1*&
 _has_manual_control_dependencies(*
use_locking( *
use_nesterov( 
Ë
optimizer/Adam/ReadVariableOpReadVariableOpoptimizer/beta1_power9^optimizer/Adam/update_layer_1/Variable/ResourceApplyAdam;^optimizer/Adam/update_layer_1/Variable_1/ResourceApplyAdam9^optimizer/Adam/update_layer_2/Variable/ResourceApplyAdam;^optimizer/Adam/update_layer_2/Variable_1/ResourceApplyAdam5^optimizer/Adam/update_out/Variable/ResourceApplyAdam7^optimizer/Adam/update_out/Variable_1/ResourceApplyAdam*
_output_shapes
: *
dtype0

optimizer/Adam/mulMuloptimizer/Adam/ReadVariableOpoptimizer/Adam/beta1*
T0*#
_class
loc:@layer_1/Variable*
_output_shapes
: 
Î
optimizer/Adam/AssignVariableOpAssignVariableOpoptimizer/beta1_poweroptimizer/Adam/mul*#
_class
loc:@layer_1/Variable*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape(

optimizer/Adam/ReadVariableOp_1ReadVariableOpoptimizer/beta1_power ^optimizer/Adam/AssignVariableOp9^optimizer/Adam/update_layer_1/Variable/ResourceApplyAdam;^optimizer/Adam/update_layer_1/Variable_1/ResourceApplyAdam9^optimizer/Adam/update_layer_2/Variable/ResourceApplyAdam;^optimizer/Adam/update_layer_2/Variable_1/ResourceApplyAdam5^optimizer/Adam/update_out/Variable/ResourceApplyAdam7^optimizer/Adam/update_out/Variable_1/ResourceApplyAdam*#
_class
loc:@layer_1/Variable*
_output_shapes
: *
dtype0
Í
optimizer/Adam/ReadVariableOp_2ReadVariableOpoptimizer/beta2_power9^optimizer/Adam/update_layer_1/Variable/ResourceApplyAdam;^optimizer/Adam/update_layer_1/Variable_1/ResourceApplyAdam9^optimizer/Adam/update_layer_2/Variable/ResourceApplyAdam;^optimizer/Adam/update_layer_2/Variable_1/ResourceApplyAdam5^optimizer/Adam/update_out/Variable/ResourceApplyAdam7^optimizer/Adam/update_out/Variable_1/ResourceApplyAdam*
_output_shapes
: *
dtype0

optimizer/Adam/mul_1Muloptimizer/Adam/ReadVariableOp_2optimizer/Adam/beta2*
T0*#
_class
loc:@layer_1/Variable*
_output_shapes
: 
Ň
!optimizer/Adam/AssignVariableOp_1AssignVariableOpoptimizer/beta2_poweroptimizer/Adam/mul_1*#
_class
loc:@layer_1/Variable*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape(

optimizer/Adam/ReadVariableOp_3ReadVariableOpoptimizer/beta2_power"^optimizer/Adam/AssignVariableOp_19^optimizer/Adam/update_layer_1/Variable/ResourceApplyAdam;^optimizer/Adam/update_layer_1/Variable_1/ResourceApplyAdam9^optimizer/Adam/update_layer_2/Variable/ResourceApplyAdam;^optimizer/Adam/update_layer_2/Variable_1/ResourceApplyAdam5^optimizer/Adam/update_out/Variable/ResourceApplyAdam7^optimizer/Adam/update_out/Variable_1/ResourceApplyAdam*#
_class
loc:@layer_1/Variable*
_output_shapes
: *
dtype0
ź
optimizer/AdamNoOp ^optimizer/Adam/AssignVariableOp"^optimizer/Adam/AssignVariableOp_19^optimizer/Adam/update_layer_1/Variable/ResourceApplyAdam;^optimizer/Adam/update_layer_1/Variable_1/ResourceApplyAdam9^optimizer/Adam/update_layer_2/Variable/ResourceApplyAdam;^optimizer/Adam/update_layer_2/Variable_1/ResourceApplyAdam5^optimizer/Adam/update_out/Variable/ResourceApplyAdam7^optimizer/Adam/update_out/Variable_1/ResourceApplyAdam
d
"accuracy_calc/prediction/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
 
accuracy_calc/predictionArgMaxout/Softmax"accuracy_calc/prediction/dimension*
T0*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
output_type0	
`
accuracy_calc/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :

accuracy_calc/ArgMaxArgMaxLabelsaccuracy_calc/ArgMax/dimension*
T0*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
output_type0	

accuracy_calc/EqualEqualaccuracy_calc/predictionaccuracy_calc/ArgMax*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
incompatible_shape_error(
|
accuracy_calc/CastCastaccuracy_calc/Equal*

DstT0*

SrcT0
*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
accuracy_calc/ConstConst*
_output_shapes
:*
dtype0*
valueB: 

accuracy_calc/MeanMeanaccuracy_calc/Castaccuracy_calc/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
f
performance/cost/tagsConst*
_output_shapes
: *
dtype0*!
valueB Bperformance/cost
i
performance/costScalarSummaryperformance/cost/tagsloss_calc/Mean*
T0*
_output_shapes
: 
n
performance/accuracy/tagsConst*
_output_shapes
: *
dtype0*%
valueB Bperformance/accuracy
u
performance/accuracyScalarSummaryperformance/accuracy/tagsaccuracy_calc/Mean*
T0*
_output_shapes
: 
q
show_image/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"˙˙˙˙         

show_image/ReshapeReshapeXshow_image/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
show_image/image_input/tagConst*
_output_shapes
: *
dtype0*'
valueB Bshow_image/image_input
Ş
show_image/image_inputImageSummaryshow_image/image_input/tagshow_image/Reshape*
T0*
_output_shapes
: *
	bad_colorB:˙  ˙*

max_images
Ţ
Merge/MergeSummaryMergeSummarylayer_1/weightslayer_1/biaseslayer_2/weightslayer_2/biasesout/weights
out/biasesperformance/costperformance/accuracyshow_image/image_input*
N	*
_output_shapes
: 
ŕ
initNoOp^layer_1/Variable/Adam/Assign^layer_1/Variable/Adam_1/Assign^layer_1/Variable/Assign^layer_1/Variable_1/Adam/Assign!^layer_1/Variable_1/Adam_1/Assign^layer_1/Variable_1/Assign^layer_2/Variable/Adam/Assign^layer_2/Variable/Adam_1/Assign^layer_2/Variable/Assign^layer_2/Variable_1/Adam/Assign!^layer_2/Variable_1/Adam_1/Assign^layer_2/Variable_1/Assign^optimizer/beta1_power/Assign^optimizer/beta2_power/Assign^out/Variable/Adam/Assign^out/Variable/Adam_1/Assign^out/Variable/Assign^out/Variable_1/Adam/Assign^out/Variable_1/Adam_1/Assign^out/Variable_1/Assign
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
l
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const*
_output_shapes
: *
pattern
^s3://.*
R
save/Const_1Const*
_output_shapes
: *
dtype0*
valueB B.part
W
save/Const_2Const*
_output_shapes
: *
dtype0*
valueB B
_temp\part
m
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2*
T0*
_output_shapes
: 
h
save/StringJoin
StringJoin
save/Constsave/Select*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
\
save/ShardedFilename/shardConst*
_output_shapes
: *
dtype0*
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 

save/SaveV2/tensor_namesConst*
_output_shapes
:*
dtype0*É
valueżBźBlayer_1/VariableBlayer_1/Variable/AdamBlayer_1/Variable/Adam_1Blayer_1/Variable_1Blayer_1/Variable_1/AdamBlayer_1/Variable_1/Adam_1Blayer_2/VariableBlayer_2/Variable/AdamBlayer_2/Variable/Adam_1Blayer_2/Variable_1Blayer_2/Variable_1/AdamBlayer_2/Variable_1/Adam_1Boptimizer/beta1_powerBoptimizer/beta2_powerBout/VariableBout/Variable/AdamBout/Variable/Adam_1Bout/Variable_1Bout/Variable_1/AdamBout/Variable_1/Adam_1

save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 
ó
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices$layer_1/Variable/Read/ReadVariableOp)layer_1/Variable/Adam/Read/ReadVariableOp+layer_1/Variable/Adam_1/Read/ReadVariableOp&layer_1/Variable_1/Read/ReadVariableOp+layer_1/Variable_1/Adam/Read/ReadVariableOp-layer_1/Variable_1/Adam_1/Read/ReadVariableOp$layer_2/Variable/Read/ReadVariableOp)layer_2/Variable/Adam/Read/ReadVariableOp+layer_2/Variable/Adam_1/Read/ReadVariableOp&layer_2/Variable_1/Read/ReadVariableOp+layer_2/Variable_1/Adam/Read/ReadVariableOp-layer_2/Variable_1/Adam_1/Read/ReadVariableOp)optimizer/beta1_power/Read/ReadVariableOp)optimizer/beta2_power/Read/ReadVariableOp out/Variable/Read/ReadVariableOp%out/Variable/Adam/Read/ReadVariableOp'out/Variable/Adam_1/Read/ReadVariableOp"out/Variable_1/Read/ReadVariableOp'out/Variable_1/Adam/Read/ReadVariableOp)out/Variable_1/Adam_1/Read/ReadVariableOp*&
 _has_manual_control_dependencies(*"
dtypes
2
š
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*&
 _has_manual_control_dependencies(*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*
T0*
_output_shapes
:*

axis 
Ŕ
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*&
 _has_manual_control_dependencies(*
allow_missing_files( *
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst*
_output_shapes
:*
dtype0*É
valueżBźBlayer_1/VariableBlayer_1/Variable/AdamBlayer_1/Variable/Adam_1Blayer_1/Variable_1Blayer_1/Variable_1/AdamBlayer_1/Variable_1/Adam_1Blayer_2/VariableBlayer_2/Variable/AdamBlayer_2/Variable/Adam_1Blayer_2/Variable_1Blayer_2/Variable_1/AdamBlayer_2/Variable_1/Adam_1Boptimizer/beta1_powerBoptimizer/beta2_powerBout/VariableBout/Variable/AdamBout/Variable/Adam_1Bout/Variable_1Bout/Variable_1/AdamBout/Variable_1/Adam_1

save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 
ď
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:

save/AssignVariableOpAssignVariableOplayer_1/Variablesave/Identity_1*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:

save/AssignVariableOp_1AssignVariableOplayer_1/Variable/Adamsave/Identity_2*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
 
save/AssignVariableOp_2AssignVariableOplayer_1/Variable/Adam_1save/Identity_3*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:

save/AssignVariableOp_3AssignVariableOplayer_1/Variable_1save/Identity_4*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
 
save/AssignVariableOp_4AssignVariableOplayer_1/Variable_1/Adamsave/Identity_5*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
˘
save/AssignVariableOp_5AssignVariableOplayer_1/Variable_1/Adam_1save/Identity_6*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:

save/AssignVariableOp_6AssignVariableOplayer_2/Variablesave/Identity_7*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:

save/AssignVariableOp_7AssignVariableOplayer_2/Variable/Adamsave/Identity_8*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
 
save/AssignVariableOp_8AssignVariableOplayer_2/Variable/Adam_1save/Identity_9*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:

save/AssignVariableOp_9AssignVariableOplayer_2/Variable_1save/Identity_10*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
˘
save/AssignVariableOp_10AssignVariableOplayer_2/Variable_1/Adamsave/Identity_11*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
¤
save/AssignVariableOp_11AssignVariableOplayer_2/Variable_1/Adam_1save/Identity_12*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
 
save/AssignVariableOp_12AssignVariableOpoptimizer/beta1_powersave/Identity_13*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
 
save/AssignVariableOp_13AssignVariableOpoptimizer/beta2_powersave/Identity_14*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:

save/AssignVariableOp_14AssignVariableOpout/Variablesave/Identity_15*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:

save/AssignVariableOp_15AssignVariableOpout/Variable/Adamsave/Identity_16*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:

save/AssignVariableOp_16AssignVariableOpout/Variable/Adam_1save/Identity_17*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:

save/AssignVariableOp_17AssignVariableOpout/Variable_1save/Identity_18*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:

save/AssignVariableOp_18AssignVariableOpout/Variable_1/Adamsave/Identity_19*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
 
save/AssignVariableOp_19AssignVariableOpout/Variable_1/Adam_1save/Identity_20*&
 _has_manual_control_dependencies(*
dtype0*
validate_shape( 
Ň
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9*&
 _has_manual_control_dependencies(
-
save/restore_allNoOp^save/restore_shard "
<
save/Const:0save/Identity:0save/restore_all (5 @F8"ž
	summaries°
­
layer_1/weights:0
layer_1/biases:0
layer_2/weights:0
layer_2/biases:0
out/weights:0
out/biases:0
performance/cost:0
performance/accuracy:0
show_image/image_input:0"
train_op

optimizer/Adam"ý
trainable_variablesĺâ
f
layer_1/Variable:0layer_1/Variable/Assign&layer_1/Variable/Read/ReadVariableOp:0(2layer_1/w:08
l
layer_1/Variable_1:0layer_1/Variable_1/Assign(layer_1/Variable_1/Read/ReadVariableOp:0(2layer_1/b:08
f
layer_2/Variable:0layer_2/Variable/Assign&layer_2/Variable/Read/ReadVariableOp:0(2layer_2/w:08
l
layer_2/Variable_1:0layer_2/Variable_1/Assign(layer_2/Variable_1/Read/ReadVariableOp:0(2layer_2/b:08
V
out/Variable:0out/Variable/Assign"out/Variable/Read/ReadVariableOp:0(2out/w:08
\
out/Variable_1:0out/Variable_1/Assign$out/Variable_1/Read/ReadVariableOp:0(2out/b:08"ť
	variables­Ş
f
layer_1/Variable:0layer_1/Variable/Assign&layer_1/Variable/Read/ReadVariableOp:0(2layer_1/w:08
l
layer_1/Variable_1:0layer_1/Variable_1/Assign(layer_1/Variable_1/Read/ReadVariableOp:0(2layer_1/b:08
f
layer_2/Variable:0layer_2/Variable/Assign&layer_2/Variable/Read/ReadVariableOp:0(2layer_2/w:08
l
layer_2/Variable_1:0layer_2/Variable_1/Assign(layer_2/Variable_1/Read/ReadVariableOp:0(2layer_2/b:08
V
out/Variable:0out/Variable/Assign"out/Variable/Read/ReadVariableOp:0(2out/w:08
\
out/Variable_1:0out/Variable_1/Assign$out/Variable_1/Read/ReadVariableOp:0(2out/b:08

optimizer/beta1_power:0optimizer/beta1_power/Assign+optimizer/beta1_power/Read/ReadVariableOp:0(21optimizer/beta1_power/Initializer/initial_value:0

optimizer/beta2_power:0optimizer/beta2_power/Assign+optimizer/beta2_power/Read/ReadVariableOp:0(21optimizer/beta2_power/Initializer/initial_value:0

layer_1/Variable/Adam:0layer_1/Variable/Adam/Assign+layer_1/Variable/Adam/Read/ReadVariableOp:0(2)layer_1/Variable/Adam/Initializer/zeros:0

layer_1/Variable/Adam_1:0layer_1/Variable/Adam_1/Assign-layer_1/Variable/Adam_1/Read/ReadVariableOp:0(2+layer_1/Variable/Adam_1/Initializer/zeros:0

layer_1/Variable_1/Adam:0layer_1/Variable_1/Adam/Assign-layer_1/Variable_1/Adam/Read/ReadVariableOp:0(2+layer_1/Variable_1/Adam/Initializer/zeros:0
Ą
layer_1/Variable_1/Adam_1:0 layer_1/Variable_1/Adam_1/Assign/layer_1/Variable_1/Adam_1/Read/ReadVariableOp:0(2-layer_1/Variable_1/Adam_1/Initializer/zeros:0

layer_2/Variable/Adam:0layer_2/Variable/Adam/Assign+layer_2/Variable/Adam/Read/ReadVariableOp:0(2)layer_2/Variable/Adam/Initializer/zeros:0

layer_2/Variable/Adam_1:0layer_2/Variable/Adam_1/Assign-layer_2/Variable/Adam_1/Read/ReadVariableOp:0(2+layer_2/Variable/Adam_1/Initializer/zeros:0

layer_2/Variable_1/Adam:0layer_2/Variable_1/Adam/Assign-layer_2/Variable_1/Adam/Read/ReadVariableOp:0(2+layer_2/Variable_1/Adam/Initializer/zeros:0
Ą
layer_2/Variable_1/Adam_1:0 layer_2/Variable_1/Adam_1/Assign/layer_2/Variable_1/Adam_1/Read/ReadVariableOp:0(2-layer_2/Variable_1/Adam_1/Initializer/zeros:0

out/Variable/Adam:0out/Variable/Adam/Assign'out/Variable/Adam/Read/ReadVariableOp:0(2%out/Variable/Adam/Initializer/zeros:0

out/Variable/Adam_1:0out/Variable/Adam_1/Assign)out/Variable/Adam_1/Read/ReadVariableOp:0(2'out/Variable/Adam_1/Initializer/zeros:0

out/Variable_1/Adam:0out/Variable_1/Adam/Assign)out/Variable_1/Adam/Read/ReadVariableOp:0(2'out/Variable_1/Adam/Initializer/zeros:0

out/Variable_1/Adam_1:0out/Variable_1/Adam_1/Assign+out/Variable_1/Adam_1/Read/ReadVariableOp:0(2)out/Variable_1/Adam_1/Initializer/zeros:0*
serving_default
 
X
X:0˙˙˙˙˙˙˙˙˙I
accuracy_calc/prediction-
accuracy_calc/prediction:0	˙˙˙˙˙˙˙˙˙tensorflow/serving/predict