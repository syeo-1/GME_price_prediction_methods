¼%
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
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
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
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
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
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
?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??#
z
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`* 
shared_namedense_21/kernel
s
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes

:`*
dtype0
r
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
?
lstm_42/lstm_cell_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_42/lstm_cell_42/kernel
?
/lstm_42/lstm_cell_42/kernel/Read/ReadVariableOpReadVariableOplstm_42/lstm_cell_42/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_42/lstm_cell_42/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*6
shared_name'%lstm_42/lstm_cell_42/recurrent_kernel
?
9lstm_42/lstm_cell_42/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_42/lstm_cell_42/recurrent_kernel*
_output_shapes
:	@?*
dtype0
?
lstm_42/lstm_cell_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_42/lstm_cell_42/bias
?
-lstm_42/lstm_cell_42/bias/Read/ReadVariableOpReadVariableOplstm_42/lstm_cell_42/bias*
_output_shapes	
:?*
dtype0
?
lstm_43/lstm_cell_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*,
shared_namelstm_43/lstm_cell_43/kernel
?
/lstm_43/lstm_cell_43/kernel/Read/ReadVariableOpReadVariableOplstm_43/lstm_cell_43/kernel*
_output_shapes
:	@?*
dtype0
?
%lstm_43/lstm_cell_43/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	`?*6
shared_name'%lstm_43/lstm_cell_43/recurrent_kernel
?
9lstm_43/lstm_cell_43/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_43/lstm_cell_43/recurrent_kernel*
_output_shapes
:	`?*
dtype0
?
lstm_43/lstm_cell_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_43/lstm_cell_43/bias
?
-lstm_43/lstm_cell_43/bias/Read/ReadVariableOpReadVariableOplstm_43/lstm_cell_43/bias*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0

NoOpNoOp
? 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*? 
value? B?  B? 
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
l
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
l
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
 	keras_api
6
!iter
	"decay
#learning_rate
$momentum
8
%0
&1
'2
(3
)4
*5
6
7
 
8
%0
&1
'2
(3
)4
*5
6
7
?
trainable_variables
+layer_regularization_losses
regularization_losses
,metrics
-non_trainable_variables
.layer_metrics

/layers
	variables
 
?
0
state_size

%kernel
&recurrent_kernel
'bias
1trainable_variables
2regularization_losses
3	variables
4	keras_api
 

%0
&1
'2
 

%0
&1
'2
?
trainable_variables
5layer_regularization_losses
regularization_losses
6metrics
7non_trainable_variables
8layer_metrics

9layers
	variables

:states
?
;
state_size

(kernel
)recurrent_kernel
*bias
<trainable_variables
=regularization_losses
>	variables
?	keras_api
 

(0
)1
*2
 

(0
)1
*2
?
trainable_variables
@layer_regularization_losses
regularization_losses
Ametrics
Bnon_trainable_variables
Clayer_metrics

Dlayers
	variables

Estates
 
 
 
?
trainable_variables
Flayer_regularization_losses
Gmetrics
regularization_losses
Hnon_trainable_variables
Ilayer_metrics

Jlayers
	variables
[Y
VARIABLE_VALUEdense_21/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_21/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
trainable_variables
Klayer_regularization_losses
Lmetrics
regularization_losses
Mnon_trainable_variables
Nlayer_metrics

Olayers
	variables
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_42/lstm_cell_42/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_42/lstm_cell_42/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_42/lstm_cell_42/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_43/lstm_cell_43/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_43/lstm_cell_43/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_43/lstm_cell_43/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
 

P0
 
 

0
1
2
3
 

%0
&1
'2
 

%0
&1
'2
?
1trainable_variables
Qlayer_regularization_losses
Rmetrics
2regularization_losses
Snon_trainable_variables
Tlayer_metrics

Ulayers
3	variables
 
 
 
 

0
 
 

(0
)1
*2
 

(0
)1
*2
?
<trainable_variables
Vlayer_regularization_losses
Wmetrics
=regularization_losses
Xnon_trainable_variables
Ylayer_metrics

Zlayers
>	variables
 
 
 
 

0
 
 
 
 
 
 
 
 
 
 
 
4
	[total
	\count
]	variables
^	keras_api
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

[0
\1

]	variables
?
serving_default_lstm_42_inputPlaceholder*+
_output_shapes
:?????????H*
dtype0* 
shape:?????????H
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_42_inputlstm_42/lstm_cell_42/kernel%lstm_42/lstm_cell_42/recurrent_kernellstm_42/lstm_cell_42/biaslstm_43/lstm_cell_43/kernel%lstm_43/lstm_cell_43/recurrent_kernellstm_43/lstm_cell_43/biasdense_21/kerneldense_21/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_1222969
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOp/lstm_42/lstm_cell_42/kernel/Read/ReadVariableOp9lstm_42/lstm_cell_42/recurrent_kernel/Read/ReadVariableOp-lstm_42/lstm_cell_42/bias/Read/ReadVariableOp/lstm_43/lstm_cell_43/kernel/Read/ReadVariableOp9lstm_43/lstm_cell_43/recurrent_kernel/Read/ReadVariableOp-lstm_43/lstm_cell_43/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2	*
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_1225231
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_21/kerneldense_21/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumlstm_42/lstm_cell_42/kernel%lstm_42/lstm_cell_42/recurrent_kernellstm_42/lstm_cell_42/biaslstm_43/lstm_cell_43/kernel%lstm_43/lstm_cell_43/recurrent_kernellstm_43/lstm_cell_43/biastotalcount*
Tin
2*
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_1225283??"
?'
?
 __inference__traced_save_1225231
file_prefix.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop:
6savev2_lstm_42_lstm_cell_42_kernel_read_readvariableopD
@savev2_lstm_42_lstm_cell_42_recurrent_kernel_read_readvariableop8
4savev2_lstm_42_lstm_cell_42_bias_read_readvariableop:
6savev2_lstm_43_lstm_cell_43_kernel_read_readvariableopD
@savev2_lstm_43_lstm_cell_43_recurrent_kernel_read_readvariableop8
4savev2_lstm_43_lstm_cell_43_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop6savev2_lstm_42_lstm_cell_42_kernel_read_readvariableop@savev2_lstm_42_lstm_cell_42_recurrent_kernel_read_readvariableop4savev2_lstm_42_lstm_cell_42_bias_read_readvariableop6savev2_lstm_43_lstm_cell_43_kernel_read_readvariableop@savev2_lstm_43_lstm_cell_43_recurrent_kernel_read_readvariableop4savev2_lstm_43_lstm_cell_43_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*m
_input_shapes\
Z: :`:: : : : :	?:	@?:?:	@?:	`?:?: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:`: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%!

_output_shapes
:	@?:!	

_output_shapes	
:?:%
!

_output_shapes
:	@?:%!

_output_shapes
:	`?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?[
?
D__inference_lstm_43_layer_call_and_return_conditional_losses_1224622
inputs_0>
+lstm_cell_43_matmul_readvariableop_resource:	@?@
-lstm_cell_43_matmul_1_readvariableop_resource:	`?;
,lstm_cell_43_biasadd_readvariableop_resource:	?
identity??#lstm_cell_43/BiasAdd/ReadVariableOp?"lstm_cell_43/MatMul/ReadVariableOp?$lstm_cell_43/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp?
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/MatMul?
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	`?*
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp?
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/MatMul_1?
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/add?
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp?
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dim?
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
lstm_cell_43/split?
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid?
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_1?
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul?
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_2?
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul_1?
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/add_1?
lstm_cell_43/Sigmoid_3Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_3?
lstm_cell_43/Sigmoid_4Sigmoidlstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_4?
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_3:y:0lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????`:?????????`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1224538*
condR
while_cond_1224537*K
output_shapes:
8: : : : :?????????`:?????????`: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?c
?
(sequential_21_lstm_43_while_body_1220711H
Dsequential_21_lstm_43_while_sequential_21_lstm_43_while_loop_counterN
Jsequential_21_lstm_43_while_sequential_21_lstm_43_while_maximum_iterations+
'sequential_21_lstm_43_while_placeholder-
)sequential_21_lstm_43_while_placeholder_1-
)sequential_21_lstm_43_while_placeholder_2-
)sequential_21_lstm_43_while_placeholder_3G
Csequential_21_lstm_43_while_sequential_21_lstm_43_strided_slice_1_0?
sequential_21_lstm_43_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_43_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_21_lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0:	@?^
Ksequential_21_lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0:	`?Y
Jsequential_21_lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0:	?(
$sequential_21_lstm_43_while_identity*
&sequential_21_lstm_43_while_identity_1*
&sequential_21_lstm_43_while_identity_2*
&sequential_21_lstm_43_while_identity_3*
&sequential_21_lstm_43_while_identity_4*
&sequential_21_lstm_43_while_identity_5E
Asequential_21_lstm_43_while_sequential_21_lstm_43_strided_slice_1?
}sequential_21_lstm_43_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_43_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_21_lstm_43_while_lstm_cell_43_matmul_readvariableop_resource:	@?\
Isequential_21_lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource:	`?W
Hsequential_21_lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource:	????sequential_21/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?>sequential_21/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp?@sequential_21/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp?
Msequential_21/lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2O
Msequential_21/lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape?
?sequential_21/lstm_43/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_21_lstm_43_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_43_tensorarrayunstack_tensorlistfromtensor_0'sequential_21_lstm_43_while_placeholderVsequential_21/lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02A
?sequential_21/lstm_43/while/TensorArrayV2Read/TensorListGetItem?
>sequential_21/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOpIsequential_21_lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02@
>sequential_21/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp?
/sequential_21/lstm_43/while/lstm_cell_43/MatMulMatMulFsequential_21/lstm_43/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_21/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/sequential_21/lstm_43/while/lstm_cell_43/MatMul?
@sequential_21/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOpKsequential_21_lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	`?*
dtype02B
@sequential_21/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp?
1sequential_21/lstm_43/while/lstm_cell_43/MatMul_1MatMul)sequential_21_lstm_43_while_placeholder_2Hsequential_21/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????23
1sequential_21/lstm_43/while/lstm_cell_43/MatMul_1?
,sequential_21/lstm_43/while/lstm_cell_43/addAddV29sequential_21/lstm_43/while/lstm_cell_43/MatMul:product:0;sequential_21/lstm_43/while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2.
,sequential_21/lstm_43/while/lstm_cell_43/add?
?sequential_21/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOpJsequential_21_lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02A
?sequential_21/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?
0sequential_21/lstm_43/while/lstm_cell_43/BiasAddBiasAdd0sequential_21/lstm_43/while/lstm_cell_43/add:z:0Gsequential_21/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????22
0sequential_21/lstm_43/while/lstm_cell_43/BiasAdd?
8sequential_21/lstm_43/while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_21/lstm_43/while/lstm_cell_43/split/split_dim?
.sequential_21/lstm_43/while/lstm_cell_43/splitSplitAsequential_21/lstm_43/while/lstm_cell_43/split/split_dim:output:09sequential_21/lstm_43/while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split20
.sequential_21/lstm_43/while/lstm_cell_43/split?
0sequential_21/lstm_43/while/lstm_cell_43/SigmoidSigmoid7sequential_21/lstm_43/while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`22
0sequential_21/lstm_43/while/lstm_cell_43/Sigmoid?
2sequential_21/lstm_43/while/lstm_cell_43/Sigmoid_1Sigmoid7sequential_21/lstm_43/while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`24
2sequential_21/lstm_43/while/lstm_cell_43/Sigmoid_1?
,sequential_21/lstm_43/while/lstm_cell_43/mulMul6sequential_21/lstm_43/while/lstm_cell_43/Sigmoid_1:y:0)sequential_21_lstm_43_while_placeholder_3*
T0*'
_output_shapes
:?????????`2.
,sequential_21/lstm_43/while/lstm_cell_43/mul?
2sequential_21/lstm_43/while/lstm_cell_43/Sigmoid_2Sigmoid7sequential_21/lstm_43/while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`24
2sequential_21/lstm_43/while/lstm_cell_43/Sigmoid_2?
.sequential_21/lstm_43/while/lstm_cell_43/mul_1Mul4sequential_21/lstm_43/while/lstm_cell_43/Sigmoid:y:06sequential_21/lstm_43/while/lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`20
.sequential_21/lstm_43/while/lstm_cell_43/mul_1?
.sequential_21/lstm_43/while/lstm_cell_43/add_1AddV20sequential_21/lstm_43/while/lstm_cell_43/mul:z:02sequential_21/lstm_43/while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`20
.sequential_21/lstm_43/while/lstm_cell_43/add_1?
2sequential_21/lstm_43/while/lstm_cell_43/Sigmoid_3Sigmoid7sequential_21/lstm_43/while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`24
2sequential_21/lstm_43/while/lstm_cell_43/Sigmoid_3?
2sequential_21/lstm_43/while/lstm_cell_43/Sigmoid_4Sigmoid2sequential_21/lstm_43/while/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`24
2sequential_21/lstm_43/while/lstm_cell_43/Sigmoid_4?
.sequential_21/lstm_43/while/lstm_cell_43/mul_2Mul6sequential_21/lstm_43/while/lstm_cell_43/Sigmoid_3:y:06sequential_21/lstm_43/while/lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`20
.sequential_21/lstm_43/while/lstm_cell_43/mul_2?
@sequential_21/lstm_43/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_21_lstm_43_while_placeholder_1'sequential_21_lstm_43_while_placeholder2sequential_21/lstm_43/while/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_21/lstm_43/while/TensorArrayV2Write/TensorListSetItem?
!sequential_21/lstm_43/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_21/lstm_43/while/add/y?
sequential_21/lstm_43/while/addAddV2'sequential_21_lstm_43_while_placeholder*sequential_21/lstm_43/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_21/lstm_43/while/add?
#sequential_21/lstm_43/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_21/lstm_43/while/add_1/y?
!sequential_21/lstm_43/while/add_1AddV2Dsequential_21_lstm_43_while_sequential_21_lstm_43_while_loop_counter,sequential_21/lstm_43/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_21/lstm_43/while/add_1?
$sequential_21/lstm_43/while/IdentityIdentity%sequential_21/lstm_43/while/add_1:z:0@^sequential_21/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?^sequential_21/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpA^sequential_21/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_21/lstm_43/while/Identity?
&sequential_21/lstm_43/while/Identity_1IdentityJsequential_21_lstm_43_while_sequential_21_lstm_43_while_maximum_iterations@^sequential_21/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?^sequential_21/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpA^sequential_21/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_21/lstm_43/while/Identity_1?
&sequential_21/lstm_43/while/Identity_2Identity#sequential_21/lstm_43/while/add:z:0@^sequential_21/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?^sequential_21/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpA^sequential_21/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_21/lstm_43/while/Identity_2?
&sequential_21/lstm_43/while/Identity_3IdentityPsequential_21/lstm_43/while/TensorArrayV2Write/TensorListSetItem:output_handle:0@^sequential_21/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?^sequential_21/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpA^sequential_21/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_21/lstm_43/while/Identity_3?
&sequential_21/lstm_43/while/Identity_4Identity2sequential_21/lstm_43/while/lstm_cell_43/mul_2:z:0@^sequential_21/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?^sequential_21/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpA^sequential_21/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2(
&sequential_21/lstm_43/while/Identity_4?
&sequential_21/lstm_43/while/Identity_5Identity2sequential_21/lstm_43/while/lstm_cell_43/add_1:z:0@^sequential_21/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?^sequential_21/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpA^sequential_21/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2(
&sequential_21/lstm_43/while/Identity_5"U
$sequential_21_lstm_43_while_identity-sequential_21/lstm_43/while/Identity:output:0"Y
&sequential_21_lstm_43_while_identity_1/sequential_21/lstm_43/while/Identity_1:output:0"Y
&sequential_21_lstm_43_while_identity_2/sequential_21/lstm_43/while/Identity_2:output:0"Y
&sequential_21_lstm_43_while_identity_3/sequential_21/lstm_43/while/Identity_3:output:0"Y
&sequential_21_lstm_43_while_identity_4/sequential_21/lstm_43/while/Identity_4:output:0"Y
&sequential_21_lstm_43_while_identity_5/sequential_21/lstm_43/while/Identity_5:output:0"?
Hsequential_21_lstm_43_while_lstm_cell_43_biasadd_readvariableop_resourceJsequential_21_lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0"?
Isequential_21_lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resourceKsequential_21_lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0"?
Gsequential_21_lstm_43_while_lstm_cell_43_matmul_readvariableop_resourceIsequential_21_lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0"?
Asequential_21_lstm_43_while_sequential_21_lstm_43_strided_slice_1Csequential_21_lstm_43_while_sequential_21_lstm_43_strided_slice_1_0"?
}sequential_21_lstm_43_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_43_tensorarrayunstack_tensorlistfromtensorsequential_21_lstm_43_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_43_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????`:?????????`: : : : : 2?
?sequential_21/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?sequential_21/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp2?
>sequential_21/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp>sequential_21/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp2?
@sequential_21/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp@sequential_21/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
: 
?[
?
D__inference_lstm_43_layer_call_and_return_conditional_losses_1224924

inputs>
+lstm_cell_43_matmul_readvariableop_resource:	@?@
-lstm_cell_43_matmul_1_readvariableop_resource:	`?;
,lstm_cell_43_biasadd_readvariableop_resource:	?
identity??#lstm_cell_43/BiasAdd/ReadVariableOp?"lstm_cell_43/MatMul/ReadVariableOp?$lstm_cell_43/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:H?????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp?
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/MatMul?
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	`?*
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp?
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/MatMul_1?
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/add?
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp?
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dim?
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
lstm_cell_43/split?
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid?
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_1?
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul?
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_2?
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul_1?
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/add_1?
lstm_cell_43/Sigmoid_3Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_3?
lstm_cell_43/Sigmoid_4Sigmoidlstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_4?
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_3:y:0lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????`:?????????`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1224840*
condR
while_cond_1224839*K
output_shapes:
8: : : : :?????????`:?????????`: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:H?????????`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????H`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????H@: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????H@
 
_user_specified_nameinputs
?N
?

lstm_43_while_body_1223530,
(lstm_43_while_lstm_43_while_loop_counter2
.lstm_43_while_lstm_43_while_maximum_iterations
lstm_43_while_placeholder
lstm_43_while_placeholder_1
lstm_43_while_placeholder_2
lstm_43_while_placeholder_3+
'lstm_43_while_lstm_43_strided_slice_1_0g
clstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0:	@?P
=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0:	`?K
<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0:	?
lstm_43_while_identity
lstm_43_while_identity_1
lstm_43_while_identity_2
lstm_43_while_identity_3
lstm_43_while_identity_4
lstm_43_while_identity_5)
%lstm_43_while_lstm_43_strided_slice_1e
alstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensorL
9lstm_43_while_lstm_cell_43_matmul_readvariableop_resource:	@?N
;lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource:	`?I
:lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource:	???1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp?2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp?
?lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2A
?lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_43/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0lstm_43_while_placeholderHlstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype023
1lstm_43/while/TensorArrayV2Read/TensorListGetItem?
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype022
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp?
!lstm_43/while/lstm_cell_43/MatMulMatMul8lstm_43/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_43/while/lstm_cell_43/MatMul?
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	`?*
dtype024
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp?
#lstm_43/while/lstm_cell_43/MatMul_1MatMullstm_43_while_placeholder_2:lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_43/while/lstm_cell_43/MatMul_1?
lstm_43/while/lstm_cell_43/addAddV2+lstm_43/while/lstm_cell_43/MatMul:product:0-lstm_43/while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_43/while/lstm_cell_43/add?
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?
"lstm_43/while/lstm_cell_43/BiasAddBiasAdd"lstm_43/while/lstm_cell_43/add:z:09lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_43/while/lstm_cell_43/BiasAdd?
*lstm_43/while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_43/while/lstm_cell_43/split/split_dim?
 lstm_43/while/lstm_cell_43/splitSplit3lstm_43/while/lstm_cell_43/split/split_dim:output:0+lstm_43/while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2"
 lstm_43/while/lstm_cell_43/split?
"lstm_43/while/lstm_cell_43/SigmoidSigmoid)lstm_43/while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2$
"lstm_43/while/lstm_cell_43/Sigmoid?
$lstm_43/while/lstm_cell_43/Sigmoid_1Sigmoid)lstm_43/while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2&
$lstm_43/while/lstm_cell_43/Sigmoid_1?
lstm_43/while/lstm_cell_43/mulMul(lstm_43/while/lstm_cell_43/Sigmoid_1:y:0lstm_43_while_placeholder_3*
T0*'
_output_shapes
:?????????`2 
lstm_43/while/lstm_cell_43/mul?
$lstm_43/while/lstm_cell_43/Sigmoid_2Sigmoid)lstm_43/while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2&
$lstm_43/while/lstm_cell_43/Sigmoid_2?
 lstm_43/while/lstm_cell_43/mul_1Mul&lstm_43/while/lstm_cell_43/Sigmoid:y:0(lstm_43/while/lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2"
 lstm_43/while/lstm_cell_43/mul_1?
 lstm_43/while/lstm_cell_43/add_1AddV2"lstm_43/while/lstm_cell_43/mul:z:0$lstm_43/while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2"
 lstm_43/while/lstm_cell_43/add_1?
$lstm_43/while/lstm_cell_43/Sigmoid_3Sigmoid)lstm_43/while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2&
$lstm_43/while/lstm_cell_43/Sigmoid_3?
$lstm_43/while/lstm_cell_43/Sigmoid_4Sigmoid$lstm_43/while/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2&
$lstm_43/while/lstm_cell_43/Sigmoid_4?
 lstm_43/while/lstm_cell_43/mul_2Mul(lstm_43/while/lstm_cell_43/Sigmoid_3:y:0(lstm_43/while/lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2"
 lstm_43/while/lstm_cell_43/mul_2?
2lstm_43/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_43_while_placeholder_1lstm_43_while_placeholder$lstm_43/while/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_43/while/TensorArrayV2Write/TensorListSetIteml
lstm_43/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/while/add/y?
lstm_43/while/addAddV2lstm_43_while_placeholderlstm_43/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_43/while/addp
lstm_43/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/while/add_1/y?
lstm_43/while/add_1AddV2(lstm_43_while_lstm_43_while_loop_counterlstm_43/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_43/while/add_1?
lstm_43/while/IdentityIdentitylstm_43/while/add_1:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity?
lstm_43/while/Identity_1Identity.lstm_43_while_lstm_43_while_maximum_iterations2^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_1?
lstm_43/while/Identity_2Identitylstm_43/while/add:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_2?
lstm_43/while/Identity_3IdentityBlstm_43/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_3?
lstm_43/while/Identity_4Identity$lstm_43/while/lstm_cell_43/mul_2:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
lstm_43/while/Identity_4?
lstm_43/while/Identity_5Identity$lstm_43/while/lstm_cell_43/add_1:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
lstm_43/while/Identity_5"9
lstm_43_while_identitylstm_43/while/Identity:output:0"=
lstm_43_while_identity_1!lstm_43/while/Identity_1:output:0"=
lstm_43_while_identity_2!lstm_43/while/Identity_2:output:0"=
lstm_43_while_identity_3!lstm_43/while/Identity_3:output:0"=
lstm_43_while_identity_4!lstm_43/while/Identity_4:output:0"=
lstm_43_while_identity_5!lstm_43/while/Identity_5:output:0"P
%lstm_43_while_lstm_43_strided_slice_1'lstm_43_while_lstm_43_strided_slice_1_0"z
:lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0"|
;lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0"x
9lstm_43_while_lstm_cell_43_matmul_readvariableop_resource;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0"?
alstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensorclstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????`:?????????`: : : : : 2f
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp2d
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp2h
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
: 
?N
?

lstm_43_while_body_1223225,
(lstm_43_while_lstm_43_while_loop_counter2
.lstm_43_while_lstm_43_while_maximum_iterations
lstm_43_while_placeholder
lstm_43_while_placeholder_1
lstm_43_while_placeholder_2
lstm_43_while_placeholder_3+
'lstm_43_while_lstm_43_strided_slice_1_0g
clstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0:	@?P
=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0:	`?K
<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0:	?
lstm_43_while_identity
lstm_43_while_identity_1
lstm_43_while_identity_2
lstm_43_while_identity_3
lstm_43_while_identity_4
lstm_43_while_identity_5)
%lstm_43_while_lstm_43_strided_slice_1e
alstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensorL
9lstm_43_while_lstm_cell_43_matmul_readvariableop_resource:	@?N
;lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource:	`?I
:lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource:	???1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp?2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp?
?lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2A
?lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_43/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0lstm_43_while_placeholderHlstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype023
1lstm_43/while/TensorArrayV2Read/TensorListGetItem?
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype022
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp?
!lstm_43/while/lstm_cell_43/MatMulMatMul8lstm_43/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_43/while/lstm_cell_43/MatMul?
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	`?*
dtype024
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp?
#lstm_43/while/lstm_cell_43/MatMul_1MatMullstm_43_while_placeholder_2:lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_43/while/lstm_cell_43/MatMul_1?
lstm_43/while/lstm_cell_43/addAddV2+lstm_43/while/lstm_cell_43/MatMul:product:0-lstm_43/while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_43/while/lstm_cell_43/add?
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?
"lstm_43/while/lstm_cell_43/BiasAddBiasAdd"lstm_43/while/lstm_cell_43/add:z:09lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_43/while/lstm_cell_43/BiasAdd?
*lstm_43/while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_43/while/lstm_cell_43/split/split_dim?
 lstm_43/while/lstm_cell_43/splitSplit3lstm_43/while/lstm_cell_43/split/split_dim:output:0+lstm_43/while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2"
 lstm_43/while/lstm_cell_43/split?
"lstm_43/while/lstm_cell_43/SigmoidSigmoid)lstm_43/while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2$
"lstm_43/while/lstm_cell_43/Sigmoid?
$lstm_43/while/lstm_cell_43/Sigmoid_1Sigmoid)lstm_43/while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2&
$lstm_43/while/lstm_cell_43/Sigmoid_1?
lstm_43/while/lstm_cell_43/mulMul(lstm_43/while/lstm_cell_43/Sigmoid_1:y:0lstm_43_while_placeholder_3*
T0*'
_output_shapes
:?????????`2 
lstm_43/while/lstm_cell_43/mul?
$lstm_43/while/lstm_cell_43/Sigmoid_2Sigmoid)lstm_43/while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2&
$lstm_43/while/lstm_cell_43/Sigmoid_2?
 lstm_43/while/lstm_cell_43/mul_1Mul&lstm_43/while/lstm_cell_43/Sigmoid:y:0(lstm_43/while/lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2"
 lstm_43/while/lstm_cell_43/mul_1?
 lstm_43/while/lstm_cell_43/add_1AddV2"lstm_43/while/lstm_cell_43/mul:z:0$lstm_43/while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2"
 lstm_43/while/lstm_cell_43/add_1?
$lstm_43/while/lstm_cell_43/Sigmoid_3Sigmoid)lstm_43/while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2&
$lstm_43/while/lstm_cell_43/Sigmoid_3?
$lstm_43/while/lstm_cell_43/Sigmoid_4Sigmoid$lstm_43/while/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2&
$lstm_43/while/lstm_cell_43/Sigmoid_4?
 lstm_43/while/lstm_cell_43/mul_2Mul(lstm_43/while/lstm_cell_43/Sigmoid_3:y:0(lstm_43/while/lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2"
 lstm_43/while/lstm_cell_43/mul_2?
2lstm_43/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_43_while_placeholder_1lstm_43_while_placeholder$lstm_43/while/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_43/while/TensorArrayV2Write/TensorListSetIteml
lstm_43/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/while/add/y?
lstm_43/while/addAddV2lstm_43_while_placeholderlstm_43/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_43/while/addp
lstm_43/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/while/add_1/y?
lstm_43/while/add_1AddV2(lstm_43_while_lstm_43_while_loop_counterlstm_43/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_43/while/add_1?
lstm_43/while/IdentityIdentitylstm_43/while/add_1:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity?
lstm_43/while/Identity_1Identity.lstm_43_while_lstm_43_while_maximum_iterations2^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_1?
lstm_43/while/Identity_2Identitylstm_43/while/add:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_2?
lstm_43/while/Identity_3IdentityBlstm_43/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_3?
lstm_43/while/Identity_4Identity$lstm_43/while/lstm_cell_43/mul_2:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
lstm_43/while/Identity_4?
lstm_43/while/Identity_5Identity$lstm_43/while/lstm_cell_43/add_1:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
lstm_43/while/Identity_5"9
lstm_43_while_identitylstm_43/while/Identity:output:0"=
lstm_43_while_identity_1!lstm_43/while/Identity_1:output:0"=
lstm_43_while_identity_2!lstm_43/while/Identity_2:output:0"=
lstm_43_while_identity_3!lstm_43/while/Identity_3:output:0"=
lstm_43_while_identity_4!lstm_43/while/Identity_4:output:0"=
lstm_43_while_identity_5!lstm_43/while/Identity_5:output:0"P
%lstm_43_while_lstm_43_strided_slice_1'lstm_43_while_lstm_43_strided_slice_1_0"z
:lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0"|
;lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0"x
9lstm_43_while_lstm_cell_43_matmul_readvariableop_resource;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0"?
alstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensorclstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????`:?????????`: : : : : 2f
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp2d
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp2h
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_1222134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1222134___redundant_placeholder05
1while_while_cond_1222134___redundant_placeholder15
1while_while_cond_1222134___redundant_placeholder25
1while_while_cond_1222134___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?C
?
while_body_1223890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_42_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:	@?C
4while_lstm_cell_42_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_42_matmul_readvariableop_resource:	?F
3while_lstm_cell_42_matmul_1_readvariableop_resource:	@?A
2while_lstm_cell_42_biasadd_readvariableop_resource:	???)while/lstm_cell_42/BiasAdd/ReadVariableOp?(while/lstm_cell_42/MatMul/ReadVariableOp?*while/lstm_cell_42/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_42/MatMul/ReadVariableOp?
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/MatMul?
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02,
*while/lstm_cell_42/MatMul_1/ReadVariableOp?
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/MatMul_1?
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/add?
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_42/BiasAdd/ReadVariableOp?
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/BiasAdd?
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_42/split/split_dim?
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_42/split?
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid?
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_1?
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul?
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_2?
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0 while/lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul_1?
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/add_1?
while/lstm_cell_42/Sigmoid_3Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_3?
while/lstm_cell_42/Sigmoid_4Sigmoidwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_4?
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_3:y:0 while/lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_dense_21_layer_call_fn_1224960

inputs
unknown:`
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_12224022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?	
?
/__inference_sequential_21_layer_call_fn_1222428
lstm_42_input
unknown:	?
	unknown_0:	@?
	unknown_1:	?
	unknown_2:	@?
	unknown_3:	`?
	unknown_4:	?
	unknown_5:`
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_42_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_21_layer_call_and_return_conditional_losses_12224092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????H: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????H
'
_user_specified_namelstm_42_input
?
?
while_cond_1223889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1223889___redundant_placeholder05
1while_while_cond_1223889___redundant_placeholder15
1while_while_cond_1223889___redundant_placeholder25
1while_while_cond_1223889___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_1224839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1224839___redundant_placeholder05
1while_while_cond_1224839___redundant_placeholder15
1while_while_cond_1224839___redundant_placeholder25
1while_while_cond_1224839___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????`:?????????`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
:
?
?
.__inference_lstm_cell_43_layer_call_fn_1225085

inputs
states_0
states_1
unknown:	@?
	unknown_0:	`?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????`:?????????`:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_12215072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????`2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????`2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????`2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????@:?????????`:?????????`: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????`
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????`
"
_user_specified_name
states/1
?
?
J__inference_sequential_21_layer_call_and_return_conditional_losses_1222854

inputs"
lstm_42_1222833:	?"
lstm_42_1222835:	@?
lstm_42_1222837:	?"
lstm_43_1222840:	@?"
lstm_43_1222842:	`?
lstm_43_1222844:	?"
dense_21_1222848:`
dense_21_1222850:
identity?? dense_21/StatefulPartitionedCall?"dropout_21/StatefulPartitionedCall?lstm_42/StatefulPartitionedCall?lstm_43/StatefulPartitionedCall?
lstm_42/StatefulPartitionedCallStatefulPartitionedCallinputslstm_42_1222833lstm_42_1222835lstm_42_1222837*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????H@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_42_layer_call_and_return_conditional_losses_12227982!
lstm_42/StatefulPartitionedCall?
lstm_43/StatefulPartitionedCallStatefulPartitionedCall(lstm_42/StatefulPartitionedCall:output:0lstm_43_1222840lstm_43_1222842lstm_43_1222844*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_43_layer_call_and_return_conditional_losses_12226252!
lstm_43/StatefulPartitionedCall?
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall(lstm_43/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_21_layer_call_and_return_conditional_losses_12224582$
"dropout_21/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall+dropout_21/StatefulPartitionedCall:output:0dense_21_1222848dense_21_1222850*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_12224022"
 dense_21/StatefulPartitionedCall?
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0!^dense_21/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall ^lstm_42/StatefulPartitionedCall ^lstm_43/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????H: : : : : : : : 2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall2B
lstm_42/StatefulPartitionedCalllstm_42/StatefulPartitionedCall2B
lstm_43/StatefulPartitionedCalllstm_43/StatefulPartitionedCall:S O
+
_output_shapes
:?????????H
 
_user_specified_nameinputs
?[
?
D__inference_lstm_43_layer_call_and_return_conditional_losses_1222625

inputs>
+lstm_cell_43_matmul_readvariableop_resource:	@?@
-lstm_cell_43_matmul_1_readvariableop_resource:	`?;
,lstm_cell_43_biasadd_readvariableop_resource:	?
identity??#lstm_cell_43/BiasAdd/ReadVariableOp?"lstm_cell_43/MatMul/ReadVariableOp?$lstm_cell_43/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:H?????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp?
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/MatMul?
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	`?*
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp?
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/MatMul_1?
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/add?
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp?
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dim?
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
lstm_cell_43/split?
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid?
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_1?
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul?
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_2?
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul_1?
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/add_1?
lstm_cell_43/Sigmoid_3Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_3?
lstm_cell_43/Sigmoid_4Sigmoidlstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_4?
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_3:y:0lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????`:?????????`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1222541*
condR
while_cond_1222540*K
output_shapes:
8: : : : :?????????`:?????????`: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:H?????????`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????H`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????H@: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????H@
 
_user_specified_nameinputs
?

?
lstm_42_while_cond_1223382,
(lstm_42_while_lstm_42_while_loop_counter2
.lstm_42_while_lstm_42_while_maximum_iterations
lstm_42_while_placeholder
lstm_42_while_placeholder_1
lstm_42_while_placeholder_2
lstm_42_while_placeholder_3.
*lstm_42_while_less_lstm_42_strided_slice_1E
Alstm_42_while_lstm_42_while_cond_1223382___redundant_placeholder0E
Alstm_42_while_lstm_42_while_cond_1223382___redundant_placeholder1E
Alstm_42_while_lstm_42_while_cond_1223382___redundant_placeholder2E
Alstm_42_while_lstm_42_while_cond_1223382___redundant_placeholder3
lstm_42_while_identity
?
lstm_42/while/LessLesslstm_42_while_placeholder*lstm_42_while_less_lstm_42_strided_slice_1*
T0*
_output_shapes
: 2
lstm_42/while/Lessu
lstm_42/while/IdentityIdentitylstm_42/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_42/while/Identity"9
lstm_42_while_identitylstm_42/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?C
?
while_body_1222714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_42_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:	@?C
4while_lstm_cell_42_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_42_matmul_readvariableop_resource:	?F
3while_lstm_cell_42_matmul_1_readvariableop_resource:	@?A
2while_lstm_cell_42_biasadd_readvariableop_resource:	???)while/lstm_cell_42/BiasAdd/ReadVariableOp?(while/lstm_cell_42/MatMul/ReadVariableOp?*while/lstm_cell_42/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_42/MatMul/ReadVariableOp?
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/MatMul?
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02,
*while/lstm_cell_42/MatMul_1/ReadVariableOp?
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/MatMul_1?
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/add?
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_42/BiasAdd/ReadVariableOp?
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/BiasAdd?
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_42/split/split_dim?
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_42/split?
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid?
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_1?
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul?
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_2?
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0 while/lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul_1?
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/add_1?
while/lstm_cell_42/Sigmoid_3Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_3?
while/lstm_cell_42/Sigmoid_4Sigmoidwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_4?
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_3:y:0 while/lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
I__inference_lstm_cell_42_layer_call_and_return_conditional_losses_1221023

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????@2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????@:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?
?
)__inference_lstm_43_layer_call_fn_1224298
inputs_0
unknown:	@?
	unknown_0:	`?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_43_layer_call_and_return_conditional_losses_12218002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?
?
while_cond_1224386
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1224386___redundant_placeholder05
1while_while_cond_1224386___redundant_placeholder15
1while_while_cond_1224386___redundant_placeholder25
1while_while_cond_1224386___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????`:?????????`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
:
?
e
G__inference_dropout_21_layer_call_and_return_conditional_losses_1224939

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????`2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????`2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????`:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?[
?
D__inference_lstm_43_layer_call_and_return_conditional_losses_1224471
inputs_0>
+lstm_cell_43_matmul_readvariableop_resource:	@?@
-lstm_cell_43_matmul_1_readvariableop_resource:	`?;
,lstm_cell_43_biasadd_readvariableop_resource:	?
identity??#lstm_cell_43/BiasAdd/ReadVariableOp?"lstm_cell_43/MatMul/ReadVariableOp?$lstm_cell_43/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp?
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/MatMul?
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	`?*
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp?
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/MatMul_1?
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/add?
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp?
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dim?
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
lstm_cell_43/split?
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid?
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_1?
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul?
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_2?
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul_1?
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/add_1?
lstm_cell_43/Sigmoid_3Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_3?
lstm_cell_43/Sigmoid_4Sigmoidlstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_4?
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_3:y:0lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????`:?????????`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1224387*
condR
while_cond_1224386*K
output_shapes:
8: : : : :?????????`:?????????`: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?
?
)__inference_lstm_42_layer_call_fn_1223650
inputs_0
unknown:	?
	unknown_0:	@?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_42_layer_call_and_return_conditional_losses_12211702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
(sequential_21_lstm_43_while_cond_1220710H
Dsequential_21_lstm_43_while_sequential_21_lstm_43_while_loop_counterN
Jsequential_21_lstm_43_while_sequential_21_lstm_43_while_maximum_iterations+
'sequential_21_lstm_43_while_placeholder-
)sequential_21_lstm_43_while_placeholder_1-
)sequential_21_lstm_43_while_placeholder_2-
)sequential_21_lstm_43_while_placeholder_3J
Fsequential_21_lstm_43_while_less_sequential_21_lstm_43_strided_slice_1a
]sequential_21_lstm_43_while_sequential_21_lstm_43_while_cond_1220710___redundant_placeholder0a
]sequential_21_lstm_43_while_sequential_21_lstm_43_while_cond_1220710___redundant_placeholder1a
]sequential_21_lstm_43_while_sequential_21_lstm_43_while_cond_1220710___redundant_placeholder2a
]sequential_21_lstm_43_while_sequential_21_lstm_43_while_cond_1220710___redundant_placeholder3(
$sequential_21_lstm_43_while_identity
?
 sequential_21/lstm_43/while/LessLess'sequential_21_lstm_43_while_placeholderFsequential_21_lstm_43_while_less_sequential_21_lstm_43_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_21/lstm_43/while/Less?
$sequential_21/lstm_43/while/IdentityIdentity$sequential_21/lstm_43/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_21/lstm_43/while/Identity"U
$sequential_21_lstm_43_while_identity-sequential_21/lstm_43/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????`:?????????`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
:
?
?
)__inference_lstm_42_layer_call_fn_1223672

inputs
unknown:	?
	unknown_0:	@?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????H@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_42_layer_call_and_return_conditional_losses_12227982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????H@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????H: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????H
 
_user_specified_nameinputs
?
?
)__inference_lstm_43_layer_call_fn_1224309

inputs
unknown:	@?
	unknown_0:	`?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_43_layer_call_and_return_conditional_losses_12223772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????H@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????H@
 
_user_specified_nameinputs
?	
?
/__inference_sequential_21_layer_call_fn_1222894
lstm_42_input
unknown:	?
	unknown_0:	@?
	unknown_1:	?
	unknown_2:	@?
	unknown_3:	`?
	unknown_4:	?
	unknown_5:`
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_42_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_21_layer_call_and_return_conditional_losses_12228542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????H: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????H
'
_user_specified_namelstm_42_input
?
?
.__inference_lstm_cell_43_layer_call_fn_1225102

inputs
states_0
states_1
unknown:	@?
	unknown_0:	`?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????`:?????????`:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_12216532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????`2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????`2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????`2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????@:?????????`:?????????`: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????`
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????`
"
_user_specified_name
states/1
?
?
J__inference_sequential_21_layer_call_and_return_conditional_losses_1222942
lstm_42_input"
lstm_42_1222921:	?"
lstm_42_1222923:	@?
lstm_42_1222925:	?"
lstm_43_1222928:	@?"
lstm_43_1222930:	`?
lstm_43_1222932:	?"
dense_21_1222936:`
dense_21_1222938:
identity?? dense_21/StatefulPartitionedCall?"dropout_21/StatefulPartitionedCall?lstm_42/StatefulPartitionedCall?lstm_43/StatefulPartitionedCall?
lstm_42/StatefulPartitionedCallStatefulPartitionedCalllstm_42_inputlstm_42_1222921lstm_42_1222923lstm_42_1222925*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????H@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_42_layer_call_and_return_conditional_losses_12227982!
lstm_42/StatefulPartitionedCall?
lstm_43/StatefulPartitionedCallStatefulPartitionedCall(lstm_42/StatefulPartitionedCall:output:0lstm_43_1222928lstm_43_1222930lstm_43_1222932*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_43_layer_call_and_return_conditional_losses_12226252!
lstm_43/StatefulPartitionedCall?
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall(lstm_43/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_21_layer_call_and_return_conditional_losses_12224582$
"dropout_21/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall+dropout_21/StatefulPartitionedCall:output:0dense_21_1222936dense_21_1222938*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_12224022"
 dense_21/StatefulPartitionedCall?
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0!^dense_21/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall ^lstm_42/StatefulPartitionedCall ^lstm_43/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????H: : : : : : : : 2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall2B
lstm_42/StatefulPartitionedCalllstm_42/StatefulPartitionedCall2B
lstm_43/StatefulPartitionedCalllstm_43/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????H
'
_user_specified_namelstm_42_input
??
?
J__inference_sequential_21_layer_call_and_return_conditional_losses_1223316

inputsF
3lstm_42_lstm_cell_42_matmul_readvariableop_resource:	?H
5lstm_42_lstm_cell_42_matmul_1_readvariableop_resource:	@?C
4lstm_42_lstm_cell_42_biasadd_readvariableop_resource:	?F
3lstm_43_lstm_cell_43_matmul_readvariableop_resource:	@?H
5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource:	`?C
4lstm_43_lstm_cell_43_biasadd_readvariableop_resource:	?9
'dense_21_matmul_readvariableop_resource:`6
(dense_21_biasadd_readvariableop_resource:
identity??dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp?*lstm_42/lstm_cell_42/MatMul/ReadVariableOp?,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp?lstm_42/while?+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp?*lstm_43/lstm_cell_43/MatMul/ReadVariableOp?,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp?lstm_43/whileT
lstm_42/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_42/Shape?
lstm_42/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_42/strided_slice/stack?
lstm_42/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_42/strided_slice/stack_1?
lstm_42/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_42/strided_slice/stack_2?
lstm_42/strided_sliceStridedSlicelstm_42/Shape:output:0$lstm_42/strided_slice/stack:output:0&lstm_42/strided_slice/stack_1:output:0&lstm_42/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_42/strided_slicel
lstm_42/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_42/zeros/mul/y?
lstm_42/zeros/mulMullstm_42/strided_slice:output:0lstm_42/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros/mulo
lstm_42/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_42/zeros/Less/y?
lstm_42/zeros/LessLesslstm_42/zeros/mul:z:0lstm_42/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros/Lessr
lstm_42/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_42/zeros/packed/1?
lstm_42/zeros/packedPacklstm_42/strided_slice:output:0lstm_42/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_42/zeros/packedo
lstm_42/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_42/zeros/Const?
lstm_42/zerosFilllstm_42/zeros/packed:output:0lstm_42/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_42/zerosp
lstm_42/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_42/zeros_1/mul/y?
lstm_42/zeros_1/mulMullstm_42/strided_slice:output:0lstm_42/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros_1/muls
lstm_42/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_42/zeros_1/Less/y?
lstm_42/zeros_1/LessLesslstm_42/zeros_1/mul:z:0lstm_42/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros_1/Lessv
lstm_42/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_42/zeros_1/packed/1?
lstm_42/zeros_1/packedPacklstm_42/strided_slice:output:0!lstm_42/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_42/zeros_1/packeds
lstm_42/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_42/zeros_1/Const?
lstm_42/zeros_1Filllstm_42/zeros_1/packed:output:0lstm_42/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_42/zeros_1?
lstm_42/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_42/transpose/perm?
lstm_42/transpose	Transposeinputslstm_42/transpose/perm:output:0*
T0*+
_output_shapes
:H?????????2
lstm_42/transposeg
lstm_42/Shape_1Shapelstm_42/transpose:y:0*
T0*
_output_shapes
:2
lstm_42/Shape_1?
lstm_42/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_42/strided_slice_1/stack?
lstm_42/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_1/stack_1?
lstm_42/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_1/stack_2?
lstm_42/strided_slice_1StridedSlicelstm_42/Shape_1:output:0&lstm_42/strided_slice_1/stack:output:0(lstm_42/strided_slice_1/stack_1:output:0(lstm_42/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_42/strided_slice_1?
#lstm_42/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_42/TensorArrayV2/element_shape?
lstm_42/TensorArrayV2TensorListReserve,lstm_42/TensorArrayV2/element_shape:output:0 lstm_42/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_42/TensorArrayV2?
=lstm_42/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_42/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_42/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_42/transpose:y:0Flstm_42/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_42/TensorArrayUnstack/TensorListFromTensor?
lstm_42/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_42/strided_slice_2/stack?
lstm_42/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_2/stack_1?
lstm_42/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_2/stack_2?
lstm_42/strided_slice_2StridedSlicelstm_42/transpose:y:0&lstm_42/strided_slice_2/stack:output:0(lstm_42/strided_slice_2/stack_1:output:0(lstm_42/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_42/strided_slice_2?
*lstm_42/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3lstm_42_lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*lstm_42/lstm_cell_42/MatMul/ReadVariableOp?
lstm_42/lstm_cell_42/MatMulMatMul lstm_42/strided_slice_2:output:02lstm_42/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_42/lstm_cell_42/MatMul?
,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5lstm_42_lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02.
,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp?
lstm_42/lstm_cell_42/MatMul_1MatMullstm_42/zeros:output:04lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_42/lstm_cell_42/MatMul_1?
lstm_42/lstm_cell_42/addAddV2%lstm_42/lstm_cell_42/MatMul:product:0'lstm_42/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_42/lstm_cell_42/add?
+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4lstm_42_lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp?
lstm_42/lstm_cell_42/BiasAddBiasAddlstm_42/lstm_cell_42/add:z:03lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_42/lstm_cell_42/BiasAdd?
$lstm_42/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_42/lstm_cell_42/split/split_dim?
lstm_42/lstm_cell_42/splitSplit-lstm_42/lstm_cell_42/split/split_dim:output:0%lstm_42/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_42/lstm_cell_42/split?
lstm_42/lstm_cell_42/SigmoidSigmoid#lstm_42/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_42/lstm_cell_42/Sigmoid?
lstm_42/lstm_cell_42/Sigmoid_1Sigmoid#lstm_42/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2 
lstm_42/lstm_cell_42/Sigmoid_1?
lstm_42/lstm_cell_42/mulMul"lstm_42/lstm_cell_42/Sigmoid_1:y:0lstm_42/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_42/lstm_cell_42/mul?
lstm_42/lstm_cell_42/Sigmoid_2Sigmoid#lstm_42/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2 
lstm_42/lstm_cell_42/Sigmoid_2?
lstm_42/lstm_cell_42/mul_1Mul lstm_42/lstm_cell_42/Sigmoid:y:0"lstm_42/lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_42/lstm_cell_42/mul_1?
lstm_42/lstm_cell_42/add_1AddV2lstm_42/lstm_cell_42/mul:z:0lstm_42/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_42/lstm_cell_42/add_1?
lstm_42/lstm_cell_42/Sigmoid_3Sigmoid#lstm_42/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2 
lstm_42/lstm_cell_42/Sigmoid_3?
lstm_42/lstm_cell_42/Sigmoid_4Sigmoidlstm_42/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2 
lstm_42/lstm_cell_42/Sigmoid_4?
lstm_42/lstm_cell_42/mul_2Mul"lstm_42/lstm_cell_42/Sigmoid_3:y:0"lstm_42/lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_42/lstm_cell_42/mul_2?
%lstm_42/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2'
%lstm_42/TensorArrayV2_1/element_shape?
lstm_42/TensorArrayV2_1TensorListReserve.lstm_42/TensorArrayV2_1/element_shape:output:0 lstm_42/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_42/TensorArrayV2_1^
lstm_42/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_42/time?
 lstm_42/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_42/while/maximum_iterationsz
lstm_42/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_42/while/loop_counter?
lstm_42/whileWhile#lstm_42/while/loop_counter:output:0)lstm_42/while/maximum_iterations:output:0lstm_42/time:output:0 lstm_42/TensorArrayV2_1:handle:0lstm_42/zeros:output:0lstm_42/zeros_1:output:0 lstm_42/strided_slice_1:output:0?lstm_42/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_42_lstm_cell_42_matmul_readvariableop_resource5lstm_42_lstm_cell_42_matmul_1_readvariableop_resource4lstm_42_lstm_cell_42_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*&
bodyR
lstm_42_while_body_1223078*&
condR
lstm_42_while_cond_1223077*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
lstm_42/while?
8lstm_42/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2:
8lstm_42/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_42/TensorArrayV2Stack/TensorListStackTensorListStacklstm_42/while:output:3Alstm_42/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:H?????????@*
element_dtype02,
*lstm_42/TensorArrayV2Stack/TensorListStack?
lstm_42/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_42/strided_slice_3/stack?
lstm_42/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_42/strided_slice_3/stack_1?
lstm_42/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_3/stack_2?
lstm_42/strided_slice_3StridedSlice3lstm_42/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_42/strided_slice_3/stack:output:0(lstm_42/strided_slice_3/stack_1:output:0(lstm_42/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm_42/strided_slice_3?
lstm_42/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_42/transpose_1/perm?
lstm_42/transpose_1	Transpose3lstm_42/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_42/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????H@2
lstm_42/transpose_1v
lstm_42/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_42/runtimee
lstm_43/ShapeShapelstm_42/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_43/Shape?
lstm_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice/stack?
lstm_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_43/strided_slice/stack_1?
lstm_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_43/strided_slice/stack_2?
lstm_43/strided_sliceStridedSlicelstm_43/Shape:output:0$lstm_43/strided_slice/stack:output:0&lstm_43/strided_slice/stack_1:output:0&lstm_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_43/strided_slicel
lstm_43/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
lstm_43/zeros/mul/y?
lstm_43/zeros/mulMullstm_43/strided_slice:output:0lstm_43/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros/mulo
lstm_43/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_43/zeros/Less/y?
lstm_43/zeros/LessLesslstm_43/zeros/mul:z:0lstm_43/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros/Lessr
lstm_43/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
lstm_43/zeros/packed/1?
lstm_43/zeros/packedPacklstm_43/strided_slice:output:0lstm_43/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_43/zeros/packedo
lstm_43/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/zeros/Const?
lstm_43/zerosFilllstm_43/zeros/packed:output:0lstm_43/zeros/Const:output:0*
T0*'
_output_shapes
:?????????`2
lstm_43/zerosp
lstm_43/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
lstm_43/zeros_1/mul/y?
lstm_43/zeros_1/mulMullstm_43/strided_slice:output:0lstm_43/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros_1/muls
lstm_43/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_43/zeros_1/Less/y?
lstm_43/zeros_1/LessLesslstm_43/zeros_1/mul:z:0lstm_43/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros_1/Lessv
lstm_43/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
lstm_43/zeros_1/packed/1?
lstm_43/zeros_1/packedPacklstm_43/strided_slice:output:0!lstm_43/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_43/zeros_1/packeds
lstm_43/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/zeros_1/Const?
lstm_43/zeros_1Filllstm_43/zeros_1/packed:output:0lstm_43/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????`2
lstm_43/zeros_1?
lstm_43/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_43/transpose/perm?
lstm_43/transpose	Transposelstm_42/transpose_1:y:0lstm_43/transpose/perm:output:0*
T0*+
_output_shapes
:H?????????@2
lstm_43/transposeg
lstm_43/Shape_1Shapelstm_43/transpose:y:0*
T0*
_output_shapes
:2
lstm_43/Shape_1?
lstm_43/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice_1/stack?
lstm_43/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_1/stack_1?
lstm_43/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_1/stack_2?
lstm_43/strided_slice_1StridedSlicelstm_43/Shape_1:output:0&lstm_43/strided_slice_1/stack:output:0(lstm_43/strided_slice_1/stack_1:output:0(lstm_43/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_43/strided_slice_1?
#lstm_43/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_43/TensorArrayV2/element_shape?
lstm_43/TensorArrayV2TensorListReserve,lstm_43/TensorArrayV2/element_shape:output:0 lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_43/TensorArrayV2?
=lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2?
=lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_43/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_43/transpose:y:0Flstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_43/TensorArrayUnstack/TensorListFromTensor?
lstm_43/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice_2/stack?
lstm_43/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_2/stack_1?
lstm_43/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_2/stack_2?
lstm_43/strided_slice_2StridedSlicelstm_43/transpose:y:0&lstm_43/strided_slice_2/stack:output:0(lstm_43/strided_slice_2/stack_1:output:0(lstm_43/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm_43/strided_slice_2?
*lstm_43/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3lstm_43_lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02,
*lstm_43/lstm_cell_43/MatMul/ReadVariableOp?
lstm_43/lstm_cell_43/MatMulMatMul lstm_43/strided_slice_2:output:02lstm_43/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_43/lstm_cell_43/MatMul?
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	`?*
dtype02.
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp?
lstm_43/lstm_cell_43/MatMul_1MatMullstm_43/zeros:output:04lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_43/lstm_cell_43/MatMul_1?
lstm_43/lstm_cell_43/addAddV2%lstm_43/lstm_cell_43/MatMul:product:0'lstm_43/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_43/lstm_cell_43/add?
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp?
lstm_43/lstm_cell_43/BiasAddBiasAddlstm_43/lstm_cell_43/add:z:03lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_43/lstm_cell_43/BiasAdd?
$lstm_43/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_43/lstm_cell_43/split/split_dim?
lstm_43/lstm_cell_43/splitSplit-lstm_43/lstm_cell_43/split/split_dim:output:0%lstm_43/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
lstm_43/lstm_cell_43/split?
lstm_43/lstm_cell_43/SigmoidSigmoid#lstm_43/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2
lstm_43/lstm_cell_43/Sigmoid?
lstm_43/lstm_cell_43/Sigmoid_1Sigmoid#lstm_43/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2 
lstm_43/lstm_cell_43/Sigmoid_1?
lstm_43/lstm_cell_43/mulMul"lstm_43/lstm_cell_43/Sigmoid_1:y:0lstm_43/zeros_1:output:0*
T0*'
_output_shapes
:?????????`2
lstm_43/lstm_cell_43/mul?
lstm_43/lstm_cell_43/Sigmoid_2Sigmoid#lstm_43/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2 
lstm_43/lstm_cell_43/Sigmoid_2?
lstm_43/lstm_cell_43/mul_1Mul lstm_43/lstm_cell_43/Sigmoid:y:0"lstm_43/lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
lstm_43/lstm_cell_43/mul_1?
lstm_43/lstm_cell_43/add_1AddV2lstm_43/lstm_cell_43/mul:z:0lstm_43/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2
lstm_43/lstm_cell_43/add_1?
lstm_43/lstm_cell_43/Sigmoid_3Sigmoid#lstm_43/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2 
lstm_43/lstm_cell_43/Sigmoid_3?
lstm_43/lstm_cell_43/Sigmoid_4Sigmoidlstm_43/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2 
lstm_43/lstm_cell_43/Sigmoid_4?
lstm_43/lstm_cell_43/mul_2Mul"lstm_43/lstm_cell_43/Sigmoid_3:y:0"lstm_43/lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
lstm_43/lstm_cell_43/mul_2?
%lstm_43/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   2'
%lstm_43/TensorArrayV2_1/element_shape?
lstm_43/TensorArrayV2_1TensorListReserve.lstm_43/TensorArrayV2_1/element_shape:output:0 lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_43/TensorArrayV2_1^
lstm_43/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_43/time?
 lstm_43/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_43/while/maximum_iterationsz
lstm_43/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_43/while/loop_counter?
lstm_43/whileWhile#lstm_43/while/loop_counter:output:0)lstm_43/while/maximum_iterations:output:0lstm_43/time:output:0 lstm_43/TensorArrayV2_1:handle:0lstm_43/zeros:output:0lstm_43/zeros_1:output:0 lstm_43/strided_slice_1:output:0?lstm_43/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_43_lstm_cell_43_matmul_readvariableop_resource5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource4lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????`:?????????`: : : : : *%
_read_only_resource_inputs
	
*&
bodyR
lstm_43_while_body_1223225*&
condR
lstm_43_while_cond_1223224*K
output_shapes:
8: : : : :?????????`:?????????`: : : : : *
parallel_iterations 2
lstm_43/while?
8lstm_43/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   2:
8lstm_43/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_43/TensorArrayV2Stack/TensorListStackTensorListStacklstm_43/while:output:3Alstm_43/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:H?????????`*
element_dtype02,
*lstm_43/TensorArrayV2Stack/TensorListStack?
lstm_43/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_43/strided_slice_3/stack?
lstm_43/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_43/strided_slice_3/stack_1?
lstm_43/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_3/stack_2?
lstm_43/strided_slice_3StridedSlice3lstm_43/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_43/strided_slice_3/stack:output:0(lstm_43/strided_slice_3/stack_1:output:0(lstm_43/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????`*
shrink_axis_mask2
lstm_43/strided_slice_3?
lstm_43/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_43/transpose_1/perm?
lstm_43/transpose_1	Transpose3lstm_43/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_43/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????H`2
lstm_43/transpose_1v
lstm_43/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/runtime?
dropout_21/IdentityIdentity lstm_43/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????`2
dropout_21/Identity?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

:`*
dtype02 
dense_21/MatMul/ReadVariableOp?
dense_21/MatMulMatMuldropout_21/Identity:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_21/MatMul?
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_21/BiasAdd/ReadVariableOp?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_21/BiasAdd?
IdentityIdentitydense_21/BiasAdd:output:0 ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp,^lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp+^lstm_42/lstm_cell_42/MatMul/ReadVariableOp-^lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp^lstm_42/while,^lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp+^lstm_43/lstm_cell_43/MatMul/ReadVariableOp-^lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp^lstm_43/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????H: : : : : : : : 2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2Z
+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp2X
*lstm_42/lstm_cell_42/MatMul/ReadVariableOp*lstm_42/lstm_cell_42/MatMul/ReadVariableOp2\
,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp2
lstm_42/whilelstm_42/while2Z
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp2X
*lstm_43/lstm_cell_43/MatMul/ReadVariableOp*lstm_43/lstm_cell_43/MatMul/ReadVariableOp2\
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp2
lstm_43/whilelstm_43/while:S O
+
_output_shapes
:?????????H
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_42_layer_call_and_return_conditional_losses_1225068

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????@2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????@:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?
?
while_cond_1222292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1222292___redundant_placeholder05
1while_while_cond_1222292___redundant_placeholder15
1while_while_cond_1222292___redundant_placeholder25
1while_while_cond_1222292___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????`:?????????`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
:
?
?
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_1225166

inputs
states_0
states_11
matmul_readvariableop_resource:	@?3
 matmul_1_readvariableop_resource:	`?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	`?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????`2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????`2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????`2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????`2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????`2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????`2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????`2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????@:?????????`:?????????`: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????`
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????`
"
_user_specified_name
states/1
?
?
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_1221507

inputs

states
states_11
matmul_readvariableop_resource:	@?3
 matmul_1_readvariableop_resource:	`?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	`?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????`2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????`2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????`2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????`2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????`2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????`2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????`2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????@:?????????`:?????????`: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????`
 
_user_specified_namestates:OK
'
_output_shapes
:?????????`
 
_user_specified_namestates
??
?
J__inference_sequential_21_layer_call_and_return_conditional_losses_1223628

inputsF
3lstm_42_lstm_cell_42_matmul_readvariableop_resource:	?H
5lstm_42_lstm_cell_42_matmul_1_readvariableop_resource:	@?C
4lstm_42_lstm_cell_42_biasadd_readvariableop_resource:	?F
3lstm_43_lstm_cell_43_matmul_readvariableop_resource:	@?H
5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource:	`?C
4lstm_43_lstm_cell_43_biasadd_readvariableop_resource:	?9
'dense_21_matmul_readvariableop_resource:`6
(dense_21_biasadd_readvariableop_resource:
identity??dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp?*lstm_42/lstm_cell_42/MatMul/ReadVariableOp?,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp?lstm_42/while?+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp?*lstm_43/lstm_cell_43/MatMul/ReadVariableOp?,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp?lstm_43/whileT
lstm_42/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_42/Shape?
lstm_42/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_42/strided_slice/stack?
lstm_42/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_42/strided_slice/stack_1?
lstm_42/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_42/strided_slice/stack_2?
lstm_42/strided_sliceStridedSlicelstm_42/Shape:output:0$lstm_42/strided_slice/stack:output:0&lstm_42/strided_slice/stack_1:output:0&lstm_42/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_42/strided_slicel
lstm_42/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_42/zeros/mul/y?
lstm_42/zeros/mulMullstm_42/strided_slice:output:0lstm_42/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros/mulo
lstm_42/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_42/zeros/Less/y?
lstm_42/zeros/LessLesslstm_42/zeros/mul:z:0lstm_42/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros/Lessr
lstm_42/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_42/zeros/packed/1?
lstm_42/zeros/packedPacklstm_42/strided_slice:output:0lstm_42/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_42/zeros/packedo
lstm_42/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_42/zeros/Const?
lstm_42/zerosFilllstm_42/zeros/packed:output:0lstm_42/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_42/zerosp
lstm_42/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_42/zeros_1/mul/y?
lstm_42/zeros_1/mulMullstm_42/strided_slice:output:0lstm_42/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros_1/muls
lstm_42/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_42/zeros_1/Less/y?
lstm_42/zeros_1/LessLesslstm_42/zeros_1/mul:z:0lstm_42/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros_1/Lessv
lstm_42/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_42/zeros_1/packed/1?
lstm_42/zeros_1/packedPacklstm_42/strided_slice:output:0!lstm_42/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_42/zeros_1/packeds
lstm_42/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_42/zeros_1/Const?
lstm_42/zeros_1Filllstm_42/zeros_1/packed:output:0lstm_42/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_42/zeros_1?
lstm_42/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_42/transpose/perm?
lstm_42/transpose	Transposeinputslstm_42/transpose/perm:output:0*
T0*+
_output_shapes
:H?????????2
lstm_42/transposeg
lstm_42/Shape_1Shapelstm_42/transpose:y:0*
T0*
_output_shapes
:2
lstm_42/Shape_1?
lstm_42/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_42/strided_slice_1/stack?
lstm_42/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_1/stack_1?
lstm_42/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_1/stack_2?
lstm_42/strided_slice_1StridedSlicelstm_42/Shape_1:output:0&lstm_42/strided_slice_1/stack:output:0(lstm_42/strided_slice_1/stack_1:output:0(lstm_42/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_42/strided_slice_1?
#lstm_42/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_42/TensorArrayV2/element_shape?
lstm_42/TensorArrayV2TensorListReserve,lstm_42/TensorArrayV2/element_shape:output:0 lstm_42/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_42/TensorArrayV2?
=lstm_42/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_42/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_42/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_42/transpose:y:0Flstm_42/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_42/TensorArrayUnstack/TensorListFromTensor?
lstm_42/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_42/strided_slice_2/stack?
lstm_42/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_2/stack_1?
lstm_42/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_2/stack_2?
lstm_42/strided_slice_2StridedSlicelstm_42/transpose:y:0&lstm_42/strided_slice_2/stack:output:0(lstm_42/strided_slice_2/stack_1:output:0(lstm_42/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_42/strided_slice_2?
*lstm_42/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3lstm_42_lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*lstm_42/lstm_cell_42/MatMul/ReadVariableOp?
lstm_42/lstm_cell_42/MatMulMatMul lstm_42/strided_slice_2:output:02lstm_42/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_42/lstm_cell_42/MatMul?
,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5lstm_42_lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02.
,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp?
lstm_42/lstm_cell_42/MatMul_1MatMullstm_42/zeros:output:04lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_42/lstm_cell_42/MatMul_1?
lstm_42/lstm_cell_42/addAddV2%lstm_42/lstm_cell_42/MatMul:product:0'lstm_42/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_42/lstm_cell_42/add?
+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4lstm_42_lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp?
lstm_42/lstm_cell_42/BiasAddBiasAddlstm_42/lstm_cell_42/add:z:03lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_42/lstm_cell_42/BiasAdd?
$lstm_42/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_42/lstm_cell_42/split/split_dim?
lstm_42/lstm_cell_42/splitSplit-lstm_42/lstm_cell_42/split/split_dim:output:0%lstm_42/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_42/lstm_cell_42/split?
lstm_42/lstm_cell_42/SigmoidSigmoid#lstm_42/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_42/lstm_cell_42/Sigmoid?
lstm_42/lstm_cell_42/Sigmoid_1Sigmoid#lstm_42/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2 
lstm_42/lstm_cell_42/Sigmoid_1?
lstm_42/lstm_cell_42/mulMul"lstm_42/lstm_cell_42/Sigmoid_1:y:0lstm_42/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_42/lstm_cell_42/mul?
lstm_42/lstm_cell_42/Sigmoid_2Sigmoid#lstm_42/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2 
lstm_42/lstm_cell_42/Sigmoid_2?
lstm_42/lstm_cell_42/mul_1Mul lstm_42/lstm_cell_42/Sigmoid:y:0"lstm_42/lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_42/lstm_cell_42/mul_1?
lstm_42/lstm_cell_42/add_1AddV2lstm_42/lstm_cell_42/mul:z:0lstm_42/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_42/lstm_cell_42/add_1?
lstm_42/lstm_cell_42/Sigmoid_3Sigmoid#lstm_42/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2 
lstm_42/lstm_cell_42/Sigmoid_3?
lstm_42/lstm_cell_42/Sigmoid_4Sigmoidlstm_42/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2 
lstm_42/lstm_cell_42/Sigmoid_4?
lstm_42/lstm_cell_42/mul_2Mul"lstm_42/lstm_cell_42/Sigmoid_3:y:0"lstm_42/lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_42/lstm_cell_42/mul_2?
%lstm_42/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2'
%lstm_42/TensorArrayV2_1/element_shape?
lstm_42/TensorArrayV2_1TensorListReserve.lstm_42/TensorArrayV2_1/element_shape:output:0 lstm_42/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_42/TensorArrayV2_1^
lstm_42/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_42/time?
 lstm_42/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_42/while/maximum_iterationsz
lstm_42/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_42/while/loop_counter?
lstm_42/whileWhile#lstm_42/while/loop_counter:output:0)lstm_42/while/maximum_iterations:output:0lstm_42/time:output:0 lstm_42/TensorArrayV2_1:handle:0lstm_42/zeros:output:0lstm_42/zeros_1:output:0 lstm_42/strided_slice_1:output:0?lstm_42/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_42_lstm_cell_42_matmul_readvariableop_resource5lstm_42_lstm_cell_42_matmul_1_readvariableop_resource4lstm_42_lstm_cell_42_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*&
bodyR
lstm_42_while_body_1223383*&
condR
lstm_42_while_cond_1223382*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
lstm_42/while?
8lstm_42/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2:
8lstm_42/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_42/TensorArrayV2Stack/TensorListStackTensorListStacklstm_42/while:output:3Alstm_42/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:H?????????@*
element_dtype02,
*lstm_42/TensorArrayV2Stack/TensorListStack?
lstm_42/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_42/strided_slice_3/stack?
lstm_42/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_42/strided_slice_3/stack_1?
lstm_42/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_3/stack_2?
lstm_42/strided_slice_3StridedSlice3lstm_42/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_42/strided_slice_3/stack:output:0(lstm_42/strided_slice_3/stack_1:output:0(lstm_42/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm_42/strided_slice_3?
lstm_42/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_42/transpose_1/perm?
lstm_42/transpose_1	Transpose3lstm_42/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_42/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????H@2
lstm_42/transpose_1v
lstm_42/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_42/runtimee
lstm_43/ShapeShapelstm_42/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_43/Shape?
lstm_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice/stack?
lstm_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_43/strided_slice/stack_1?
lstm_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_43/strided_slice/stack_2?
lstm_43/strided_sliceStridedSlicelstm_43/Shape:output:0$lstm_43/strided_slice/stack:output:0&lstm_43/strided_slice/stack_1:output:0&lstm_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_43/strided_slicel
lstm_43/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
lstm_43/zeros/mul/y?
lstm_43/zeros/mulMullstm_43/strided_slice:output:0lstm_43/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros/mulo
lstm_43/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_43/zeros/Less/y?
lstm_43/zeros/LessLesslstm_43/zeros/mul:z:0lstm_43/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros/Lessr
lstm_43/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
lstm_43/zeros/packed/1?
lstm_43/zeros/packedPacklstm_43/strided_slice:output:0lstm_43/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_43/zeros/packedo
lstm_43/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/zeros/Const?
lstm_43/zerosFilllstm_43/zeros/packed:output:0lstm_43/zeros/Const:output:0*
T0*'
_output_shapes
:?????????`2
lstm_43/zerosp
lstm_43/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
lstm_43/zeros_1/mul/y?
lstm_43/zeros_1/mulMullstm_43/strided_slice:output:0lstm_43/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros_1/muls
lstm_43/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_43/zeros_1/Less/y?
lstm_43/zeros_1/LessLesslstm_43/zeros_1/mul:z:0lstm_43/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros_1/Lessv
lstm_43/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
lstm_43/zeros_1/packed/1?
lstm_43/zeros_1/packedPacklstm_43/strided_slice:output:0!lstm_43/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_43/zeros_1/packeds
lstm_43/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/zeros_1/Const?
lstm_43/zeros_1Filllstm_43/zeros_1/packed:output:0lstm_43/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????`2
lstm_43/zeros_1?
lstm_43/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_43/transpose/perm?
lstm_43/transpose	Transposelstm_42/transpose_1:y:0lstm_43/transpose/perm:output:0*
T0*+
_output_shapes
:H?????????@2
lstm_43/transposeg
lstm_43/Shape_1Shapelstm_43/transpose:y:0*
T0*
_output_shapes
:2
lstm_43/Shape_1?
lstm_43/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice_1/stack?
lstm_43/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_1/stack_1?
lstm_43/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_1/stack_2?
lstm_43/strided_slice_1StridedSlicelstm_43/Shape_1:output:0&lstm_43/strided_slice_1/stack:output:0(lstm_43/strided_slice_1/stack_1:output:0(lstm_43/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_43/strided_slice_1?
#lstm_43/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_43/TensorArrayV2/element_shape?
lstm_43/TensorArrayV2TensorListReserve,lstm_43/TensorArrayV2/element_shape:output:0 lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_43/TensorArrayV2?
=lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2?
=lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_43/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_43/transpose:y:0Flstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_43/TensorArrayUnstack/TensorListFromTensor?
lstm_43/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice_2/stack?
lstm_43/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_2/stack_1?
lstm_43/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_2/stack_2?
lstm_43/strided_slice_2StridedSlicelstm_43/transpose:y:0&lstm_43/strided_slice_2/stack:output:0(lstm_43/strided_slice_2/stack_1:output:0(lstm_43/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm_43/strided_slice_2?
*lstm_43/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3lstm_43_lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02,
*lstm_43/lstm_cell_43/MatMul/ReadVariableOp?
lstm_43/lstm_cell_43/MatMulMatMul lstm_43/strided_slice_2:output:02lstm_43/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_43/lstm_cell_43/MatMul?
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	`?*
dtype02.
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp?
lstm_43/lstm_cell_43/MatMul_1MatMullstm_43/zeros:output:04lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_43/lstm_cell_43/MatMul_1?
lstm_43/lstm_cell_43/addAddV2%lstm_43/lstm_cell_43/MatMul:product:0'lstm_43/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_43/lstm_cell_43/add?
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp?
lstm_43/lstm_cell_43/BiasAddBiasAddlstm_43/lstm_cell_43/add:z:03lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_43/lstm_cell_43/BiasAdd?
$lstm_43/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_43/lstm_cell_43/split/split_dim?
lstm_43/lstm_cell_43/splitSplit-lstm_43/lstm_cell_43/split/split_dim:output:0%lstm_43/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
lstm_43/lstm_cell_43/split?
lstm_43/lstm_cell_43/SigmoidSigmoid#lstm_43/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2
lstm_43/lstm_cell_43/Sigmoid?
lstm_43/lstm_cell_43/Sigmoid_1Sigmoid#lstm_43/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2 
lstm_43/lstm_cell_43/Sigmoid_1?
lstm_43/lstm_cell_43/mulMul"lstm_43/lstm_cell_43/Sigmoid_1:y:0lstm_43/zeros_1:output:0*
T0*'
_output_shapes
:?????????`2
lstm_43/lstm_cell_43/mul?
lstm_43/lstm_cell_43/Sigmoid_2Sigmoid#lstm_43/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2 
lstm_43/lstm_cell_43/Sigmoid_2?
lstm_43/lstm_cell_43/mul_1Mul lstm_43/lstm_cell_43/Sigmoid:y:0"lstm_43/lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
lstm_43/lstm_cell_43/mul_1?
lstm_43/lstm_cell_43/add_1AddV2lstm_43/lstm_cell_43/mul:z:0lstm_43/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2
lstm_43/lstm_cell_43/add_1?
lstm_43/lstm_cell_43/Sigmoid_3Sigmoid#lstm_43/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2 
lstm_43/lstm_cell_43/Sigmoid_3?
lstm_43/lstm_cell_43/Sigmoid_4Sigmoidlstm_43/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2 
lstm_43/lstm_cell_43/Sigmoid_4?
lstm_43/lstm_cell_43/mul_2Mul"lstm_43/lstm_cell_43/Sigmoid_3:y:0"lstm_43/lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
lstm_43/lstm_cell_43/mul_2?
%lstm_43/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   2'
%lstm_43/TensorArrayV2_1/element_shape?
lstm_43/TensorArrayV2_1TensorListReserve.lstm_43/TensorArrayV2_1/element_shape:output:0 lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_43/TensorArrayV2_1^
lstm_43/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_43/time?
 lstm_43/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_43/while/maximum_iterationsz
lstm_43/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_43/while/loop_counter?
lstm_43/whileWhile#lstm_43/while/loop_counter:output:0)lstm_43/while/maximum_iterations:output:0lstm_43/time:output:0 lstm_43/TensorArrayV2_1:handle:0lstm_43/zeros:output:0lstm_43/zeros_1:output:0 lstm_43/strided_slice_1:output:0?lstm_43/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_43_lstm_cell_43_matmul_readvariableop_resource5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource4lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????`:?????????`: : : : : *%
_read_only_resource_inputs
	
*&
bodyR
lstm_43_while_body_1223530*&
condR
lstm_43_while_cond_1223529*K
output_shapes:
8: : : : :?????????`:?????????`: : : : : *
parallel_iterations 2
lstm_43/while?
8lstm_43/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   2:
8lstm_43/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_43/TensorArrayV2Stack/TensorListStackTensorListStacklstm_43/while:output:3Alstm_43/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:H?????????`*
element_dtype02,
*lstm_43/TensorArrayV2Stack/TensorListStack?
lstm_43/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_43/strided_slice_3/stack?
lstm_43/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_43/strided_slice_3/stack_1?
lstm_43/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_3/stack_2?
lstm_43/strided_slice_3StridedSlice3lstm_43/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_43/strided_slice_3/stack:output:0(lstm_43/strided_slice_3/stack_1:output:0(lstm_43/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????`*
shrink_axis_mask2
lstm_43/strided_slice_3?
lstm_43/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_43/transpose_1/perm?
lstm_43/transpose_1	Transpose3lstm_43/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_43/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????H`2
lstm_43/transpose_1v
lstm_43/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/runtimey
dropout_21/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_21/dropout/Const?
dropout_21/dropout/MulMul lstm_43/strided_slice_3:output:0!dropout_21/dropout/Const:output:0*
T0*'
_output_shapes
:?????????`2
dropout_21/dropout/Mul?
dropout_21/dropout/ShapeShape lstm_43/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_21/dropout/Shape?
/dropout_21/dropout/random_uniform/RandomUniformRandomUniform!dropout_21/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????`*
dtype021
/dropout_21/dropout/random_uniform/RandomUniform?
!dropout_21/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!dropout_21/dropout/GreaterEqual/y?
dropout_21/dropout/GreaterEqualGreaterEqual8dropout_21/dropout/random_uniform/RandomUniform:output:0*dropout_21/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????`2!
dropout_21/dropout/GreaterEqual?
dropout_21/dropout/CastCast#dropout_21/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????`2
dropout_21/dropout/Cast?
dropout_21/dropout/Mul_1Muldropout_21/dropout/Mul:z:0dropout_21/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????`2
dropout_21/dropout/Mul_1?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

:`*
dtype02 
dense_21/MatMul/ReadVariableOp?
dense_21/MatMulMatMuldropout_21/dropout/Mul_1:z:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_21/MatMul?
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_21/BiasAdd/ReadVariableOp?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_21/BiasAdd?
IdentityIdentitydense_21/BiasAdd:output:0 ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp,^lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp+^lstm_42/lstm_cell_42/MatMul/ReadVariableOp-^lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp^lstm_42/while,^lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp+^lstm_43/lstm_cell_43/MatMul/ReadVariableOp-^lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp^lstm_43/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????H: : : : : : : : 2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2Z
+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp2X
*lstm_42/lstm_cell_42/MatMul/ReadVariableOp*lstm_42/lstm_cell_42/MatMul/ReadVariableOp2\
,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp2
lstm_42/whilelstm_42/while2Z
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp2X
*lstm_43/lstm_cell_43/MatMul/ReadVariableOp*lstm_43/lstm_cell_43/MatMul/ReadVariableOp2\
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp2
lstm_43/whilelstm_43/while:S O
+
_output_shapes
:?????????H
 
_user_specified_nameinputs
?	
?
/__inference_sequential_21_layer_call_fn_1222990

inputs
unknown:	?
	unknown_0:	@?
	unknown_1:	?
	unknown_2:	@?
	unknown_3:	`?
	unknown_4:	?
	unknown_5:`
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_21_layer_call_and_return_conditional_losses_12224092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????H: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????H
 
_user_specified_nameinputs
?E
?
D__inference_lstm_42_layer_call_and_return_conditional_losses_1220960

inputs'
lstm_cell_42_1220878:	?'
lstm_cell_42_1220880:	@?#
lstm_cell_42_1220882:	?
identity??$lstm_cell_42/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_42/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_42_1220878lstm_cell_42_1220880lstm_cell_42_1220882*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_42_layer_call_and_return_conditional_losses_12208772&
$lstm_cell_42/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_42_1220878lstm_cell_42_1220880lstm_cell_42_1220882*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1220891*
condR
while_cond_1220890*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_42/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_42/StatefulPartitionedCall$lstm_cell_42/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?Z
?
D__inference_lstm_42_layer_call_and_return_conditional_losses_1222798

inputs>
+lstm_cell_42_matmul_readvariableop_resource:	?@
-lstm_cell_42_matmul_1_readvariableop_resource:	@?;
,lstm_cell_42_biasadd_readvariableop_resource:	?
identity??#lstm_cell_42/BiasAdd/ReadVariableOp?"lstm_cell_42/MatMul/ReadVariableOp?$lstm_cell_42/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:H?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_42/MatMul/ReadVariableOp?
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/MatMul?
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$lstm_cell_42/MatMul_1/ReadVariableOp?
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/MatMul_1?
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/add?
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_42/BiasAdd/ReadVariableOp?
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/BiasAdd~
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_42/split/split_dim?
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_42/split?
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid?
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_1?
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul?
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_2?
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul_1?
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/add_1?
lstm_cell_42/Sigmoid_3Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_3?
lstm_cell_42/Sigmoid_4Sigmoidlstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_4?
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_3:y:0lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1222714*
condR
while_cond_1222713*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:H?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????H@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????H@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????H: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????H
 
_user_specified_nameinputs
?&
?
while_body_1221101
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_42_1221125_0:	?/
while_lstm_cell_42_1221127_0:	@?+
while_lstm_cell_42_1221129_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_42_1221125:	?-
while_lstm_cell_42_1221127:	@?)
while_lstm_cell_42_1221129:	???*while/lstm_cell_42/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_42/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_42_1221125_0while_lstm_cell_42_1221127_0while_lstm_cell_42_1221129_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_42_layer_call_and_return_conditional_losses_12210232,
*while/lstm_cell_42/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_42/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_42/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_42/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_42/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_42/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_42/StatefulPartitionedCall:output:1+^while/lstm_cell_42/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_42/StatefulPartitionedCall:output:2+^while/lstm_cell_42/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_42_1221125while_lstm_cell_42_1221125_0":
while_lstm_cell_42_1221127while_lstm_cell_42_1221127_0":
while_lstm_cell_42_1221129while_lstm_cell_42_1221129_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2X
*while/lstm_cell_42/StatefulPartitionedCall*while/lstm_cell_42/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?C
?
while_body_1224840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	@?H
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:	`?C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	@?F
3while_lstm_cell_43_matmul_1_readvariableop_resource:	`?A
2while_lstm_cell_43_biasadd_readvariableop_resource:	???)while/lstm_cell_43/BiasAdd/ReadVariableOp?(while/lstm_cell_43/MatMul/ReadVariableOp?*while/lstm_cell_43/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOp?
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/MatMul?
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	`?*
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOp?
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/MatMul_1?
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/add?
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOp?
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/BiasAdd?
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim?
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
while/lstm_cell_43/split?
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid?
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_1?
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul?
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_2?
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0 while/lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul_1?
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/add_1?
while/lstm_cell_43/Sigmoid_3Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_3?
while/lstm_cell_43/Sigmoid_4Sigmoidwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_4?
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_3:y:0 while/lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????`:?????????`: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
: 
?	
?
%__inference_signature_wrapper_1222969
lstm_42_input
unknown:	?
	unknown_0:	@?
	unknown_1:	?
	unknown_2:	@?
	unknown_3:	`?
	unknown_4:	?
	unknown_5:`
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_42_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_12208022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????H: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????H
'
_user_specified_namelstm_42_input
?E
?
D__inference_lstm_42_layer_call_and_return_conditional_losses_1221170

inputs'
lstm_cell_42_1221088:	?'
lstm_cell_42_1221090:	@?#
lstm_cell_42_1221092:	?
identity??$lstm_cell_42/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_42/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_42_1221088lstm_cell_42_1221090lstm_cell_42_1221092*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_42_layer_call_and_return_conditional_losses_12210232&
$lstm_cell_42/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_42_1221088lstm_cell_42_1221090lstm_cell_42_1221092*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1221101*
condR
while_cond_1221100*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_42/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_42/StatefulPartitionedCall$lstm_cell_42/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_21_layer_call_and_return_conditional_losses_1222390

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????`2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????`2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????`:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?C
?
while_body_1223739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_42_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:	@?C
4while_lstm_cell_42_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_42_matmul_readvariableop_resource:	?F
3while_lstm_cell_42_matmul_1_readvariableop_resource:	@?A
2while_lstm_cell_42_biasadd_readvariableop_resource:	???)while/lstm_cell_42/BiasAdd/ReadVariableOp?(while/lstm_cell_42/MatMul/ReadVariableOp?*while/lstm_cell_42/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_42/MatMul/ReadVariableOp?
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/MatMul?
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02,
*while/lstm_cell_42/MatMul_1/ReadVariableOp?
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/MatMul_1?
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/add?
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_42/BiasAdd/ReadVariableOp?
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/BiasAdd?
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_42/split/split_dim?
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_42/split?
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid?
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_1?
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul?
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_2?
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0 while/lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul_1?
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/add_1?
while/lstm_cell_42/Sigmoid_3Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_3?
while/lstm_cell_42/Sigmoid_4Sigmoidwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_4?
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_3:y:0 while/lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_43_while_cond_1223224,
(lstm_43_while_lstm_43_while_loop_counter2
.lstm_43_while_lstm_43_while_maximum_iterations
lstm_43_while_placeholder
lstm_43_while_placeholder_1
lstm_43_while_placeholder_2
lstm_43_while_placeholder_3.
*lstm_43_while_less_lstm_43_strided_slice_1E
Alstm_43_while_lstm_43_while_cond_1223224___redundant_placeholder0E
Alstm_43_while_lstm_43_while_cond_1223224___redundant_placeholder1E
Alstm_43_while_lstm_43_while_cond_1223224___redundant_placeholder2E
Alstm_43_while_lstm_43_while_cond_1223224___redundant_placeholder3
lstm_43_while_identity
?
lstm_43/while/LessLesslstm_43_while_placeholder*lstm_43_while_less_lstm_43_strided_slice_1*
T0*
_output_shapes
: 2
lstm_43/while/Lessu
lstm_43/while/IdentityIdentitylstm_43/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_43/while/Identity"9
lstm_43_while_identitylstm_43/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????`:?????????`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
:
?[
?
D__inference_lstm_42_layer_call_and_return_conditional_losses_1223974
inputs_0>
+lstm_cell_42_matmul_readvariableop_resource:	?@
-lstm_cell_42_matmul_1_readvariableop_resource:	@?;
,lstm_cell_42_biasadd_readvariableop_resource:	?
identity??#lstm_cell_42/BiasAdd/ReadVariableOp?"lstm_cell_42/MatMul/ReadVariableOp?$lstm_cell_42/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_42/MatMul/ReadVariableOp?
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/MatMul?
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$lstm_cell_42/MatMul_1/ReadVariableOp?
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/MatMul_1?
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/add?
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_42/BiasAdd/ReadVariableOp?
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/BiasAdd~
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_42/split/split_dim?
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_42/split?
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid?
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_1?
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul?
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_2?
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul_1?
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/add_1?
lstm_cell_42/Sigmoid_3Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_3?
lstm_cell_42/Sigmoid_4Sigmoidlstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_4?
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_3:y:0lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1223890*
condR
while_cond_1223889*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
H
,__inference_dropout_21_layer_call_fn_1224929

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_21_layer_call_and_return_conditional_losses_12223902
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????`:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?[
?
D__inference_lstm_43_layer_call_and_return_conditional_losses_1222377

inputs>
+lstm_cell_43_matmul_readvariableop_resource:	@?@
-lstm_cell_43_matmul_1_readvariableop_resource:	`?;
,lstm_cell_43_biasadd_readvariableop_resource:	?
identity??#lstm_cell_43/BiasAdd/ReadVariableOp?"lstm_cell_43/MatMul/ReadVariableOp?$lstm_cell_43/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:H?????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp?
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/MatMul?
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	`?*
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp?
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/MatMul_1?
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/add?
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp?
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dim?
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
lstm_cell_43/split?
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid?
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_1?
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul?
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_2?
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul_1?
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/add_1?
lstm_cell_43/Sigmoid_3Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_3?
lstm_cell_43/Sigmoid_4Sigmoidlstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_4?
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_3:y:0lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????`:?????????`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1222293*
condR
while_cond_1222292*K
output_shapes:
8: : : : :?????????`:?????????`: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:H?????????`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????H`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????H@: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????H@
 
_user_specified_nameinputs
?C
?
while_body_1222293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	@?H
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:	`?C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	@?F
3while_lstm_cell_43_matmul_1_readvariableop_resource:	`?A
2while_lstm_cell_43_biasadd_readvariableop_resource:	???)while/lstm_cell_43/BiasAdd/ReadVariableOp?(while/lstm_cell_43/MatMul/ReadVariableOp?*while/lstm_cell_43/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOp?
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/MatMul?
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	`?*
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOp?
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/MatMul_1?
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/add?
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOp?
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/BiasAdd?
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim?
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
while/lstm_cell_43/split?
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid?
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_1?
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul?
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_2?
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0 while/lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul_1?
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/add_1?
while/lstm_cell_43/Sigmoid_3Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_3?
while/lstm_cell_43/Sigmoid_4Sigmoidwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_4?
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_3:y:0 while/lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????`:?????????`: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
: 
?	
?
E__inference_dense_21_layer_call_and_return_conditional_losses_1224970

inputs0
matmul_readvariableop_resource:`-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:`*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?N
?

lstm_42_while_body_1223383,
(lstm_42_while_lstm_42_while_loop_counter2
.lstm_42_while_lstm_42_while_maximum_iterations
lstm_42_while_placeholder
lstm_42_while_placeholder_1
lstm_42_while_placeholder_2
lstm_42_while_placeholder_3+
'lstm_42_while_lstm_42_strided_slice_1_0g
clstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0:	?P
=lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0:	@?K
<lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0:	?
lstm_42_while_identity
lstm_42_while_identity_1
lstm_42_while_identity_2
lstm_42_while_identity_3
lstm_42_while_identity_4
lstm_42_while_identity_5)
%lstm_42_while_lstm_42_strided_slice_1e
alstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensorL
9lstm_42_while_lstm_cell_42_matmul_readvariableop_resource:	?N
;lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource:	@?I
:lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource:	???1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp?0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp?2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp?
?lstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_42/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensor_0lstm_42_while_placeholderHlstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_42/while/TensorArrayV2Read/TensorListGetItem?
0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp;lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype022
0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp?
!lstm_42/while/lstm_cell_42/MatMulMatMul8lstm_42/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_42/while/lstm_cell_42/MatMul?
2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp=lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype024
2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp?
#lstm_42/while/lstm_cell_42/MatMul_1MatMullstm_42_while_placeholder_2:lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_42/while/lstm_cell_42/MatMul_1?
lstm_42/while/lstm_cell_42/addAddV2+lstm_42/while/lstm_cell_42/MatMul:product:0-lstm_42/while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_42/while/lstm_cell_42/add?
1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp<lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp?
"lstm_42/while/lstm_cell_42/BiasAddBiasAdd"lstm_42/while/lstm_cell_42/add:z:09lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_42/while/lstm_cell_42/BiasAdd?
*lstm_42/while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_42/while/lstm_cell_42/split/split_dim?
 lstm_42/while/lstm_cell_42/splitSplit3lstm_42/while/lstm_cell_42/split/split_dim:output:0+lstm_42/while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2"
 lstm_42/while/lstm_cell_42/split?
"lstm_42/while/lstm_cell_42/SigmoidSigmoid)lstm_42/while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2$
"lstm_42/while/lstm_cell_42/Sigmoid?
$lstm_42/while/lstm_cell_42/Sigmoid_1Sigmoid)lstm_42/while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2&
$lstm_42/while/lstm_cell_42/Sigmoid_1?
lstm_42/while/lstm_cell_42/mulMul(lstm_42/while/lstm_cell_42/Sigmoid_1:y:0lstm_42_while_placeholder_3*
T0*'
_output_shapes
:?????????@2 
lstm_42/while/lstm_cell_42/mul?
$lstm_42/while/lstm_cell_42/Sigmoid_2Sigmoid)lstm_42/while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2&
$lstm_42/while/lstm_cell_42/Sigmoid_2?
 lstm_42/while/lstm_cell_42/mul_1Mul&lstm_42/while/lstm_cell_42/Sigmoid:y:0(lstm_42/while/lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2"
 lstm_42/while/lstm_cell_42/mul_1?
 lstm_42/while/lstm_cell_42/add_1AddV2"lstm_42/while/lstm_cell_42/mul:z:0$lstm_42/while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2"
 lstm_42/while/lstm_cell_42/add_1?
$lstm_42/while/lstm_cell_42/Sigmoid_3Sigmoid)lstm_42/while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2&
$lstm_42/while/lstm_cell_42/Sigmoid_3?
$lstm_42/while/lstm_cell_42/Sigmoid_4Sigmoid$lstm_42/while/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2&
$lstm_42/while/lstm_cell_42/Sigmoid_4?
 lstm_42/while/lstm_cell_42/mul_2Mul(lstm_42/while/lstm_cell_42/Sigmoid_3:y:0(lstm_42/while/lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2"
 lstm_42/while/lstm_cell_42/mul_2?
2lstm_42/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_42_while_placeholder_1lstm_42_while_placeholder$lstm_42/while/lstm_cell_42/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_42/while/TensorArrayV2Write/TensorListSetIteml
lstm_42/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/while/add/y?
lstm_42/while/addAddV2lstm_42_while_placeholderlstm_42/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_42/while/addp
lstm_42/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/while/add_1/y?
lstm_42/while/add_1AddV2(lstm_42_while_lstm_42_while_loop_counterlstm_42/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_42/while/add_1?
lstm_42/while/IdentityIdentitylstm_42/while/add_1:z:02^lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1^lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp3^lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity?
lstm_42/while/Identity_1Identity.lstm_42_while_lstm_42_while_maximum_iterations2^lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1^lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp3^lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity_1?
lstm_42/while/Identity_2Identitylstm_42/while/add:z:02^lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1^lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp3^lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity_2?
lstm_42/while/Identity_3IdentityBlstm_42/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1^lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp3^lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity_3?
lstm_42/while/Identity_4Identity$lstm_42/while/lstm_cell_42/mul_2:z:02^lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1^lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp3^lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm_42/while/Identity_4?
lstm_42/while/Identity_5Identity$lstm_42/while/lstm_cell_42/add_1:z:02^lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1^lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp3^lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm_42/while/Identity_5"9
lstm_42_while_identitylstm_42/while/Identity:output:0"=
lstm_42_while_identity_1!lstm_42/while/Identity_1:output:0"=
lstm_42_while_identity_2!lstm_42/while/Identity_2:output:0"=
lstm_42_while_identity_3!lstm_42/while/Identity_3:output:0"=
lstm_42_while_identity_4!lstm_42/while/Identity_4:output:0"=
lstm_42_while_identity_5!lstm_42/while/Identity_5:output:0"P
%lstm_42_while_lstm_42_strided_slice_1'lstm_42_while_lstm_42_strided_slice_1_0"z
:lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource<lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0"|
;lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource=lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0"x
9lstm_42_while_lstm_cell_42_matmul_readvariableop_resource;lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0"?
alstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensorclstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2f
1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp2d
0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp2h
2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_1222713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1222713___redundant_placeholder05
1while_while_cond_1222713___redundant_placeholder15
1while_while_cond_1222713___redundant_placeholder25
1while_while_cond_1222713___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?N
?

lstm_42_while_body_1223078,
(lstm_42_while_lstm_42_while_loop_counter2
.lstm_42_while_lstm_42_while_maximum_iterations
lstm_42_while_placeholder
lstm_42_while_placeholder_1
lstm_42_while_placeholder_2
lstm_42_while_placeholder_3+
'lstm_42_while_lstm_42_strided_slice_1_0g
clstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0:	?P
=lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0:	@?K
<lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0:	?
lstm_42_while_identity
lstm_42_while_identity_1
lstm_42_while_identity_2
lstm_42_while_identity_3
lstm_42_while_identity_4
lstm_42_while_identity_5)
%lstm_42_while_lstm_42_strided_slice_1e
alstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensorL
9lstm_42_while_lstm_cell_42_matmul_readvariableop_resource:	?N
;lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource:	@?I
:lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource:	???1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp?0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp?2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp?
?lstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_42/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensor_0lstm_42_while_placeholderHlstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_42/while/TensorArrayV2Read/TensorListGetItem?
0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp;lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype022
0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp?
!lstm_42/while/lstm_cell_42/MatMulMatMul8lstm_42/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_42/while/lstm_cell_42/MatMul?
2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp=lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype024
2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp?
#lstm_42/while/lstm_cell_42/MatMul_1MatMullstm_42_while_placeholder_2:lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_42/while/lstm_cell_42/MatMul_1?
lstm_42/while/lstm_cell_42/addAddV2+lstm_42/while/lstm_cell_42/MatMul:product:0-lstm_42/while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_42/while/lstm_cell_42/add?
1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp<lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp?
"lstm_42/while/lstm_cell_42/BiasAddBiasAdd"lstm_42/while/lstm_cell_42/add:z:09lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_42/while/lstm_cell_42/BiasAdd?
*lstm_42/while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_42/while/lstm_cell_42/split/split_dim?
 lstm_42/while/lstm_cell_42/splitSplit3lstm_42/while/lstm_cell_42/split/split_dim:output:0+lstm_42/while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2"
 lstm_42/while/lstm_cell_42/split?
"lstm_42/while/lstm_cell_42/SigmoidSigmoid)lstm_42/while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2$
"lstm_42/while/lstm_cell_42/Sigmoid?
$lstm_42/while/lstm_cell_42/Sigmoid_1Sigmoid)lstm_42/while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2&
$lstm_42/while/lstm_cell_42/Sigmoid_1?
lstm_42/while/lstm_cell_42/mulMul(lstm_42/while/lstm_cell_42/Sigmoid_1:y:0lstm_42_while_placeholder_3*
T0*'
_output_shapes
:?????????@2 
lstm_42/while/lstm_cell_42/mul?
$lstm_42/while/lstm_cell_42/Sigmoid_2Sigmoid)lstm_42/while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2&
$lstm_42/while/lstm_cell_42/Sigmoid_2?
 lstm_42/while/lstm_cell_42/mul_1Mul&lstm_42/while/lstm_cell_42/Sigmoid:y:0(lstm_42/while/lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2"
 lstm_42/while/lstm_cell_42/mul_1?
 lstm_42/while/lstm_cell_42/add_1AddV2"lstm_42/while/lstm_cell_42/mul:z:0$lstm_42/while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2"
 lstm_42/while/lstm_cell_42/add_1?
$lstm_42/while/lstm_cell_42/Sigmoid_3Sigmoid)lstm_42/while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2&
$lstm_42/while/lstm_cell_42/Sigmoid_3?
$lstm_42/while/lstm_cell_42/Sigmoid_4Sigmoid$lstm_42/while/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2&
$lstm_42/while/lstm_cell_42/Sigmoid_4?
 lstm_42/while/lstm_cell_42/mul_2Mul(lstm_42/while/lstm_cell_42/Sigmoid_3:y:0(lstm_42/while/lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2"
 lstm_42/while/lstm_cell_42/mul_2?
2lstm_42/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_42_while_placeholder_1lstm_42_while_placeholder$lstm_42/while/lstm_cell_42/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_42/while/TensorArrayV2Write/TensorListSetIteml
lstm_42/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/while/add/y?
lstm_42/while/addAddV2lstm_42_while_placeholderlstm_42/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_42/while/addp
lstm_42/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/while/add_1/y?
lstm_42/while/add_1AddV2(lstm_42_while_lstm_42_while_loop_counterlstm_42/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_42/while/add_1?
lstm_42/while/IdentityIdentitylstm_42/while/add_1:z:02^lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1^lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp3^lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity?
lstm_42/while/Identity_1Identity.lstm_42_while_lstm_42_while_maximum_iterations2^lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1^lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp3^lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity_1?
lstm_42/while/Identity_2Identitylstm_42/while/add:z:02^lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1^lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp3^lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity_2?
lstm_42/while/Identity_3IdentityBlstm_42/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1^lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp3^lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity_3?
lstm_42/while/Identity_4Identity$lstm_42/while/lstm_cell_42/mul_2:z:02^lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1^lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp3^lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm_42/while/Identity_4?
lstm_42/while/Identity_5Identity$lstm_42/while/lstm_cell_42/add_1:z:02^lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1^lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp3^lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm_42/while/Identity_5"9
lstm_42_while_identitylstm_42/while/Identity:output:0"=
lstm_42_while_identity_1!lstm_42/while/Identity_1:output:0"=
lstm_42_while_identity_2!lstm_42/while/Identity_2:output:0"=
lstm_42_while_identity_3!lstm_42/while/Identity_3:output:0"=
lstm_42_while_identity_4!lstm_42/while/Identity_4:output:0"=
lstm_42_while_identity_5!lstm_42/while/Identity_5:output:0"P
%lstm_42_while_lstm_42_strided_slice_1'lstm_42_while_lstm_42_strided_slice_1_0"z
:lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource<lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0"|
;lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource=lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0"x
9lstm_42_while_lstm_cell_42_matmul_readvariableop_resource;lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0"?
alstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensorclstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2f
1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp2d
0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp2h
2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
I__inference_lstm_cell_42_layer_call_and_return_conditional_losses_1220877

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????@2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????@:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?
?
J__inference_sequential_21_layer_call_and_return_conditional_losses_1222918
lstm_42_input"
lstm_42_1222897:	?"
lstm_42_1222899:	@?
lstm_42_1222901:	?"
lstm_43_1222904:	@?"
lstm_43_1222906:	`?
lstm_43_1222908:	?"
dense_21_1222912:`
dense_21_1222914:
identity?? dense_21/StatefulPartitionedCall?lstm_42/StatefulPartitionedCall?lstm_43/StatefulPartitionedCall?
lstm_42/StatefulPartitionedCallStatefulPartitionedCalllstm_42_inputlstm_42_1222897lstm_42_1222899lstm_42_1222901*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????H@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_42_layer_call_and_return_conditional_losses_12222192!
lstm_42/StatefulPartitionedCall?
lstm_43/StatefulPartitionedCallStatefulPartitionedCall(lstm_42/StatefulPartitionedCall:output:0lstm_43_1222904lstm_43_1222906lstm_43_1222908*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_43_layer_call_and_return_conditional_losses_12223772!
lstm_43/StatefulPartitionedCall?
dropout_21/PartitionedCallPartitionedCall(lstm_43/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_21_layer_call_and_return_conditional_losses_12223902
dropout_21/PartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall#dropout_21/PartitionedCall:output:0dense_21_1222912dense_21_1222914*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_12224022"
 dense_21/StatefulPartitionedCall?
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0!^dense_21/StatefulPartitionedCall ^lstm_42/StatefulPartitionedCall ^lstm_43/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????H: : : : : : : : 2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2B
lstm_42/StatefulPartitionedCalllstm_42/StatefulPartitionedCall2B
lstm_43/StatefulPartitionedCalllstm_43/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????H
'
_user_specified_namelstm_42_input
?

?
lstm_43_while_cond_1223529,
(lstm_43_while_lstm_43_while_loop_counter2
.lstm_43_while_lstm_43_while_maximum_iterations
lstm_43_while_placeholder
lstm_43_while_placeholder_1
lstm_43_while_placeholder_2
lstm_43_while_placeholder_3.
*lstm_43_while_less_lstm_43_strided_slice_1E
Alstm_43_while_lstm_43_while_cond_1223529___redundant_placeholder0E
Alstm_43_while_lstm_43_while_cond_1223529___redundant_placeholder1E
Alstm_43_while_lstm_43_while_cond_1223529___redundant_placeholder2E
Alstm_43_while_lstm_43_while_cond_1223529___redundant_placeholder3
lstm_43_while_identity
?
lstm_43/while/LessLesslstm_43_while_placeholder*lstm_43_while_less_lstm_43_strided_slice_1*
T0*
_output_shapes
: 2
lstm_43/while/Lessu
lstm_43/while/IdentityIdentitylstm_43/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_43/while/Identity"9
lstm_43_while_identitylstm_43/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????`:?????????`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
:
?Z
?
D__inference_lstm_42_layer_call_and_return_conditional_losses_1224125

inputs>
+lstm_cell_42_matmul_readvariableop_resource:	?@
-lstm_cell_42_matmul_1_readvariableop_resource:	@?;
,lstm_cell_42_biasadd_readvariableop_resource:	?
identity??#lstm_cell_42/BiasAdd/ReadVariableOp?"lstm_cell_42/MatMul/ReadVariableOp?$lstm_cell_42/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:H?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_42/MatMul/ReadVariableOp?
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/MatMul?
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$lstm_cell_42/MatMul_1/ReadVariableOp?
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/MatMul_1?
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/add?
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_42/BiasAdd/ReadVariableOp?
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/BiasAdd~
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_42/split/split_dim?
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_42/split?
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid?
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_1?
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul?
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_2?
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul_1?
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/add_1?
lstm_cell_42/Sigmoid_3Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_3?
lstm_cell_42/Sigmoid_4Sigmoidlstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_4?
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_3:y:0lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1224041*
condR
while_cond_1224040*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:H?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????H@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????H@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????H: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????H
 
_user_specified_nameinputs
?	
?
E__inference_dense_21_layer_call_and_return_conditional_losses_1222402

inputs0
matmul_readvariableop_resource:`-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:`*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?
?
while_cond_1224537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1224537___redundant_placeholder05
1while_while_cond_1224537___redundant_placeholder15
1while_while_cond_1224537___redundant_placeholder25
1while_while_cond_1224537___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????`:?????????`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
:
?[
?
D__inference_lstm_42_layer_call_and_return_conditional_losses_1223823
inputs_0>
+lstm_cell_42_matmul_readvariableop_resource:	?@
-lstm_cell_42_matmul_1_readvariableop_resource:	@?;
,lstm_cell_42_biasadd_readvariableop_resource:	?
identity??#lstm_cell_42/BiasAdd/ReadVariableOp?"lstm_cell_42/MatMul/ReadVariableOp?$lstm_cell_42/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_42/MatMul/ReadVariableOp?
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/MatMul?
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$lstm_cell_42/MatMul_1/ReadVariableOp?
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/MatMul_1?
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/add?
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_42/BiasAdd/ReadVariableOp?
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/BiasAdd~
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_42/split/split_dim?
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_42/split?
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid?
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_1?
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul?
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_2?
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul_1?
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/add_1?
lstm_cell_42/Sigmoid_3Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_3?
lstm_cell_42/Sigmoid_4Sigmoidlstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_4?
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_3:y:0lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1223739*
condR
while_cond_1223738*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
)__inference_lstm_42_layer_call_fn_1223661

inputs
unknown:	?
	unknown_0:	@?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????H@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_42_layer_call_and_return_conditional_losses_12222192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????H@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????H: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????H
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_1225134

inputs
states_0
states_11
matmul_readvariableop_resource:	@?3
 matmul_1_readvariableop_resource:	`?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	`?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????`2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????`2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????`2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????`2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????`2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????`2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????`2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????@:?????????`:?????????`: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????`
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????`
"
_user_specified_name
states/1
?[
?
D__inference_lstm_43_layer_call_and_return_conditional_losses_1224773

inputs>
+lstm_cell_43_matmul_readvariableop_resource:	@?@
-lstm_cell_43_matmul_1_readvariableop_resource:	`?;
,lstm_cell_43_biasadd_readvariableop_resource:	?
identity??#lstm_cell_43/BiasAdd/ReadVariableOp?"lstm_cell_43/MatMul/ReadVariableOp?$lstm_cell_43/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:H?????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp?
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/MatMul?
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	`?*
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp?
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/MatMul_1?
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/add?
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp?
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dim?
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
lstm_cell_43/split?
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid?
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_1?
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul?
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_2?
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul_1?
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/add_1?
lstm_cell_43/Sigmoid_3Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_3?
lstm_cell_43/Sigmoid_4Sigmoidlstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/Sigmoid_4?
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_3:y:0lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
lstm_cell_43/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????`:?????????`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1224689*
condR
while_cond_1224688*K
output_shapes:
8: : : : :?????????`:?????????`: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:H?????????`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????H`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????H@: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????H@
 
_user_specified_nameinputs
?C
?
while_body_1224689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	@?H
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:	`?C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	@?F
3while_lstm_cell_43_matmul_1_readvariableop_resource:	`?A
2while_lstm_cell_43_biasadd_readvariableop_resource:	???)while/lstm_cell_43/BiasAdd/ReadVariableOp?(while/lstm_cell_43/MatMul/ReadVariableOp?*while/lstm_cell_43/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOp?
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/MatMul?
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	`?*
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOp?
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/MatMul_1?
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/add?
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOp?
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/BiasAdd?
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim?
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
while/lstm_cell_43/split?
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid?
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_1?
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul?
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_2?
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0 while/lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul_1?
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/add_1?
while/lstm_cell_43/Sigmoid_3Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_3?
while/lstm_cell_43/Sigmoid_4Sigmoidwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_4?
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_3:y:0 while/lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????`:?????????`: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
: 
?C
?
while_body_1224192
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_42_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:	@?C
4while_lstm_cell_42_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_42_matmul_readvariableop_resource:	?F
3while_lstm_cell_42_matmul_1_readvariableop_resource:	@?A
2while_lstm_cell_42_biasadd_readvariableop_resource:	???)while/lstm_cell_42/BiasAdd/ReadVariableOp?(while/lstm_cell_42/MatMul/ReadVariableOp?*while/lstm_cell_42/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_42/MatMul/ReadVariableOp?
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/MatMul?
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02,
*while/lstm_cell_42/MatMul_1/ReadVariableOp?
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/MatMul_1?
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/add?
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_42/BiasAdd/ReadVariableOp?
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/BiasAdd?
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_42/split/split_dim?
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_42/split?
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid?
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_1?
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul?
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_2?
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0 while/lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul_1?
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/add_1?
while/lstm_cell_42/Sigmoid_3Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_3?
while/lstm_cell_42/Sigmoid_4Sigmoidwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_4?
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_3:y:0 while/lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_1224040
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1224040___redundant_placeholder05
1while_while_cond_1224040___redundant_placeholder15
1while_while_cond_1224040___redundant_placeholder25
1while_while_cond_1224040___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?&
?
while_body_1220891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_42_1220915_0:	?/
while_lstm_cell_42_1220917_0:	@?+
while_lstm_cell_42_1220919_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_42_1220915:	?-
while_lstm_cell_42_1220917:	@?)
while_lstm_cell_42_1220919:	???*while/lstm_cell_42/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_42/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_42_1220915_0while_lstm_cell_42_1220917_0while_lstm_cell_42_1220919_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_42_layer_call_and_return_conditional_losses_12208772,
*while/lstm_cell_42/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_42/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_42/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_42/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_42/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_42/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_42/StatefulPartitionedCall:output:1+^while/lstm_cell_42/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_42/StatefulPartitionedCall:output:2+^while/lstm_cell_42/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_42_1220915while_lstm_cell_42_1220915_0":
while_lstm_cell_42_1220917while_lstm_cell_42_1220917_0":
while_lstm_cell_42_1220919while_lstm_cell_42_1220919_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2X
*while/lstm_cell_42/StatefulPartitionedCall*while/lstm_cell_42/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?&
?
while_body_1221521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_43_1221545_0:	@?/
while_lstm_cell_43_1221547_0:	`?+
while_lstm_cell_43_1221549_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_43_1221545:	@?-
while_lstm_cell_43_1221547:	`?)
while_lstm_cell_43_1221549:	???*while/lstm_cell_43/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_43_1221545_0while_lstm_cell_43_1221547_0while_lstm_cell_43_1221549_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????`:?????????`:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_12215072,
*while/lstm_cell_43/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_43/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_43/StatefulPartitionedCall:output:1+^while/lstm_cell_43/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????`2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_43/StatefulPartitionedCall:output:2+^while/lstm_cell_43/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_43_1221545while_lstm_cell_43_1221545_0":
while_lstm_cell_43_1221547while_lstm_cell_43_1221547_0":
while_lstm_cell_43_1221549while_lstm_cell_43_1221549_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????`:?????????`: : : : : 2X
*while/lstm_cell_43/StatefulPartitionedCall*while/lstm_cell_43/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
: 
?>
?
#__inference__traced_restore_1225283
file_prefix2
 assignvariableop_dense_21_kernel:`.
 assignvariableop_1_dense_21_bias:%
assignvariableop_2_sgd_iter:	 &
assignvariableop_3_sgd_decay: .
$assignvariableop_4_sgd_learning_rate: )
assignvariableop_5_sgd_momentum: A
.assignvariableop_6_lstm_42_lstm_cell_42_kernel:	?K
8assignvariableop_7_lstm_42_lstm_cell_42_recurrent_kernel:	@?;
,assignvariableop_8_lstm_42_lstm_cell_42_bias:	?A
.assignvariableop_9_lstm_43_lstm_cell_43_kernel:	@?L
9assignvariableop_10_lstm_43_lstm_cell_43_recurrent_kernel:	`?<
-assignvariableop_11_lstm_43_lstm_cell_43_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: 
identity_15??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_21_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_21_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_sgd_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_sgd_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_sgd_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_momentumIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp.assignvariableop_6_lstm_42_lstm_cell_42_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp8assignvariableop_7_lstm_42_lstm_cell_42_recurrent_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp,assignvariableop_8_lstm_42_lstm_cell_42_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_43_lstm_cell_43_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_43_lstm_cell_43_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_43_lstm_cell_43_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_139
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_14?
Identity_15IdentityIdentity_14:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_15"#
identity_15Identity_15:output:0*1
_input_shapes 
: : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
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
_user_specified_namefile_prefix
?c
?
(sequential_21_lstm_42_while_body_1220561H
Dsequential_21_lstm_42_while_sequential_21_lstm_42_while_loop_counterN
Jsequential_21_lstm_42_while_sequential_21_lstm_42_while_maximum_iterations+
'sequential_21_lstm_42_while_placeholder-
)sequential_21_lstm_42_while_placeholder_1-
)sequential_21_lstm_42_while_placeholder_2-
)sequential_21_lstm_42_while_placeholder_3G
Csequential_21_lstm_42_while_sequential_21_lstm_42_strided_slice_1_0?
sequential_21_lstm_42_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_42_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_21_lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0:	?^
Ksequential_21_lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0:	@?Y
Jsequential_21_lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0:	?(
$sequential_21_lstm_42_while_identity*
&sequential_21_lstm_42_while_identity_1*
&sequential_21_lstm_42_while_identity_2*
&sequential_21_lstm_42_while_identity_3*
&sequential_21_lstm_42_while_identity_4*
&sequential_21_lstm_42_while_identity_5E
Asequential_21_lstm_42_while_sequential_21_lstm_42_strided_slice_1?
}sequential_21_lstm_42_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_42_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_21_lstm_42_while_lstm_cell_42_matmul_readvariableop_resource:	?\
Isequential_21_lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource:	@?W
Hsequential_21_lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource:	????sequential_21/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp?>sequential_21/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp?@sequential_21/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp?
Msequential_21/lstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2O
Msequential_21/lstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shape?
?sequential_21/lstm_42/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_21_lstm_42_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_42_tensorarrayunstack_tensorlistfromtensor_0'sequential_21_lstm_42_while_placeholderVsequential_21/lstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02A
?sequential_21/lstm_42/while/TensorArrayV2Read/TensorListGetItem?
>sequential_21/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOpIsequential_21_lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02@
>sequential_21/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp?
/sequential_21/lstm_42/while/lstm_cell_42/MatMulMatMulFsequential_21/lstm_42/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_21/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/sequential_21/lstm_42/while/lstm_cell_42/MatMul?
@sequential_21/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOpKsequential_21_lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02B
@sequential_21/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp?
1sequential_21/lstm_42/while/lstm_cell_42/MatMul_1MatMul)sequential_21_lstm_42_while_placeholder_2Hsequential_21/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????23
1sequential_21/lstm_42/while/lstm_cell_42/MatMul_1?
,sequential_21/lstm_42/while/lstm_cell_42/addAddV29sequential_21/lstm_42/while/lstm_cell_42/MatMul:product:0;sequential_21/lstm_42/while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2.
,sequential_21/lstm_42/while/lstm_cell_42/add?
?sequential_21/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOpJsequential_21_lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02A
?sequential_21/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp?
0sequential_21/lstm_42/while/lstm_cell_42/BiasAddBiasAdd0sequential_21/lstm_42/while/lstm_cell_42/add:z:0Gsequential_21/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????22
0sequential_21/lstm_42/while/lstm_cell_42/BiasAdd?
8sequential_21/lstm_42/while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_21/lstm_42/while/lstm_cell_42/split/split_dim?
.sequential_21/lstm_42/while/lstm_cell_42/splitSplitAsequential_21/lstm_42/while/lstm_cell_42/split/split_dim:output:09sequential_21/lstm_42/while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split20
.sequential_21/lstm_42/while/lstm_cell_42/split?
0sequential_21/lstm_42/while/lstm_cell_42/SigmoidSigmoid7sequential_21/lstm_42/while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@22
0sequential_21/lstm_42/while/lstm_cell_42/Sigmoid?
2sequential_21/lstm_42/while/lstm_cell_42/Sigmoid_1Sigmoid7sequential_21/lstm_42/while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@24
2sequential_21/lstm_42/while/lstm_cell_42/Sigmoid_1?
,sequential_21/lstm_42/while/lstm_cell_42/mulMul6sequential_21/lstm_42/while/lstm_cell_42/Sigmoid_1:y:0)sequential_21_lstm_42_while_placeholder_3*
T0*'
_output_shapes
:?????????@2.
,sequential_21/lstm_42/while/lstm_cell_42/mul?
2sequential_21/lstm_42/while/lstm_cell_42/Sigmoid_2Sigmoid7sequential_21/lstm_42/while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@24
2sequential_21/lstm_42/while/lstm_cell_42/Sigmoid_2?
.sequential_21/lstm_42/while/lstm_cell_42/mul_1Mul4sequential_21/lstm_42/while/lstm_cell_42/Sigmoid:y:06sequential_21/lstm_42/while/lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@20
.sequential_21/lstm_42/while/lstm_cell_42/mul_1?
.sequential_21/lstm_42/while/lstm_cell_42/add_1AddV20sequential_21/lstm_42/while/lstm_cell_42/mul:z:02sequential_21/lstm_42/while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@20
.sequential_21/lstm_42/while/lstm_cell_42/add_1?
2sequential_21/lstm_42/while/lstm_cell_42/Sigmoid_3Sigmoid7sequential_21/lstm_42/while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@24
2sequential_21/lstm_42/while/lstm_cell_42/Sigmoid_3?
2sequential_21/lstm_42/while/lstm_cell_42/Sigmoid_4Sigmoid2sequential_21/lstm_42/while/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@24
2sequential_21/lstm_42/while/lstm_cell_42/Sigmoid_4?
.sequential_21/lstm_42/while/lstm_cell_42/mul_2Mul6sequential_21/lstm_42/while/lstm_cell_42/Sigmoid_3:y:06sequential_21/lstm_42/while/lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@20
.sequential_21/lstm_42/while/lstm_cell_42/mul_2?
@sequential_21/lstm_42/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_21_lstm_42_while_placeholder_1'sequential_21_lstm_42_while_placeholder2sequential_21/lstm_42/while/lstm_cell_42/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_21/lstm_42/while/TensorArrayV2Write/TensorListSetItem?
!sequential_21/lstm_42/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_21/lstm_42/while/add/y?
sequential_21/lstm_42/while/addAddV2'sequential_21_lstm_42_while_placeholder*sequential_21/lstm_42/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_21/lstm_42/while/add?
#sequential_21/lstm_42/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_21/lstm_42/while/add_1/y?
!sequential_21/lstm_42/while/add_1AddV2Dsequential_21_lstm_42_while_sequential_21_lstm_42_while_loop_counter,sequential_21/lstm_42/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_21/lstm_42/while/add_1?
$sequential_21/lstm_42/while/IdentityIdentity%sequential_21/lstm_42/while/add_1:z:0@^sequential_21/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp?^sequential_21/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOpA^sequential_21/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_21/lstm_42/while/Identity?
&sequential_21/lstm_42/while/Identity_1IdentityJsequential_21_lstm_42_while_sequential_21_lstm_42_while_maximum_iterations@^sequential_21/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp?^sequential_21/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOpA^sequential_21/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_21/lstm_42/while/Identity_1?
&sequential_21/lstm_42/while/Identity_2Identity#sequential_21/lstm_42/while/add:z:0@^sequential_21/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp?^sequential_21/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOpA^sequential_21/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_21/lstm_42/while/Identity_2?
&sequential_21/lstm_42/while/Identity_3IdentityPsequential_21/lstm_42/while/TensorArrayV2Write/TensorListSetItem:output_handle:0@^sequential_21/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp?^sequential_21/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOpA^sequential_21/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_21/lstm_42/while/Identity_3?
&sequential_21/lstm_42/while/Identity_4Identity2sequential_21/lstm_42/while/lstm_cell_42/mul_2:z:0@^sequential_21/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp?^sequential_21/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOpA^sequential_21/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2(
&sequential_21/lstm_42/while/Identity_4?
&sequential_21/lstm_42/while/Identity_5Identity2sequential_21/lstm_42/while/lstm_cell_42/add_1:z:0@^sequential_21/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp?^sequential_21/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOpA^sequential_21/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2(
&sequential_21/lstm_42/while/Identity_5"U
$sequential_21_lstm_42_while_identity-sequential_21/lstm_42/while/Identity:output:0"Y
&sequential_21_lstm_42_while_identity_1/sequential_21/lstm_42/while/Identity_1:output:0"Y
&sequential_21_lstm_42_while_identity_2/sequential_21/lstm_42/while/Identity_2:output:0"Y
&sequential_21_lstm_42_while_identity_3/sequential_21/lstm_42/while/Identity_3:output:0"Y
&sequential_21_lstm_42_while_identity_4/sequential_21/lstm_42/while/Identity_4:output:0"Y
&sequential_21_lstm_42_while_identity_5/sequential_21/lstm_42/while/Identity_5:output:0"?
Hsequential_21_lstm_42_while_lstm_cell_42_biasadd_readvariableop_resourceJsequential_21_lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0"?
Isequential_21_lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resourceKsequential_21_lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0"?
Gsequential_21_lstm_42_while_lstm_cell_42_matmul_readvariableop_resourceIsequential_21_lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0"?
Asequential_21_lstm_42_while_sequential_21_lstm_42_strided_slice_1Csequential_21_lstm_42_while_sequential_21_lstm_42_strided_slice_1_0"?
}sequential_21_lstm_42_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_42_tensorarrayunstack_tensorlistfromtensorsequential_21_lstm_42_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_42_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2?
?sequential_21/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp?sequential_21/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp2?
>sequential_21/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp>sequential_21/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp2?
@sequential_21/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp@sequential_21/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?	
?
/__inference_sequential_21_layer_call_fn_1223011

inputs
unknown:	?
	unknown_0:	@?
	unknown_1:	?
	unknown_2:	@?
	unknown_3:	`?
	unknown_4:	?
	unknown_5:`
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_21_layer_call_and_return_conditional_losses_12228542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????H: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????H
 
_user_specified_nameinputs
?
?
while_cond_1224191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1224191___redundant_placeholder05
1while_while_cond_1224191___redundant_placeholder15
1while_while_cond_1224191___redundant_placeholder25
1while_while_cond_1224191___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?E
?
D__inference_lstm_43_layer_call_and_return_conditional_losses_1221590

inputs'
lstm_cell_43_1221508:	@?'
lstm_cell_43_1221510:	`?#
lstm_cell_43_1221512:	?
identity??$lstm_cell_43/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_43_1221508lstm_cell_43_1221510lstm_cell_43_1221512*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????`:?????????`:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_12215072&
$lstm_cell_43/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_43_1221508lstm_cell_43_1221510lstm_cell_43_1221512*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????`:?????????`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1221521*
condR
while_cond_1221520*K
output_shapes:
8: : : : :?????????`:?????????`: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_43/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2L
$lstm_cell_43/StatefulPartitionedCall$lstm_cell_43/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
)__inference_lstm_43_layer_call_fn_1224320

inputs
unknown:	@?
	unknown_0:	`?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_43_layer_call_and_return_conditional_losses_12226252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????H@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????H@
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_42_layer_call_fn_1224987

inputs
states_0
states_1
unknown:	?
	unknown_0:	@?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_42_layer_call_and_return_conditional_losses_12208772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????@:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?
?
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_1221653

inputs

states
states_11
matmul_readvariableop_resource:	@?3
 matmul_1_readvariableop_resource:	`?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	`?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????`2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????`2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????`2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????`2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????`2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????`2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????`2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????@:?????????`:?????????`: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????`
 
_user_specified_namestates:OK
'
_output_shapes
:?????????`
 
_user_specified_namestates
?
?
while_cond_1220890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1220890___redundant_placeholder05
1while_while_cond_1220890___redundant_placeholder15
1while_while_cond_1220890___redundant_placeholder25
1while_while_cond_1220890___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?C
?
while_body_1224538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	@?H
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:	`?C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	@?F
3while_lstm_cell_43_matmul_1_readvariableop_resource:	`?A
2while_lstm_cell_43_biasadd_readvariableop_resource:	???)while/lstm_cell_43/BiasAdd/ReadVariableOp?(while/lstm_cell_43/MatMul/ReadVariableOp?*while/lstm_cell_43/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOp?
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/MatMul?
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	`?*
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOp?
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/MatMul_1?
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/add?
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOp?
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/BiasAdd?
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim?
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
while/lstm_cell_43/split?
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid?
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_1?
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul?
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_2?
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0 while/lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul_1?
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/add_1?
while/lstm_cell_43/Sigmoid_3Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_3?
while/lstm_cell_43/Sigmoid_4Sigmoidwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_4?
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_3:y:0 while/lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????`:?????????`: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
: 
?E
?
D__inference_lstm_43_layer_call_and_return_conditional_losses_1221800

inputs'
lstm_cell_43_1221718:	@?'
lstm_cell_43_1221720:	`?#
lstm_cell_43_1221722:	?
identity??$lstm_cell_43/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_43_1221718lstm_cell_43_1221720lstm_cell_43_1221722*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????`:?????????`:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_12216532&
$lstm_cell_43/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_43_1221718lstm_cell_43_1221720lstm_cell_43_1221722*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????`:?????????`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1221731*
condR
while_cond_1221730*K
output_shapes:
8: : : : :?????????`:?????????`: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_43/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2L
$lstm_cell_43/StatefulPartitionedCall$lstm_cell_43/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
while_cond_1221730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1221730___redundant_placeholder05
1while_while_cond_1221730___redundant_placeholder15
1while_while_cond_1221730___redundant_placeholder25
1while_while_cond_1221730___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????`:?????????`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
:
?

?
lstm_42_while_cond_1223077,
(lstm_42_while_lstm_42_while_loop_counter2
.lstm_42_while_lstm_42_while_maximum_iterations
lstm_42_while_placeholder
lstm_42_while_placeholder_1
lstm_42_while_placeholder_2
lstm_42_while_placeholder_3.
*lstm_42_while_less_lstm_42_strided_slice_1E
Alstm_42_while_lstm_42_while_cond_1223077___redundant_placeholder0E
Alstm_42_while_lstm_42_while_cond_1223077___redundant_placeholder1E
Alstm_42_while_lstm_42_while_cond_1223077___redundant_placeholder2E
Alstm_42_while_lstm_42_while_cond_1223077___redundant_placeholder3
lstm_42_while_identity
?
lstm_42/while/LessLesslstm_42_while_placeholder*lstm_42_while_less_lstm_42_strided_slice_1*
T0*
_output_shapes
: 2
lstm_42/while/Lessu
lstm_42/while/IdentityIdentitylstm_42/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_42/while/Identity"9
lstm_42_while_identitylstm_42/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?C
?
while_body_1224387
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	@?H
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:	`?C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	@?F
3while_lstm_cell_43_matmul_1_readvariableop_resource:	`?A
2while_lstm_cell_43_biasadd_readvariableop_resource:	???)while/lstm_cell_43/BiasAdd/ReadVariableOp?(while/lstm_cell_43/MatMul/ReadVariableOp?*while/lstm_cell_43/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOp?
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/MatMul?
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	`?*
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOp?
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/MatMul_1?
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/add?
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOp?
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/BiasAdd?
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim?
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
while/lstm_cell_43/split?
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid?
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_1?
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul?
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_2?
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0 while/lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul_1?
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/add_1?
while/lstm_cell_43/Sigmoid_3Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_3?
while/lstm_cell_43/Sigmoid_4Sigmoidwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_4?
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_3:y:0 while/lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????`:?????????`: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_sequential_21_layer_call_and_return_conditional_losses_1222409

inputs"
lstm_42_1222220:	?"
lstm_42_1222222:	@?
lstm_42_1222224:	?"
lstm_43_1222378:	@?"
lstm_43_1222380:	`?
lstm_43_1222382:	?"
dense_21_1222403:`
dense_21_1222405:
identity?? dense_21/StatefulPartitionedCall?lstm_42/StatefulPartitionedCall?lstm_43/StatefulPartitionedCall?
lstm_42/StatefulPartitionedCallStatefulPartitionedCallinputslstm_42_1222220lstm_42_1222222lstm_42_1222224*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????H@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_42_layer_call_and_return_conditional_losses_12222192!
lstm_42/StatefulPartitionedCall?
lstm_43/StatefulPartitionedCallStatefulPartitionedCall(lstm_42/StatefulPartitionedCall:output:0lstm_43_1222378lstm_43_1222380lstm_43_1222382*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_43_layer_call_and_return_conditional_losses_12223772!
lstm_43/StatefulPartitionedCall?
dropout_21/PartitionedCallPartitionedCall(lstm_43/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_21_layer_call_and_return_conditional_losses_12223902
dropout_21/PartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall#dropout_21/PartitionedCall:output:0dense_21_1222403dense_21_1222405*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_12224022"
 dense_21/StatefulPartitionedCall?
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0!^dense_21/StatefulPartitionedCall ^lstm_42/StatefulPartitionedCall ^lstm_43/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????H: : : : : : : : 2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2B
lstm_42/StatefulPartitionedCalllstm_42/StatefulPartitionedCall2B
lstm_43/StatefulPartitionedCalllstm_43/StatefulPartitionedCall:S O
+
_output_shapes
:?????????H
 
_user_specified_nameinputs
?
f
G__inference_dropout_21_layer_call_and_return_conditional_losses_1224951

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????`2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????`*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????`2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????`2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????`2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????`:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?
e
,__inference_dropout_21_layer_call_fn_1224934

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_21_layer_call_and_return_conditional_losses_12224582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????`22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?
?
while_cond_1223738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1223738___redundant_placeholder05
1while_while_cond_1223738___redundant_placeholder15
1while_while_cond_1223738___redundant_placeholder25
1while_while_cond_1223738___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
(sequential_21_lstm_42_while_cond_1220560H
Dsequential_21_lstm_42_while_sequential_21_lstm_42_while_loop_counterN
Jsequential_21_lstm_42_while_sequential_21_lstm_42_while_maximum_iterations+
'sequential_21_lstm_42_while_placeholder-
)sequential_21_lstm_42_while_placeholder_1-
)sequential_21_lstm_42_while_placeholder_2-
)sequential_21_lstm_42_while_placeholder_3J
Fsequential_21_lstm_42_while_less_sequential_21_lstm_42_strided_slice_1a
]sequential_21_lstm_42_while_sequential_21_lstm_42_while_cond_1220560___redundant_placeholder0a
]sequential_21_lstm_42_while_sequential_21_lstm_42_while_cond_1220560___redundant_placeholder1a
]sequential_21_lstm_42_while_sequential_21_lstm_42_while_cond_1220560___redundant_placeholder2a
]sequential_21_lstm_42_while_sequential_21_lstm_42_while_cond_1220560___redundant_placeholder3(
$sequential_21_lstm_42_while_identity
?
 sequential_21/lstm_42/while/LessLess'sequential_21_lstm_42_while_placeholderFsequential_21_lstm_42_while_less_sequential_21_lstm_42_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_21/lstm_42/while/Less?
$sequential_21/lstm_42/while/IdentityIdentity$sequential_21/lstm_42/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_21/lstm_42/while/Identity"U
$sequential_21_lstm_42_while_identity-sequential_21/lstm_42/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_1221100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1221100___redundant_placeholder05
1while_while_cond_1221100___redundant_placeholder15
1while_while_cond_1221100___redundant_placeholder25
1while_while_cond_1221100___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?C
?
while_body_1222541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	@?H
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:	`?C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	@?F
3while_lstm_cell_43_matmul_1_readvariableop_resource:	`?A
2while_lstm_cell_43_biasadd_readvariableop_resource:	???)while/lstm_cell_43/BiasAdd/ReadVariableOp?(while/lstm_cell_43/MatMul/ReadVariableOp?*while/lstm_cell_43/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOp?
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/MatMul?
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes
:	`?*
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOp?
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/MatMul_1?
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/add?
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOp?
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_43/BiasAdd?
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim?
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2
while/lstm_cell_43/split?
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid?
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_1?
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul?
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_2?
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0 while/lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul_1?
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/add_1?
while/lstm_cell_43/Sigmoid_3Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_3?
while/lstm_cell_43/Sigmoid_4Sigmoidwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/Sigmoid_4?
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_3:y:0 while/lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2
while/lstm_cell_43/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????`:?????????`: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_lstm_43_layer_call_fn_1224287
inputs_0
unknown:	@?
	unknown_0:	`?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_43_layer_call_and_return_conditional_losses_12215902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?
?
.__inference_lstm_cell_42_layer_call_fn_1225004

inputs
states_0
states_1
unknown:	?
	unknown_0:	@?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_42_layer_call_and_return_conditional_losses_12210232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????@:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
ے
?	
"__inference__wrapped_model_1220802
lstm_42_inputT
Asequential_21_lstm_42_lstm_cell_42_matmul_readvariableop_resource:	?V
Csequential_21_lstm_42_lstm_cell_42_matmul_1_readvariableop_resource:	@?Q
Bsequential_21_lstm_42_lstm_cell_42_biasadd_readvariableop_resource:	?T
Asequential_21_lstm_43_lstm_cell_43_matmul_readvariableop_resource:	@?V
Csequential_21_lstm_43_lstm_cell_43_matmul_1_readvariableop_resource:	`?Q
Bsequential_21_lstm_43_lstm_cell_43_biasadd_readvariableop_resource:	?G
5sequential_21_dense_21_matmul_readvariableop_resource:`D
6sequential_21_dense_21_biasadd_readvariableop_resource:
identity??-sequential_21/dense_21/BiasAdd/ReadVariableOp?,sequential_21/dense_21/MatMul/ReadVariableOp?9sequential_21/lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp?8sequential_21/lstm_42/lstm_cell_42/MatMul/ReadVariableOp?:sequential_21/lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp?sequential_21/lstm_42/while?9sequential_21/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp?8sequential_21/lstm_43/lstm_cell_43/MatMul/ReadVariableOp?:sequential_21/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp?sequential_21/lstm_43/whilew
sequential_21/lstm_42/ShapeShapelstm_42_input*
T0*
_output_shapes
:2
sequential_21/lstm_42/Shape?
)sequential_21/lstm_42/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_21/lstm_42/strided_slice/stack?
+sequential_21/lstm_42/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_21/lstm_42/strided_slice/stack_1?
+sequential_21/lstm_42/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_21/lstm_42/strided_slice/stack_2?
#sequential_21/lstm_42/strided_sliceStridedSlice$sequential_21/lstm_42/Shape:output:02sequential_21/lstm_42/strided_slice/stack:output:04sequential_21/lstm_42/strided_slice/stack_1:output:04sequential_21/lstm_42/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_21/lstm_42/strided_slice?
!sequential_21/lstm_42/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2#
!sequential_21/lstm_42/zeros/mul/y?
sequential_21/lstm_42/zeros/mulMul,sequential_21/lstm_42/strided_slice:output:0*sequential_21/lstm_42/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_21/lstm_42/zeros/mul?
"sequential_21/lstm_42/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_21/lstm_42/zeros/Less/y?
 sequential_21/lstm_42/zeros/LessLess#sequential_21/lstm_42/zeros/mul:z:0+sequential_21/lstm_42/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_21/lstm_42/zeros/Less?
$sequential_21/lstm_42/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$sequential_21/lstm_42/zeros/packed/1?
"sequential_21/lstm_42/zeros/packedPack,sequential_21/lstm_42/strided_slice:output:0-sequential_21/lstm_42/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_21/lstm_42/zeros/packed?
!sequential_21/lstm_42/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_21/lstm_42/zeros/Const?
sequential_21/lstm_42/zerosFill+sequential_21/lstm_42/zeros/packed:output:0*sequential_21/lstm_42/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
sequential_21/lstm_42/zeros?
#sequential_21/lstm_42/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2%
#sequential_21/lstm_42/zeros_1/mul/y?
!sequential_21/lstm_42/zeros_1/mulMul,sequential_21/lstm_42/strided_slice:output:0,sequential_21/lstm_42/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_21/lstm_42/zeros_1/mul?
$sequential_21/lstm_42/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_21/lstm_42/zeros_1/Less/y?
"sequential_21/lstm_42/zeros_1/LessLess%sequential_21/lstm_42/zeros_1/mul:z:0-sequential_21/lstm_42/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_21/lstm_42/zeros_1/Less?
&sequential_21/lstm_42/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2(
&sequential_21/lstm_42/zeros_1/packed/1?
$sequential_21/lstm_42/zeros_1/packedPack,sequential_21/lstm_42/strided_slice:output:0/sequential_21/lstm_42/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_21/lstm_42/zeros_1/packed?
#sequential_21/lstm_42/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_21/lstm_42/zeros_1/Const?
sequential_21/lstm_42/zeros_1Fill-sequential_21/lstm_42/zeros_1/packed:output:0,sequential_21/lstm_42/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
sequential_21/lstm_42/zeros_1?
$sequential_21/lstm_42/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_21/lstm_42/transpose/perm?
sequential_21/lstm_42/transpose	Transposelstm_42_input-sequential_21/lstm_42/transpose/perm:output:0*
T0*+
_output_shapes
:H?????????2!
sequential_21/lstm_42/transpose?
sequential_21/lstm_42/Shape_1Shape#sequential_21/lstm_42/transpose:y:0*
T0*
_output_shapes
:2
sequential_21/lstm_42/Shape_1?
+sequential_21/lstm_42/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_21/lstm_42/strided_slice_1/stack?
-sequential_21/lstm_42/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_21/lstm_42/strided_slice_1/stack_1?
-sequential_21/lstm_42/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_21/lstm_42/strided_slice_1/stack_2?
%sequential_21/lstm_42/strided_slice_1StridedSlice&sequential_21/lstm_42/Shape_1:output:04sequential_21/lstm_42/strided_slice_1/stack:output:06sequential_21/lstm_42/strided_slice_1/stack_1:output:06sequential_21/lstm_42/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_21/lstm_42/strided_slice_1?
1sequential_21/lstm_42/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1sequential_21/lstm_42/TensorArrayV2/element_shape?
#sequential_21/lstm_42/TensorArrayV2TensorListReserve:sequential_21/lstm_42/TensorArrayV2/element_shape:output:0.sequential_21/lstm_42/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_21/lstm_42/TensorArrayV2?
Ksequential_21/lstm_42/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_21/lstm_42/TensorArrayUnstack/TensorListFromTensor/element_shape?
=sequential_21/lstm_42/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_21/lstm_42/transpose:y:0Tsequential_21/lstm_42/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_21/lstm_42/TensorArrayUnstack/TensorListFromTensor?
+sequential_21/lstm_42/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_21/lstm_42/strided_slice_2/stack?
-sequential_21/lstm_42/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_21/lstm_42/strided_slice_2/stack_1?
-sequential_21/lstm_42/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_21/lstm_42/strided_slice_2/stack_2?
%sequential_21/lstm_42/strided_slice_2StridedSlice#sequential_21/lstm_42/transpose:y:04sequential_21/lstm_42/strided_slice_2/stack:output:06sequential_21/lstm_42/strided_slice_2/stack_1:output:06sequential_21/lstm_42/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2'
%sequential_21/lstm_42/strided_slice_2?
8sequential_21/lstm_42/lstm_cell_42/MatMul/ReadVariableOpReadVariableOpAsequential_21_lstm_42_lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02:
8sequential_21/lstm_42/lstm_cell_42/MatMul/ReadVariableOp?
)sequential_21/lstm_42/lstm_cell_42/MatMulMatMul.sequential_21/lstm_42/strided_slice_2:output:0@sequential_21/lstm_42/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential_21/lstm_42/lstm_cell_42/MatMul?
:sequential_21/lstm_42/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOpCsequential_21_lstm_42_lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02<
:sequential_21/lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp?
+sequential_21/lstm_42/lstm_cell_42/MatMul_1MatMul$sequential_21/lstm_42/zeros:output:0Bsequential_21/lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+sequential_21/lstm_42/lstm_cell_42/MatMul_1?
&sequential_21/lstm_42/lstm_cell_42/addAddV23sequential_21/lstm_42/lstm_cell_42/MatMul:product:05sequential_21/lstm_42/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2(
&sequential_21/lstm_42/lstm_cell_42/add?
9sequential_21/lstm_42/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOpBsequential_21_lstm_42_lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential_21/lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp?
*sequential_21/lstm_42/lstm_cell_42/BiasAddBiasAdd*sequential_21/lstm_42/lstm_cell_42/add:z:0Asequential_21/lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*sequential_21/lstm_42/lstm_cell_42/BiasAdd?
2sequential_21/lstm_42/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_21/lstm_42/lstm_cell_42/split/split_dim?
(sequential_21/lstm_42/lstm_cell_42/splitSplit;sequential_21/lstm_42/lstm_cell_42/split/split_dim:output:03sequential_21/lstm_42/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2*
(sequential_21/lstm_42/lstm_cell_42/split?
*sequential_21/lstm_42/lstm_cell_42/SigmoidSigmoid1sequential_21/lstm_42/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2,
*sequential_21/lstm_42/lstm_cell_42/Sigmoid?
,sequential_21/lstm_42/lstm_cell_42/Sigmoid_1Sigmoid1sequential_21/lstm_42/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2.
,sequential_21/lstm_42/lstm_cell_42/Sigmoid_1?
&sequential_21/lstm_42/lstm_cell_42/mulMul0sequential_21/lstm_42/lstm_cell_42/Sigmoid_1:y:0&sequential_21/lstm_42/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2(
&sequential_21/lstm_42/lstm_cell_42/mul?
,sequential_21/lstm_42/lstm_cell_42/Sigmoid_2Sigmoid1sequential_21/lstm_42/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2.
,sequential_21/lstm_42/lstm_cell_42/Sigmoid_2?
(sequential_21/lstm_42/lstm_cell_42/mul_1Mul.sequential_21/lstm_42/lstm_cell_42/Sigmoid:y:00sequential_21/lstm_42/lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2*
(sequential_21/lstm_42/lstm_cell_42/mul_1?
(sequential_21/lstm_42/lstm_cell_42/add_1AddV2*sequential_21/lstm_42/lstm_cell_42/mul:z:0,sequential_21/lstm_42/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2*
(sequential_21/lstm_42/lstm_cell_42/add_1?
,sequential_21/lstm_42/lstm_cell_42/Sigmoid_3Sigmoid1sequential_21/lstm_42/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2.
,sequential_21/lstm_42/lstm_cell_42/Sigmoid_3?
,sequential_21/lstm_42/lstm_cell_42/Sigmoid_4Sigmoid,sequential_21/lstm_42/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2.
,sequential_21/lstm_42/lstm_cell_42/Sigmoid_4?
(sequential_21/lstm_42/lstm_cell_42/mul_2Mul0sequential_21/lstm_42/lstm_cell_42/Sigmoid_3:y:00sequential_21/lstm_42/lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2*
(sequential_21/lstm_42/lstm_cell_42/mul_2?
3sequential_21/lstm_42/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   25
3sequential_21/lstm_42/TensorArrayV2_1/element_shape?
%sequential_21/lstm_42/TensorArrayV2_1TensorListReserve<sequential_21/lstm_42/TensorArrayV2_1/element_shape:output:0.sequential_21/lstm_42/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_21/lstm_42/TensorArrayV2_1z
sequential_21/lstm_42/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_21/lstm_42/time?
.sequential_21/lstm_42/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.sequential_21/lstm_42/while/maximum_iterations?
(sequential_21/lstm_42/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_21/lstm_42/while/loop_counter?
sequential_21/lstm_42/whileWhile1sequential_21/lstm_42/while/loop_counter:output:07sequential_21/lstm_42/while/maximum_iterations:output:0#sequential_21/lstm_42/time:output:0.sequential_21/lstm_42/TensorArrayV2_1:handle:0$sequential_21/lstm_42/zeros:output:0&sequential_21/lstm_42/zeros_1:output:0.sequential_21/lstm_42/strided_slice_1:output:0Msequential_21/lstm_42/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_21_lstm_42_lstm_cell_42_matmul_readvariableop_resourceCsequential_21_lstm_42_lstm_cell_42_matmul_1_readvariableop_resourceBsequential_21_lstm_42_lstm_cell_42_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*4
body,R*
(sequential_21_lstm_42_while_body_1220561*4
cond,R*
(sequential_21_lstm_42_while_cond_1220560*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
sequential_21/lstm_42/while?
Fsequential_21/lstm_42/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2H
Fsequential_21/lstm_42/TensorArrayV2Stack/TensorListStack/element_shape?
8sequential_21/lstm_42/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_21/lstm_42/while:output:3Osequential_21/lstm_42/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:H?????????@*
element_dtype02:
8sequential_21/lstm_42/TensorArrayV2Stack/TensorListStack?
+sequential_21/lstm_42/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2-
+sequential_21/lstm_42/strided_slice_3/stack?
-sequential_21/lstm_42/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_21/lstm_42/strided_slice_3/stack_1?
-sequential_21/lstm_42/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_21/lstm_42/strided_slice_3/stack_2?
%sequential_21/lstm_42/strided_slice_3StridedSliceAsequential_21/lstm_42/TensorArrayV2Stack/TensorListStack:tensor:04sequential_21/lstm_42/strided_slice_3/stack:output:06sequential_21/lstm_42/strided_slice_3/stack_1:output:06sequential_21/lstm_42/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2'
%sequential_21/lstm_42/strided_slice_3?
&sequential_21/lstm_42/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_21/lstm_42/transpose_1/perm?
!sequential_21/lstm_42/transpose_1	TransposeAsequential_21/lstm_42/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_21/lstm_42/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????H@2#
!sequential_21/lstm_42/transpose_1?
sequential_21/lstm_42/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_21/lstm_42/runtime?
sequential_21/lstm_43/ShapeShape%sequential_21/lstm_42/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_21/lstm_43/Shape?
)sequential_21/lstm_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_21/lstm_43/strided_slice/stack?
+sequential_21/lstm_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_21/lstm_43/strided_slice/stack_1?
+sequential_21/lstm_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_21/lstm_43/strided_slice/stack_2?
#sequential_21/lstm_43/strided_sliceStridedSlice$sequential_21/lstm_43/Shape:output:02sequential_21/lstm_43/strided_slice/stack:output:04sequential_21/lstm_43/strided_slice/stack_1:output:04sequential_21/lstm_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_21/lstm_43/strided_slice?
!sequential_21/lstm_43/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2#
!sequential_21/lstm_43/zeros/mul/y?
sequential_21/lstm_43/zeros/mulMul,sequential_21/lstm_43/strided_slice:output:0*sequential_21/lstm_43/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_21/lstm_43/zeros/mul?
"sequential_21/lstm_43/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_21/lstm_43/zeros/Less/y?
 sequential_21/lstm_43/zeros/LessLess#sequential_21/lstm_43/zeros/mul:z:0+sequential_21/lstm_43/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_21/lstm_43/zeros/Less?
$sequential_21/lstm_43/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2&
$sequential_21/lstm_43/zeros/packed/1?
"sequential_21/lstm_43/zeros/packedPack,sequential_21/lstm_43/strided_slice:output:0-sequential_21/lstm_43/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_21/lstm_43/zeros/packed?
!sequential_21/lstm_43/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_21/lstm_43/zeros/Const?
sequential_21/lstm_43/zerosFill+sequential_21/lstm_43/zeros/packed:output:0*sequential_21/lstm_43/zeros/Const:output:0*
T0*'
_output_shapes
:?????????`2
sequential_21/lstm_43/zeros?
#sequential_21/lstm_43/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2%
#sequential_21/lstm_43/zeros_1/mul/y?
!sequential_21/lstm_43/zeros_1/mulMul,sequential_21/lstm_43/strided_slice:output:0,sequential_21/lstm_43/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_21/lstm_43/zeros_1/mul?
$sequential_21/lstm_43/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_21/lstm_43/zeros_1/Less/y?
"sequential_21/lstm_43/zeros_1/LessLess%sequential_21/lstm_43/zeros_1/mul:z:0-sequential_21/lstm_43/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_21/lstm_43/zeros_1/Less?
&sequential_21/lstm_43/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2(
&sequential_21/lstm_43/zeros_1/packed/1?
$sequential_21/lstm_43/zeros_1/packedPack,sequential_21/lstm_43/strided_slice:output:0/sequential_21/lstm_43/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_21/lstm_43/zeros_1/packed?
#sequential_21/lstm_43/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_21/lstm_43/zeros_1/Const?
sequential_21/lstm_43/zeros_1Fill-sequential_21/lstm_43/zeros_1/packed:output:0,sequential_21/lstm_43/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????`2
sequential_21/lstm_43/zeros_1?
$sequential_21/lstm_43/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_21/lstm_43/transpose/perm?
sequential_21/lstm_43/transpose	Transpose%sequential_21/lstm_42/transpose_1:y:0-sequential_21/lstm_43/transpose/perm:output:0*
T0*+
_output_shapes
:H?????????@2!
sequential_21/lstm_43/transpose?
sequential_21/lstm_43/Shape_1Shape#sequential_21/lstm_43/transpose:y:0*
T0*
_output_shapes
:2
sequential_21/lstm_43/Shape_1?
+sequential_21/lstm_43/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_21/lstm_43/strided_slice_1/stack?
-sequential_21/lstm_43/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_21/lstm_43/strided_slice_1/stack_1?
-sequential_21/lstm_43/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_21/lstm_43/strided_slice_1/stack_2?
%sequential_21/lstm_43/strided_slice_1StridedSlice&sequential_21/lstm_43/Shape_1:output:04sequential_21/lstm_43/strided_slice_1/stack:output:06sequential_21/lstm_43/strided_slice_1/stack_1:output:06sequential_21/lstm_43/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_21/lstm_43/strided_slice_1?
1sequential_21/lstm_43/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1sequential_21/lstm_43/TensorArrayV2/element_shape?
#sequential_21/lstm_43/TensorArrayV2TensorListReserve:sequential_21/lstm_43/TensorArrayV2/element_shape:output:0.sequential_21/lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_21/lstm_43/TensorArrayV2?
Ksequential_21/lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2M
Ksequential_21/lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape?
=sequential_21/lstm_43/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_21/lstm_43/transpose:y:0Tsequential_21/lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_21/lstm_43/TensorArrayUnstack/TensorListFromTensor?
+sequential_21/lstm_43/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_21/lstm_43/strided_slice_2/stack?
-sequential_21/lstm_43/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_21/lstm_43/strided_slice_2/stack_1?
-sequential_21/lstm_43/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_21/lstm_43/strided_slice_2/stack_2?
%sequential_21/lstm_43/strided_slice_2StridedSlice#sequential_21/lstm_43/transpose:y:04sequential_21/lstm_43/strided_slice_2/stack:output:06sequential_21/lstm_43/strided_slice_2/stack_1:output:06sequential_21/lstm_43/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2'
%sequential_21/lstm_43/strided_slice_2?
8sequential_21/lstm_43/lstm_cell_43/MatMul/ReadVariableOpReadVariableOpAsequential_21_lstm_43_lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02:
8sequential_21/lstm_43/lstm_cell_43/MatMul/ReadVariableOp?
)sequential_21/lstm_43/lstm_cell_43/MatMulMatMul.sequential_21/lstm_43/strided_slice_2:output:0@sequential_21/lstm_43/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential_21/lstm_43/lstm_cell_43/MatMul?
:sequential_21/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOpCsequential_21_lstm_43_lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes
:	`?*
dtype02<
:sequential_21/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp?
+sequential_21/lstm_43/lstm_cell_43/MatMul_1MatMul$sequential_21/lstm_43/zeros:output:0Bsequential_21/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+sequential_21/lstm_43/lstm_cell_43/MatMul_1?
&sequential_21/lstm_43/lstm_cell_43/addAddV23sequential_21/lstm_43/lstm_cell_43/MatMul:product:05sequential_21/lstm_43/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2(
&sequential_21/lstm_43/lstm_cell_43/add?
9sequential_21/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOpBsequential_21_lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential_21/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp?
*sequential_21/lstm_43/lstm_cell_43/BiasAddBiasAdd*sequential_21/lstm_43/lstm_cell_43/add:z:0Asequential_21/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*sequential_21/lstm_43/lstm_cell_43/BiasAdd?
2sequential_21/lstm_43/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_21/lstm_43/lstm_cell_43/split/split_dim?
(sequential_21/lstm_43/lstm_cell_43/splitSplit;sequential_21/lstm_43/lstm_cell_43/split/split_dim:output:03sequential_21/lstm_43/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????`:?????????`:?????????`:?????????`*
	num_split2*
(sequential_21/lstm_43/lstm_cell_43/split?
*sequential_21/lstm_43/lstm_cell_43/SigmoidSigmoid1sequential_21/lstm_43/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:?????????`2,
*sequential_21/lstm_43/lstm_cell_43/Sigmoid?
,sequential_21/lstm_43/lstm_cell_43/Sigmoid_1Sigmoid1sequential_21/lstm_43/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:?????????`2.
,sequential_21/lstm_43/lstm_cell_43/Sigmoid_1?
&sequential_21/lstm_43/lstm_cell_43/mulMul0sequential_21/lstm_43/lstm_cell_43/Sigmoid_1:y:0&sequential_21/lstm_43/zeros_1:output:0*
T0*'
_output_shapes
:?????????`2(
&sequential_21/lstm_43/lstm_cell_43/mul?
,sequential_21/lstm_43/lstm_cell_43/Sigmoid_2Sigmoid1sequential_21/lstm_43/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:?????????`2.
,sequential_21/lstm_43/lstm_cell_43/Sigmoid_2?
(sequential_21/lstm_43/lstm_cell_43/mul_1Mul.sequential_21/lstm_43/lstm_cell_43/Sigmoid:y:00sequential_21/lstm_43/lstm_cell_43/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????`2*
(sequential_21/lstm_43/lstm_cell_43/mul_1?
(sequential_21/lstm_43/lstm_cell_43/add_1AddV2*sequential_21/lstm_43/lstm_cell_43/mul:z:0,sequential_21/lstm_43/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:?????????`2*
(sequential_21/lstm_43/lstm_cell_43/add_1?
,sequential_21/lstm_43/lstm_cell_43/Sigmoid_3Sigmoid1sequential_21/lstm_43/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:?????????`2.
,sequential_21/lstm_43/lstm_cell_43/Sigmoid_3?
,sequential_21/lstm_43/lstm_cell_43/Sigmoid_4Sigmoid,sequential_21/lstm_43/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:?????????`2.
,sequential_21/lstm_43/lstm_cell_43/Sigmoid_4?
(sequential_21/lstm_43/lstm_cell_43/mul_2Mul0sequential_21/lstm_43/lstm_cell_43/Sigmoid_3:y:00sequential_21/lstm_43/lstm_cell_43/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????`2*
(sequential_21/lstm_43/lstm_cell_43/mul_2?
3sequential_21/lstm_43/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   25
3sequential_21/lstm_43/TensorArrayV2_1/element_shape?
%sequential_21/lstm_43/TensorArrayV2_1TensorListReserve<sequential_21/lstm_43/TensorArrayV2_1/element_shape:output:0.sequential_21/lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_21/lstm_43/TensorArrayV2_1z
sequential_21/lstm_43/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_21/lstm_43/time?
.sequential_21/lstm_43/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.sequential_21/lstm_43/while/maximum_iterations?
(sequential_21/lstm_43/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_21/lstm_43/while/loop_counter?
sequential_21/lstm_43/whileWhile1sequential_21/lstm_43/while/loop_counter:output:07sequential_21/lstm_43/while/maximum_iterations:output:0#sequential_21/lstm_43/time:output:0.sequential_21/lstm_43/TensorArrayV2_1:handle:0$sequential_21/lstm_43/zeros:output:0&sequential_21/lstm_43/zeros_1:output:0.sequential_21/lstm_43/strided_slice_1:output:0Msequential_21/lstm_43/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_21_lstm_43_lstm_cell_43_matmul_readvariableop_resourceCsequential_21_lstm_43_lstm_cell_43_matmul_1_readvariableop_resourceBsequential_21_lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????`:?????????`: : : : : *%
_read_only_resource_inputs
	
*4
body,R*
(sequential_21_lstm_43_while_body_1220711*4
cond,R*
(sequential_21_lstm_43_while_cond_1220710*K
output_shapes:
8: : : : :?????????`:?????????`: : : : : *
parallel_iterations 2
sequential_21/lstm_43/while?
Fsequential_21/lstm_43/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????`   2H
Fsequential_21/lstm_43/TensorArrayV2Stack/TensorListStack/element_shape?
8sequential_21/lstm_43/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_21/lstm_43/while:output:3Osequential_21/lstm_43/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:H?????????`*
element_dtype02:
8sequential_21/lstm_43/TensorArrayV2Stack/TensorListStack?
+sequential_21/lstm_43/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2-
+sequential_21/lstm_43/strided_slice_3/stack?
-sequential_21/lstm_43/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_21/lstm_43/strided_slice_3/stack_1?
-sequential_21/lstm_43/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_21/lstm_43/strided_slice_3/stack_2?
%sequential_21/lstm_43/strided_slice_3StridedSliceAsequential_21/lstm_43/TensorArrayV2Stack/TensorListStack:tensor:04sequential_21/lstm_43/strided_slice_3/stack:output:06sequential_21/lstm_43/strided_slice_3/stack_1:output:06sequential_21/lstm_43/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????`*
shrink_axis_mask2'
%sequential_21/lstm_43/strided_slice_3?
&sequential_21/lstm_43/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_21/lstm_43/transpose_1/perm?
!sequential_21/lstm_43/transpose_1	TransposeAsequential_21/lstm_43/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_21/lstm_43/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????H`2#
!sequential_21/lstm_43/transpose_1?
sequential_21/lstm_43/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_21/lstm_43/runtime?
!sequential_21/dropout_21/IdentityIdentity.sequential_21/lstm_43/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????`2#
!sequential_21/dropout_21/Identity?
,sequential_21/dense_21/MatMul/ReadVariableOpReadVariableOp5sequential_21_dense_21_matmul_readvariableop_resource*
_output_shapes

:`*
dtype02.
,sequential_21/dense_21/MatMul/ReadVariableOp?
sequential_21/dense_21/MatMulMatMul*sequential_21/dropout_21/Identity:output:04sequential_21/dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_21/dense_21/MatMul?
-sequential_21/dense_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_21_dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_21/dense_21/BiasAdd/ReadVariableOp?
sequential_21/dense_21/BiasAddBiasAdd'sequential_21/dense_21/MatMul:product:05sequential_21/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_21/dense_21/BiasAdd?
IdentityIdentity'sequential_21/dense_21/BiasAdd:output:0.^sequential_21/dense_21/BiasAdd/ReadVariableOp-^sequential_21/dense_21/MatMul/ReadVariableOp:^sequential_21/lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp9^sequential_21/lstm_42/lstm_cell_42/MatMul/ReadVariableOp;^sequential_21/lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp^sequential_21/lstm_42/while:^sequential_21/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp9^sequential_21/lstm_43/lstm_cell_43/MatMul/ReadVariableOp;^sequential_21/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp^sequential_21/lstm_43/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????H: : : : : : : : 2^
-sequential_21/dense_21/BiasAdd/ReadVariableOp-sequential_21/dense_21/BiasAdd/ReadVariableOp2\
,sequential_21/dense_21/MatMul/ReadVariableOp,sequential_21/dense_21/MatMul/ReadVariableOp2v
9sequential_21/lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp9sequential_21/lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp2t
8sequential_21/lstm_42/lstm_cell_42/MatMul/ReadVariableOp8sequential_21/lstm_42/lstm_cell_42/MatMul/ReadVariableOp2x
:sequential_21/lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp:sequential_21/lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp2:
sequential_21/lstm_42/whilesequential_21/lstm_42/while2v
9sequential_21/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp9sequential_21/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp2t
8sequential_21/lstm_43/lstm_cell_43/MatMul/ReadVariableOp8sequential_21/lstm_43/lstm_cell_43/MatMul/ReadVariableOp2x
:sequential_21/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp:sequential_21/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp2:
sequential_21/lstm_43/whilesequential_21/lstm_43/while:Z V
+
_output_shapes
:?????????H
'
_user_specified_namelstm_42_input
?
f
G__inference_dropout_21_layer_call_and_return_conditional_losses_1222458

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????`2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????`*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????`2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????`2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????`2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????`:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?&
?
while_body_1221731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_43_1221755_0:	@?/
while_lstm_cell_43_1221757_0:	`?+
while_lstm_cell_43_1221759_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_43_1221755:	@?-
while_lstm_cell_43_1221757:	`?)
while_lstm_cell_43_1221759:	???*while/lstm_cell_43/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_43_1221755_0while_lstm_cell_43_1221757_0while_lstm_cell_43_1221759_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????`:?????????`:?????????`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_12216532,
*while/lstm_cell_43/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_43/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_43/StatefulPartitionedCall:output:1+^while/lstm_cell_43/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????`2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_43/StatefulPartitionedCall:output:2+^while/lstm_cell_43/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_43_1221755while_lstm_cell_43_1221755_0":
while_lstm_cell_43_1221757while_lstm_cell_43_1221757_0":
while_lstm_cell_43_1221759while_lstm_cell_43_1221759_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????`:?????????`: : : : : 2X
*while/lstm_cell_43/StatefulPartitionedCall*while/lstm_cell_43/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
: 
?
?
I__inference_lstm_cell_42_layer_call_and_return_conditional_losses_1225036

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????@2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????@:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?Z
?
D__inference_lstm_42_layer_call_and_return_conditional_losses_1224276

inputs>
+lstm_cell_42_matmul_readvariableop_resource:	?@
-lstm_cell_42_matmul_1_readvariableop_resource:	@?;
,lstm_cell_42_biasadd_readvariableop_resource:	?
identity??#lstm_cell_42/BiasAdd/ReadVariableOp?"lstm_cell_42/MatMul/ReadVariableOp?$lstm_cell_42/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:H?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_42/MatMul/ReadVariableOp?
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/MatMul?
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$lstm_cell_42/MatMul_1/ReadVariableOp?
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/MatMul_1?
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/add?
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_42/BiasAdd/ReadVariableOp?
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/BiasAdd~
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_42/split/split_dim?
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_42/split?
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid?
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_1?
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul?
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_2?
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul_1?
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/add_1?
lstm_cell_42/Sigmoid_3Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_3?
lstm_cell_42/Sigmoid_4Sigmoidlstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_4?
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_3:y:0lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1224192*
condR
while_cond_1224191*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:H?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????H@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????H@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????H: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????H
 
_user_specified_nameinputs
?
?
while_cond_1221520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1221520___redundant_placeholder05
1while_while_cond_1221520___redundant_placeholder15
1while_while_cond_1221520___redundant_placeholder25
1while_while_cond_1221520___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????`:?????????`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_1224688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1224688___redundant_placeholder05
1while_while_cond_1224688___redundant_placeholder15
1while_while_cond_1224688___redundant_placeholder25
1while_while_cond_1224688___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????`:?????????`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
:
?
?
)__inference_lstm_42_layer_call_fn_1223639
inputs_0
unknown:	?
	unknown_0:	@?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_42_layer_call_and_return_conditional_losses_12209602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?Z
?
D__inference_lstm_42_layer_call_and_return_conditional_losses_1222219

inputs>
+lstm_cell_42_matmul_readvariableop_resource:	?@
-lstm_cell_42_matmul_1_readvariableop_resource:	@?;
,lstm_cell_42_biasadd_readvariableop_resource:	?
identity??#lstm_cell_42/BiasAdd/ReadVariableOp?"lstm_cell_42/MatMul/ReadVariableOp?$lstm_cell_42/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:H?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_42/MatMul/ReadVariableOp?
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/MatMul?
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$lstm_cell_42/MatMul_1/ReadVariableOp?
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/MatMul_1?
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/add?
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_42/BiasAdd/ReadVariableOp?
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_42/BiasAdd~
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_42/split/split_dim?
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_42/split?
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid?
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_1?
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul?
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_2?
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul_1?
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/add_1?
lstm_cell_42/Sigmoid_3Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_3?
lstm_cell_42/Sigmoid_4Sigmoidlstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/Sigmoid_4?
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_3:y:0lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_42/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1222135*
condR
while_cond_1222134*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:H?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????H@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????H@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????H: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????H
 
_user_specified_nameinputs
?C
?
while_body_1224041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_42_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:	@?C
4while_lstm_cell_42_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_42_matmul_readvariableop_resource:	?F
3while_lstm_cell_42_matmul_1_readvariableop_resource:	@?A
2while_lstm_cell_42_biasadd_readvariableop_resource:	???)while/lstm_cell_42/BiasAdd/ReadVariableOp?(while/lstm_cell_42/MatMul/ReadVariableOp?*while/lstm_cell_42/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_42/MatMul/ReadVariableOp?
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/MatMul?
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02,
*while/lstm_cell_42/MatMul_1/ReadVariableOp?
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/MatMul_1?
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/add?
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_42/BiasAdd/ReadVariableOp?
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/BiasAdd?
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_42/split/split_dim?
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_42/split?
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid?
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_1?
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul?
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_2?
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0 while/lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul_1?
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/add_1?
while/lstm_cell_42/Sigmoid_3Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_3?
while/lstm_cell_42/Sigmoid_4Sigmoidwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_4?
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_3:y:0 while/lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?C
?
while_body_1222135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_42_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:	@?C
4while_lstm_cell_42_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_42_matmul_readvariableop_resource:	?F
3while_lstm_cell_42_matmul_1_readvariableop_resource:	@?A
2while_lstm_cell_42_biasadd_readvariableop_resource:	???)while/lstm_cell_42/BiasAdd/ReadVariableOp?(while/lstm_cell_42/MatMul/ReadVariableOp?*while/lstm_cell_42/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_42/MatMul/ReadVariableOp?
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/MatMul?
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02,
*while/lstm_cell_42/MatMul_1/ReadVariableOp?
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/MatMul_1?
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/add?
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_42/BiasAdd/ReadVariableOp?
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_42/BiasAdd?
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_42/split/split_dim?
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_42/split?
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid?
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_1?
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul?
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_2?
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0 while/lstm_cell_42/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul_1?
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/add_1?
while/lstm_cell_42/Sigmoid_3Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_3?
while/lstm_cell_42/Sigmoid_4Sigmoidwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/Sigmoid_4?
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_3:y:0 while/lstm_cell_42/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_42/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_1222540
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1222540___redundant_placeholder05
1while_while_cond_1222540___redundant_placeholder15
1while_while_cond_1222540___redundant_placeholder25
1while_while_cond_1222540___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????`:?????????`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????`:-)
'
_output_shapes
:?????????`:

_output_shapes
: :

_output_shapes
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
lstm_42_input:
serving_default_lstm_42_input:0?????????H<
dense_210
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?6
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
___call__
*`&call_and_return_all_conditional_losses
a_default_save_signature"?4
_tf_keras_sequential?3{"name": "sequential_21", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_21", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 72, 12]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_42_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_42", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 72, 12]}, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_43", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 96, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dropout", "config": {"name": "dropout_21", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 15, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 12]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 16}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 72, 12]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 72, 12]}, "float32", "lstm_42_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_21", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 72, 12]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_42_input"}, "shared_object_id": 0}, {"class_name": "LSTM", "config": {"name": "lstm_42", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 72, 12]}, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}, {"class_name": "LSTM", "config": {"name": "lstm_43", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 96, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 10}, {"class_name": "Dropout", "config": {"name": "dropout_21", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 11}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.009999999776482582, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
?
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
b__call__
*c&call_and_return_all_conditional_losses"?
_tf_keras_rnn_layer?{"name": "lstm_42", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 72, 12]}, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_42", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 72, 12]}, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 12]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 16}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 72, 12]}}
?
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
d__call__
*e&call_and_return_all_conditional_losses"?
_tf_keras_rnn_layer?
{"name": "lstm_43", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_43", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 96, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 10, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 17}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 72, 64]}}
?
trainable_variables
regularization_losses
	variables
	keras_api
f__call__
*g&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_21", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_21", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 11}
?

kernel
bias
trainable_variables
regularization_losses
	variables
 	keras_api
h__call__
*i&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 96}}, "shared_object_id": 18}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96]}}
I
!iter
	"decay
#learning_rate
$momentum"
	optimizer
X
%0
&1
'2
(3
)4
*5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
%0
&1
'2
(3
)4
*5
6
7"
trackable_list_wrapper
?
trainable_variables
+layer_regularization_losses
regularization_losses
,metrics
-non_trainable_variables
.layer_metrics

/layers
	variables
___call__
a_default_save_signature
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
,
jserving_default"
signature_map
?	
0
state_size

%kernel
&recurrent_kernel
'bias
1trainable_variables
2regularization_losses
3	variables
4	keras_api
k__call__
*l&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "lstm_cell_42", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_42", "trainable": true, "dtype": "float32", "units": 64, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 4}
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
?
trainable_variables
5layer_regularization_losses
regularization_losses
6metrics
7non_trainable_variables
8layer_metrics

9layers
	variables

:states
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
?	
;
state_size

(kernel
)recurrent_kernel
*bias
<trainable_variables
=regularization_losses
>	variables
?	keras_api
m__call__
*n&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "lstm_cell_43", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_43", "trainable": true, "dtype": "float32", "units": 96, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 9}
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
?
trainable_variables
@layer_regularization_losses
regularization_losses
Ametrics
Bnon_trainable_variables
Clayer_metrics

Dlayers
	variables

Estates
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
Flayer_regularization_losses
Gmetrics
regularization_losses
Hnon_trainable_variables
Ilayer_metrics

Jlayers
	variables
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
!:`2dense_21/kernel
:2dense_21/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
trainable_variables
Klayer_regularization_losses
Lmetrics
regularization_losses
Mnon_trainable_variables
Nlayer_metrics

Olayers
	variables
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
.:,	?2lstm_42/lstm_cell_42/kernel
8:6	@?2%lstm_42/lstm_cell_42/recurrent_kernel
(:&?2lstm_42/lstm_cell_42/bias
.:,	@?2lstm_43/lstm_cell_43/kernel
8:6	`?2%lstm_43/lstm_cell_43/recurrent_kernel
(:&?2lstm_43/lstm_cell_43/bias
 "
trackable_list_wrapper
'
P0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
?
1trainable_variables
Qlayer_regularization_losses
Rmetrics
2regularization_losses
Snon_trainable_variables
Tlayer_metrics

Ulayers
3	variables
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
?
<trainable_variables
Vlayer_regularization_losses
Wmetrics
=regularization_losses
Xnon_trainable_variables
Ylayer_metrics

Zlayers
>	variables
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
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
 "
trackable_list_wrapper
?
	[total
	\count
]	variables
^	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 19}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
:  (2total
:  (2count
.
[0
\1"
trackable_list_wrapper
-
]	variables"
_generic_user_object
?2?
/__inference_sequential_21_layer_call_fn_1222428
/__inference_sequential_21_layer_call_fn_1222990
/__inference_sequential_21_layer_call_fn_1223011
/__inference_sequential_21_layer_call_fn_1222894?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_sequential_21_layer_call_and_return_conditional_losses_1223316
J__inference_sequential_21_layer_call_and_return_conditional_losses_1223628
J__inference_sequential_21_layer_call_and_return_conditional_losses_1222918
J__inference_sequential_21_layer_call_and_return_conditional_losses_1222942?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
"__inference__wrapped_model_1220802?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *0?-
+?(
lstm_42_input?????????H
?2?
)__inference_lstm_42_layer_call_fn_1223639
)__inference_lstm_42_layer_call_fn_1223650
)__inference_lstm_42_layer_call_fn_1223661
)__inference_lstm_42_layer_call_fn_1223672?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lstm_42_layer_call_and_return_conditional_losses_1223823
D__inference_lstm_42_layer_call_and_return_conditional_losses_1223974
D__inference_lstm_42_layer_call_and_return_conditional_losses_1224125
D__inference_lstm_42_layer_call_and_return_conditional_losses_1224276?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_lstm_43_layer_call_fn_1224287
)__inference_lstm_43_layer_call_fn_1224298
)__inference_lstm_43_layer_call_fn_1224309
)__inference_lstm_43_layer_call_fn_1224320?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lstm_43_layer_call_and_return_conditional_losses_1224471
D__inference_lstm_43_layer_call_and_return_conditional_losses_1224622
D__inference_lstm_43_layer_call_and_return_conditional_losses_1224773
D__inference_lstm_43_layer_call_and_return_conditional_losses_1224924?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_21_layer_call_fn_1224929
,__inference_dropout_21_layer_call_fn_1224934?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_21_layer_call_and_return_conditional_losses_1224939
G__inference_dropout_21_layer_call_and_return_conditional_losses_1224951?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_21_layer_call_fn_1224960?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_21_layer_call_and_return_conditional_losses_1224970?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_1222969lstm_42_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_lstm_cell_42_layer_call_fn_1224987
.__inference_lstm_cell_42_layer_call_fn_1225004?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_lstm_cell_42_layer_call_and_return_conditional_losses_1225036
I__inference_lstm_cell_42_layer_call_and_return_conditional_losses_1225068?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_lstm_cell_43_layer_call_fn_1225085
.__inference_lstm_cell_43_layer_call_fn_1225102?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_1225134
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_1225166?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
"__inference__wrapped_model_1220802{%&'()*:?7
0?-
+?(
lstm_42_input?????????H
? "3?0
.
dense_21"?
dense_21??????????
E__inference_dense_21_layer_call_and_return_conditional_losses_1224970\/?,
%?"
 ?
inputs?????????`
? "%?"
?
0?????????
? }
*__inference_dense_21_layer_call_fn_1224960O/?,
%?"
 ?
inputs?????????`
? "???????????
G__inference_dropout_21_layer_call_and_return_conditional_losses_1224939\3?0
)?&
 ?
inputs?????????`
p 
? "%?"
?
0?????????`
? ?
G__inference_dropout_21_layer_call_and_return_conditional_losses_1224951\3?0
)?&
 ?
inputs?????????`
p
? "%?"
?
0?????????`
? 
,__inference_dropout_21_layer_call_fn_1224929O3?0
)?&
 ?
inputs?????????`
p 
? "??????????`
,__inference_dropout_21_layer_call_fn_1224934O3?0
)?&
 ?
inputs?????????`
p
? "??????????`?
D__inference_lstm_42_layer_call_and_return_conditional_losses_1223823?%&'O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "2?/
(?%
0??????????????????@
? ?
D__inference_lstm_42_layer_call_and_return_conditional_losses_1223974?%&'O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "2?/
(?%
0??????????????????@
? ?
D__inference_lstm_42_layer_call_and_return_conditional_losses_1224125q%&'??<
5?2
$?!
inputs?????????H

 
p 

 
? ")?&
?
0?????????H@
? ?
D__inference_lstm_42_layer_call_and_return_conditional_losses_1224276q%&'??<
5?2
$?!
inputs?????????H

 
p

 
? ")?&
?
0?????????H@
? ?
)__inference_lstm_42_layer_call_fn_1223639}%&'O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"??????????????????@?
)__inference_lstm_42_layer_call_fn_1223650}%&'O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"??????????????????@?
)__inference_lstm_42_layer_call_fn_1223661d%&'??<
5?2
$?!
inputs?????????H

 
p 

 
? "??????????H@?
)__inference_lstm_42_layer_call_fn_1223672d%&'??<
5?2
$?!
inputs?????????H

 
p

 
? "??????????H@?
D__inference_lstm_43_layer_call_and_return_conditional_losses_1224471}()*O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p 

 
? "%?"
?
0?????????`
? ?
D__inference_lstm_43_layer_call_and_return_conditional_losses_1224622}()*O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p

 
? "%?"
?
0?????????`
? ?
D__inference_lstm_43_layer_call_and_return_conditional_losses_1224773m()*??<
5?2
$?!
inputs?????????H@

 
p 

 
? "%?"
?
0?????????`
? ?
D__inference_lstm_43_layer_call_and_return_conditional_losses_1224924m()*??<
5?2
$?!
inputs?????????H@

 
p

 
? "%?"
?
0?????????`
? ?
)__inference_lstm_43_layer_call_fn_1224287p()*O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p 

 
? "??????????`?
)__inference_lstm_43_layer_call_fn_1224298p()*O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p

 
? "??????????`?
)__inference_lstm_43_layer_call_fn_1224309`()*??<
5?2
$?!
inputs?????????H@

 
p 

 
? "??????????`?
)__inference_lstm_43_layer_call_fn_1224320`()*??<
5?2
$?!
inputs?????????H@

 
p

 
? "??????????`?
I__inference_lstm_cell_42_layer_call_and_return_conditional_losses_1225036?%&'??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p 
? "s?p
i?f
?
0/0?????????@
E?B
?
0/1/0?????????@
?
0/1/1?????????@
? ?
I__inference_lstm_cell_42_layer_call_and_return_conditional_losses_1225068?%&'??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p
? "s?p
i?f
?
0/0?????????@
E?B
?
0/1/0?????????@
?
0/1/1?????????@
? ?
.__inference_lstm_cell_42_layer_call_fn_1224987?%&'??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p 
? "c?`
?
0?????????@
A?>
?
1/0?????????@
?
1/1?????????@?
.__inference_lstm_cell_42_layer_call_fn_1225004?%&'??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p
? "c?`
?
0?????????@
A?>
?
1/0?????????@
?
1/1?????????@?
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_1225134?()*??}
v?s
 ?
inputs?????????@
K?H
"?
states/0?????????`
"?
states/1?????????`
p 
? "s?p
i?f
?
0/0?????????`
E?B
?
0/1/0?????????`
?
0/1/1?????????`
? ?
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_1225166?()*??}
v?s
 ?
inputs?????????@
K?H
"?
states/0?????????`
"?
states/1?????????`
p
? "s?p
i?f
?
0/0?????????`
E?B
?
0/1/0?????????`
?
0/1/1?????????`
? ?
.__inference_lstm_cell_43_layer_call_fn_1225085?()*??}
v?s
 ?
inputs?????????@
K?H
"?
states/0?????????`
"?
states/1?????????`
p 
? "c?`
?
0?????????`
A?>
?
1/0?????????`
?
1/1?????????`?
.__inference_lstm_cell_43_layer_call_fn_1225102?()*??}
v?s
 ?
inputs?????????@
K?H
"?
states/0?????????`
"?
states/1?????????`
p
? "c?`
?
0?????????`
A?>
?
1/0?????????`
?
1/1?????????`?
J__inference_sequential_21_layer_call_and_return_conditional_losses_1222918u%&'()*B??
8?5
+?(
lstm_42_input?????????H
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_21_layer_call_and_return_conditional_losses_1222942u%&'()*B??
8?5
+?(
lstm_42_input?????????H
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_21_layer_call_and_return_conditional_losses_1223316n%&'()*;?8
1?.
$?!
inputs?????????H
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_21_layer_call_and_return_conditional_losses_1223628n%&'()*;?8
1?.
$?!
inputs?????????H
p

 
? "%?"
?
0?????????
? ?
/__inference_sequential_21_layer_call_fn_1222428h%&'()*B??
8?5
+?(
lstm_42_input?????????H
p 

 
? "???????????
/__inference_sequential_21_layer_call_fn_1222894h%&'()*B??
8?5
+?(
lstm_42_input?????????H
p

 
? "???????????
/__inference_sequential_21_layer_call_fn_1222990a%&'()*;?8
1?.
$?!
inputs?????????H
p 

 
? "???????????
/__inference_sequential_21_layer_call_fn_1223011a%&'()*;?8
1?.
$?!
inputs?????????H
p

 
? "???????????
%__inference_signature_wrapper_1222969?%&'()*K?H
? 
A?>
<
lstm_42_input+?(
lstm_42_input?????????H"3?0
.
dense_21"?
dense_21?????????