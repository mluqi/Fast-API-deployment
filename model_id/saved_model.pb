��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
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
resource�
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
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
executor_typestring ��
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
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
f
ConstConst*
_output_shapes
:*
dtype0	*-
value$B"	"                     
h
Const_1Const*
_output_shapes
:*
dtype0	*-
value$B"	"                     
�
Const_2Const*
_output_shapes
:8*
dtype0	*�
value�B�	8"�                                                                                                                               !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       
�
Const_3Const*
_output_shapes
:8*
dtype0	*�
value�B�	8"�                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       
`
Const_4Const*
_output_shapes
:*
dtype0	*%
valueB	"              
d
Const_5Const*
_output_shapes
:*
dtype0*)
value BB	Laki-lakiB	Perempuan
�>
Const_6Const*
_output_shapes	
:�*
dtype0	*�>
value�>B�>	�"�>                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      
�>
Const_7Const*
_output_shapes	
:�*
dtype0	*�>
value�>B�>	�"�>                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      
I
Const_8Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_9Const*
_output_shapes
: *
dtype0	*
value	B	 R 
J
Const_10Const*
_output_shapes
: *
dtype0	*
value	B	 R 
J
Const_11Const*
_output_shapes
: *
dtype0	*
value	B	 R 
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name7212*
value_dtype0	
n
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name7189*
value_dtype0	
n
hash_table_2HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name7166*
value_dtype0	
n
hash_table_3HashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name7143*
value_dtype0	
�
sequential_13/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namesequential_13/dense_3/bias
�
.sequential_13/dense_3/bias/Read/ReadVariableOpReadVariableOpsequential_13/dense_3/bias*
_output_shapes
:*
dtype0
�
sequential_13/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*-
shared_namesequential_13/dense_3/kernel
�
0sequential_13/dense_3/kernel/Read/ReadVariableOpReadVariableOpsequential_13/dense_3/kernel*
_output_shapes

:@*
dtype0
�
embedding_10/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameembedding_10/embeddings
�
+embedding_10/embeddings/Read/ReadVariableOpReadVariableOpembedding_10/embeddings*
_output_shapes

:*
dtype0
�
embedding_9/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:9*'
shared_nameembedding_9/embeddings
�
*embedding_9/embeddings/Read/ReadVariableOpReadVariableOpembedding_9/embeddings*
_output_shapes

:9*
dtype0
�
embedding_8/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameembedding_8/embeddings
�
*embedding_8/embeddings/Read/ReadVariableOpReadVariableOpembedding_8/embeddings*
_output_shapes

:*
dtype0
�
embedding_7/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*'
shared_nameembedding_7/embeddings
�
*embedding_7/embeddings/Read/ReadVariableOpReadVariableOpembedding_7/embeddings*
_output_shapes
:	�*
dtype0
p

candidatesVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_name
candidates
i
candidates/Read/ReadVariableOpReadVariableOp
candidates*
_output_shapes

:*
dtype0
n
identifiersVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_nameidentifiers
g
identifiers/Read/ReadVariableOpReadVariableOpidentifiers*
_output_shapes
:*
dtype0	
n
serving_default_agePlaceholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
q
serving_default_genderPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
p
serving_default_levelPlaceholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
r
serving_default_user_idPlaceholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_ageserving_default_genderserving_default_levelserving_default_user_idhash_table_3Const_11embedding_7/embeddingshash_table_2Const_10embedding_8/embeddingshash_table_1Const_9embedding_9/embeddings
hash_tableConst_8embedding_10/embeddingssequential_13/dense_3/kernelsequential_13/dense_3/bias
candidatesidentifiers*
Tin
2							*
Tout
2	*
_collective_manager_ids
 *:
_output_shapes(
&:���������
:���������
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_15728
�
StatefulPartitionedCall_1StatefulPartitionedCallhash_table_3Const_7Const_6*
Tin
2		*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__initializer_16550
�
StatefulPartitionedCall_2StatefulPartitionedCallhash_table_2Const_5Const_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__initializer_16568
�
StatefulPartitionedCall_3StatefulPartitionedCallhash_table_1Const_2Const_3*
Tin
2		*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__initializer_16586
�
StatefulPartitionedCall_4StatefulPartitionedCall
hash_tableConst_1Const*
Tin
2		*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__initializer_16604
|
NoOpNoOp^StatefulPartitionedCall_1^StatefulPartitionedCall_2^StatefulPartitionedCall_3^StatefulPartitionedCall_4
�]
Const_12Const"/device:CPU:0*
_output_shapes
: *
dtype0*�\
value�\B�\ B�\
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
query_model
	identifiers
	_identifiers


candidates

_candidates
query_with_exclusions

signatures*
<
0
1
2
3
4
5
	6

7*
.
0
1
2
3
4
5*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
trace_2
trace_3* 
6
trace_0
trace_1
trace_2
trace_3* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
�
$layer_with_weights-0
$layer-0
%layer_with_weights-1
%layer-1
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,_build_input_shape*
KE
VARIABLE_VALUEidentifiers&identifiers/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUE
candidates%candidates/.ATTRIBUTES/VARIABLE_VALUE*
* 

-serving_default* 
VP
VARIABLE_VALUEembedding_7/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEembedding_8/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEembedding_9/embeddings&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEembedding_10/embeddings&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEsequential_13/dense_3/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEsequential_13/dense_3/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*

	0

1*

0*
* 
* 
* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
* 
* 
* 
* 
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses
4user_embedding
5gender_embedding
6age_embedding
7level_embedding*
�
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

kernel
bias*
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 
�
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
6
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_3* 
6
Gtrace_0
Htrace_1
Itrace_2
Jtrace_3* 
* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
 
0
1
2
3*
 
0
1
2
3*
* 
�
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*
6
Ptrace_0
Qtrace_1
Rtrace_2
Strace_3* 
6
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_3* 
�
Xlayer-0
Ylayer_with_weights-0
Ylayer-1
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses*
�
`layer-0
alayer_with_weights-0
alayer-1
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses*
�
hlayer-0
ilayer_with_weights-0
ilayer-1
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses*
�
player-0
qlayer_with_weights-0
qlayer-1
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses*

0
1*

0
1*
* 
�
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

}trace_0* 

~trace_0* 
* 

$0
%1*
* 
* 
* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
* 
 
40
51
62
73*
* 
* 
* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
?
 	capture_1
!	capture_4
"	capture_7
#
capture_10* 
$
	keras_api
�lookup_table* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
%
�	keras_api
�lookup_table* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
%
�	keras_api
�lookup_table* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
%
�	keras_api
�lookup_table* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
* 
* 
* 
* 
* 
* 
* 
V
�_initializer
�_create_resource
�_initialize
�_destroy_resource* 

0*

0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

X0
Y1*
* 
* 
* 

 	capture_1* 

 	capture_1* 

 	capture_1* 

 	capture_1* 

 	capture_1* 

 	capture_1* 

 	capture_1* 

 	capture_1* 
* 
V
�_initializer
�_create_resource
�_initialize
�_destroy_resource* 

0*

0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

`0
a1*
* 
* 
* 

!	capture_1* 

!	capture_1* 

!	capture_1* 

!	capture_1* 

!	capture_1* 

!	capture_1* 

!	capture_1* 

!	capture_1* 
* 
V
�_initializer
�_create_resource
�_initialize
�_destroy_resource* 

0*

0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

h0
i1*
* 
* 
* 

"	capture_1* 

"	capture_1* 

"	capture_1* 

"	capture_1* 

"	capture_1* 

"	capture_1* 

"	capture_1* 

"	capture_1* 
* 
V
�_initializer
�_create_resource
�_initialize
�_destroy_resource* 

0*

0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

p0
q1*
* 
* 
* 

#	capture_1* 

#	capture_1* 

#	capture_1* 

#	capture_1* 

#	capture_1* 

#	capture_1* 

#	capture_1* 

#	capture_1* 
* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
"
�	capture_1
�	capture_2* 
* 
* 
"
�	capture_1
�	capture_2* 
* 
* 
"
�	capture_1
�	capture_2* 
* 
* 
"
�	capture_1
�	capture_2* 
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
�
StatefulPartitionedCall_5StatefulPartitionedCallsaver_filenameidentifiers
candidatesembedding_7/embeddingsembedding_8/embeddingsembedding_9/embeddingsembedding_10/embeddingssequential_13/dense_3/kernelsequential_13/dense_3/biasConst_12*
Tin
2
*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_16704
�
StatefulPartitionedCall_6StatefulPartitionedCallsaver_filenameidentifiers
candidatesembedding_7/embeddingsembedding_8/embeddingsembedding_9/embeddingsembedding_10/embeddingssequential_13/dense_3/kernelsequential_13/dense_3/bias*
Tin
2	*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_16738��
�
�
H__inference_sequential_11_layer_call_and_return_conditional_losses_16425

inputs	?
;integer_lookup_5_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_5_none_lookup_lookuptablefindv2_default_value	4
"embedding_9_embedding_lookup_16419:9
identity��embedding_9/embedding_lookup�.integer_lookup_5/None_Lookup/LookupTableFindV2�
.integer_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_5_none_lookup_lookuptablefindv2_table_handleinputs<integer_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_5/IdentityIdentity7integer_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
embedding_9/embedding_lookupResourceGather"embedding_9_embedding_lookup_16419"integer_lookup_5/Identity:output:0*
Tindices0	*5
_class+
)'loc:@embedding_9/embedding_lookup/16419*'
_output_shapes
:���������*
dtype0�
%embedding_9/embedding_lookup/IdentityIdentity%embedding_9/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_9/embedding_lookup/16419*'
_output_shapes
:����������
'embedding_9/embedding_lookup/Identity_1Identity.embedding_9/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
IdentityIdentity0embedding_9/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^embedding_9/embedding_lookup/^integer_lookup_5/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2<
embedding_9/embedding_lookupembedding_9/embedding_lookup2`
.integer_lookup_5/None_Lookup/LookupTableFindV2.integer_lookup_5/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
H__inference_sequential_12_layer_call_and_return_conditional_losses_14651
integer_lookup_6_input	?
;integer_lookup_6_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_6_none_lookup_lookuptablefindv2_default_value	$
embedding_10_14647:
identity��$embedding_10/StatefulPartitionedCall�.integer_lookup_6/None_Lookup/LookupTableFindV2�
.integer_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_6_none_lookup_lookuptablefindv2_table_handleinteger_lookup_6_input<integer_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_6/IdentityIdentity7integer_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
$embedding_10/StatefulPartitionedCallStatefulPartitionedCall"integer_lookup_6/Identity:output:0embedding_10_14647*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_10_layer_call_and_return_conditional_losses_14646|
IdentityIdentity-embedding_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^embedding_10/StatefulPartitionedCall/^integer_lookup_6/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2`
.integer_lookup_6/None_Lookup/LookupTableFindV2.integer_lookup_6/None_Lookup/LookupTableFindV2:[ W
#
_output_shapes
:���������
0
_user_specified_nameinteger_lookup_6_input:

_output_shapes
: 
�
�
__inference__initializer_165507
3key_value_init7142_lookuptableimportv2_table_handle/
+key_value_init7142_lookuptableimportv2_keys	1
-key_value_init7142_lookuptableimportv2_values	
identity��&key_value_init7142/LookupTableImportV2�
&key_value_init7142/LookupTableImportV2LookupTableImportV23key_value_init7142_lookuptableimportv2_table_handle+key_value_init7142_lookuptableimportv2_keys-key_value_init7142_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init7142/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�:�2P
&key_value_init7142/LookupTableImportV2&key_value_init7142/LookupTableImportV2:!

_output_shapes	
:�:!

_output_shapes	
:�
�
�
-__inference_sequential_10_layer_call_fn_16351

inputs
unknown
	unknown_0	
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_14482o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
,
__inference__destroyer_16609
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
-__inference_sequential_11_layer_call_fn_16388

inputs	
unknown
	unknown_0	
	unknown_1:9
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_14568o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
H__inference_sequential_11_layer_call_and_return_conditional_losses_14543
integer_lookup_5_input	?
;integer_lookup_5_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_5_none_lookup_lookuptablefindv2_default_value	#
embedding_9_14539:9
identity��#embedding_9/StatefulPartitionedCall�.integer_lookup_5/None_Lookup/LookupTableFindV2�
.integer_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_5_none_lookup_lookuptablefindv2_table_handleinteger_lookup_5_input<integer_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_5/IdentityIdentity7integer_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_9/StatefulPartitionedCallStatefulPartitionedCall"integer_lookup_5/Identity:output:0embedding_9_14539*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_9_layer_call_and_return_conditional_losses_14538{
IdentityIdentity,embedding_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^embedding_9/StatefulPartitionedCall/^integer_lookup_5/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_9/StatefulPartitionedCall#embedding_9/StatefulPartitionedCall2`
.integer_lookup_5/None_Lookup/LookupTableFindV2.integer_lookup_5/None_Lookup/LookupTableFindV2:[ W
#
_output_shapes
:���������
0
_user_specified_nameinteger_lookup_5_input:

_output_shapes
: 
�
�
__inference__initializer_165867
3key_value_init7188_lookuptableimportv2_table_handle/
+key_value_init7188_lookuptableimportv2_keys	1
-key_value_init7188_lookuptableimportv2_values	
identity��&key_value_init7188/LookupTableImportV2�
&key_value_init7188/LookupTableImportV2LookupTableImportV23key_value_init7188_lookuptableimportv2_table_handle+key_value_init7188_lookuptableimportv2_keys-key_value_init7188_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init7188/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :8:82P
&key_value_init7188/LookupTableImportV2&key_value_init7188/LookupTableImportV2: 

_output_shapes
:8: 

_output_shapes
:8
�
�
__inference__initializer_165687
3key_value_init7165_lookuptableimportv2_table_handle/
+key_value_init7165_lookuptableimportv2_keys1
-key_value_init7165_lookuptableimportv2_values	
identity��&key_value_init7165/LookupTableImportV2�
&key_value_init7165/LookupTableImportV2LookupTableImportV23key_value_init7165_lookuptableimportv2_table_handle+key_value_init7165_lookuptableimportv2_keys-key_value_init7165_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init7165/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2P
&key_value_init7165/LookupTableImportV2&key_value_init7165/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
�
�
H__inference_sequential_12_layer_call_and_return_conditional_losses_16460

inputs	?
;integer_lookup_6_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_6_none_lookup_lookuptablefindv2_default_value	5
#embedding_10_embedding_lookup_16454:
identity��embedding_10/embedding_lookup�.integer_lookup_6/None_Lookup/LookupTableFindV2�
.integer_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_6_none_lookup_lookuptablefindv2_table_handleinputs<integer_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_6/IdentityIdentity7integer_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
embedding_10/embedding_lookupResourceGather#embedding_10_embedding_lookup_16454"integer_lookup_6/Identity:output:0*
Tindices0	*6
_class,
*(loc:@embedding_10/embedding_lookup/16454*'
_output_shapes
:���������*
dtype0�
&embedding_10/embedding_lookup/IdentityIdentity&embedding_10/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_10/embedding_lookup/16454*'
_output_shapes
:����������
(embedding_10/embedding_lookup/Identity_1Identity/embedding_10/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
IdentityIdentity1embedding_10/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^embedding_10/embedding_lookup/^integer_lookup_6/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2>
embedding_10/embedding_lookupembedding_10/embedding_lookup2`
.integer_lookup_6/None_Lookup/LookupTableFindV2.integer_lookup_6/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
H__inference_sequential_13_layer_call_and_return_conditional_losses_15144
inputs_2	
inputs_1
inputs_3	

inputs	
user_model_1_15113
user_model_1_15115	%
user_model_1_15117:	�
user_model_1_15119
user_model_1_15121	$
user_model_1_15123:
user_model_1_15125
user_model_1_15127	$
user_model_1_15129:9
user_model_1_15131
user_model_1_15133	$
user_model_1_15135:
dense_3_15138:@
dense_3_15140:
identity��dense_3/StatefulPartitionedCall�$user_model_1/StatefulPartitionedCall�
$user_model_1/StatefulPartitionedCallStatefulPartitionedCallinputs_2inputs_1inputs_3inputsuser_model_1_15113user_model_1_15115user_model_1_15117user_model_1_15119user_model_1_15121user_model_1_15123user_model_1_15125user_model_1_15127user_model_1_15129user_model_1_15131user_model_1_15133user_model_1_15135*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_14855�
dense_3/StatefulPartitionedCallStatefulPartitionedCall-user_model_1/StatefulPartitionedCall:output:0dense_3_15138dense_3_15140*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_15057w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_3/StatefulPartitionedCall%^user_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:���������:���������:���������:���������: : : : : : : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$user_model_1/StatefulPartitionedCall$user_model_1/StatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_sequential_12_layer_call_and_return_conditional_losses_14676

inputs	?
;integer_lookup_6_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_6_none_lookup_lookuptablefindv2_default_value	$
embedding_10_14672:
identity��$embedding_10/StatefulPartitionedCall�.integer_lookup_6/None_Lookup/LookupTableFindV2�
.integer_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_6_none_lookup_lookuptablefindv2_table_handleinputs<integer_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_6/IdentityIdentity7integer_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
$embedding_10/StatefulPartitionedCallStatefulPartitionedCall"integer_lookup_6/Identity:output:0embedding_10_14672*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_10_layer_call_and_return_conditional_losses_14646|
IdentityIdentity-embedding_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^embedding_10/StatefulPartitionedCall/^integer_lookup_6/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2`
.integer_lookup_6/None_Lookup/LookupTableFindV2.integer_lookup_6/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
,__inference_user_model_1_layer_call_fn_16140

inputs_age	
inputs_gender
inputs_level	
inputs_user_id	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5
	unknown_6	
	unknown_7:9
	unknown_8
	unknown_9	

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
inputs_ageinputs_genderinputs_levelinputs_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_14855o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:���������
$
_user_specified_name
inputs_age:RN
#
_output_shapes
:���������
'
_user_specified_nameinputs_gender:QM
#
_output_shapes
:���������
&
_user_specified_nameinputs_level:SO
#
_output_shapes
:���������
(
_user_specified_nameinputs_user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
G__inference_user_model_1_layer_call_and_return_conditional_losses_14812
age	

gender	
level	
user_id	
sequential_9_14781
sequential_9_14783	%
sequential_9_14785:	�
sequential_10_14788
sequential_10_14790	%
sequential_10_14792:
sequential_11_14795
sequential_11_14797	%
sequential_11_14799:9
sequential_12_14802
sequential_12_14804	%
sequential_12_14806:
identity��%sequential_10/StatefulPartitionedCall�%sequential_11/StatefulPartitionedCall�%sequential_12/StatefulPartitionedCall�$sequential_9/StatefulPartitionedCall�
$sequential_9/StatefulPartitionedCallStatefulPartitionedCalluser_idsequential_9_14781sequential_9_14783sequential_9_14785*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_14374�
%sequential_10/StatefulPartitionedCallStatefulPartitionedCallgendersequential_10_14788sequential_10_14790sequential_10_14792*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_14482�
%sequential_11/StatefulPartitionedCallStatefulPartitionedCallagesequential_11_14795sequential_11_14797sequential_11_14799*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_14590�
%sequential_12/StatefulPartitionedCallStatefulPartitionedCalllevelsequential_12_14802sequential_12_14804sequential_12_14806*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_14698M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2-sequential_9/StatefulPartitionedCall:output:0.sequential_10/StatefulPartitionedCall:output:0.sequential_11/StatefulPartitionedCall:output:0.sequential_12/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp&^sequential_10/StatefulPartitionedCall&^sequential_11/StatefulPartitionedCall&^sequential_12/StatefulPartitionedCall%^sequential_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : : : 2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall2N
%sequential_11/StatefulPartitionedCall%sequential_11/StatefulPartitionedCall2N
%sequential_12/StatefulPartitionedCall%sequential_12/StatefulPartitionedCall2L
$sequential_9/StatefulPartitionedCall$sequential_9/StatefulPartitionedCall:H D
#
_output_shapes
:���������

_user_specified_nameage:KG
#
_output_shapes
:���������
 
_user_specified_namegender:JF
#
_output_shapes
:���������

_user_specified_namelevel:LH
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
:
__inference__creator_16560
identity��
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name7166*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�

+__inference_embedding_9_layer_call_fn_16512

inputs	
unknown:9
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_9_layer_call_and_return_conditional_losses_14538o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_sequential_9_layer_call_and_return_conditional_losses_14327
integer_lookup_4_input	?
;integer_lookup_4_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_4_none_lookup_lookuptablefindv2_default_value	$
embedding_7_14323:	�
identity��#embedding_7/StatefulPartitionedCall�.integer_lookup_4/None_Lookup/LookupTableFindV2�
.integer_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_4_none_lookup_lookuptablefindv2_table_handleinteger_lookup_4_input<integer_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_4/IdentityIdentity7integer_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_7/StatefulPartitionedCallStatefulPartitionedCall"integer_lookup_4/Identity:output:0embedding_7_14323*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_7_layer_call_and_return_conditional_losses_14322{
IdentityIdentity,embedding_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^embedding_7/StatefulPartitionedCall/^integer_lookup_4/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_7/StatefulPartitionedCall#embedding_7/StatefulPartitionedCall2`
.integer_lookup_4/None_Lookup/LookupTableFindV2.integer_lookup_4/None_Lookup/LookupTableFindV2:[ W
#
_output_shapes
:���������
0
_user_specified_nameinteger_lookup_4_input:

_output_shapes
: 
�
�
-__inference_sequential_11_layer_call_fn_14599
integer_lookup_5_input	
unknown
	unknown_0	
	unknown_1:9
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinteger_lookup_5_inputunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_14590o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
#
_output_shapes
:���������
0
_user_specified_nameinteger_lookup_5_input:

_output_shapes
: 
�
�
H__inference_sequential_13_layer_call_and_return_conditional_losses_15064
age	

gender	
level	
user_id	
user_model_1_15022
user_model_1_15024	%
user_model_1_15026:	�
user_model_1_15028
user_model_1_15030	$
user_model_1_15032:
user_model_1_15034
user_model_1_15036	$
user_model_1_15038:9
user_model_1_15040
user_model_1_15042	$
user_model_1_15044:
dense_3_15058:@
dense_3_15060:
identity��dense_3/StatefulPartitionedCall�$user_model_1/StatefulPartitionedCall�
$user_model_1/StatefulPartitionedCallStatefulPartitionedCallagegenderleveluser_iduser_model_1_15022user_model_1_15024user_model_1_15026user_model_1_15028user_model_1_15030user_model_1_15032user_model_1_15034user_model_1_15036user_model_1_15038user_model_1_15040user_model_1_15042user_model_1_15044*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_14855�
dense_3/StatefulPartitionedCallStatefulPartitionedCall-user_model_1/StatefulPartitionedCall:output:0dense_3_15058dense_3_15060*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_15057w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_3/StatefulPartitionedCall%^user_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:���������:���������:���������:���������: : : : : : : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$user_model_1/StatefulPartitionedCall$user_model_1/StatefulPartitionedCall:H D
#
_output_shapes
:���������

_user_specified_nameage:KG
#
_output_shapes
:���������
 
_user_specified_namegender:JF
#
_output_shapes
:���������

_user_specified_namelevel:LH
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
�
B__inference_dense_3_layer_call_and_return_conditional_losses_15057

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
G__inference_user_model_1_layer_call_and_return_conditional_losses_14855
inputs_2	
inputs_1
inputs_3	

inputs	
sequential_9_14824
sequential_9_14826	%
sequential_9_14828:	�
sequential_10_14831
sequential_10_14833	%
sequential_10_14835:
sequential_11_14838
sequential_11_14840	%
sequential_11_14842:9
sequential_12_14845
sequential_12_14847	%
sequential_12_14849:
identity��%sequential_10/StatefulPartitionedCall�%sequential_11/StatefulPartitionedCall�%sequential_12/StatefulPartitionedCall�$sequential_9/StatefulPartitionedCall�
$sequential_9/StatefulPartitionedCallStatefulPartitionedCallinputssequential_9_14824sequential_9_14826sequential_9_14828*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_14352�
%sequential_10/StatefulPartitionedCallStatefulPartitionedCallinputs_1sequential_10_14831sequential_10_14833sequential_10_14835*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_14460�
%sequential_11/StatefulPartitionedCallStatefulPartitionedCallinputs_2sequential_11_14838sequential_11_14840sequential_11_14842*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_14568�
%sequential_12/StatefulPartitionedCallStatefulPartitionedCallinputs_3sequential_12_14845sequential_12_14847sequential_12_14849*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_14676M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2-sequential_9/StatefulPartitionedCall:output:0.sequential_10/StatefulPartitionedCall:output:0.sequential_11/StatefulPartitionedCall:output:0.sequential_12/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp&^sequential_10/StatefulPartitionedCall&^sequential_11/StatefulPartitionedCall&^sequential_12/StatefulPartitionedCall%^sequential_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : : : 2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall2N
%sequential_11/StatefulPartitionedCall%sequential_11/StatefulPartitionedCall2N
%sequential_12/StatefulPartitionedCall%sequential_12/StatefulPartitionedCall2L
$sequential_9/StatefulPartitionedCall$sequential_9/StatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_sequential_13_layer_call_and_return_conditional_losses_15217
inputs_2	
inputs_1
inputs_3	

inputs	
user_model_1_15186
user_model_1_15188	%
user_model_1_15190:	�
user_model_1_15192
user_model_1_15194	$
user_model_1_15196:
user_model_1_15198
user_model_1_15200	$
user_model_1_15202:9
user_model_1_15204
user_model_1_15206	$
user_model_1_15208:
dense_3_15211:@
dense_3_15213:
identity��dense_3/StatefulPartitionedCall�$user_model_1/StatefulPartitionedCall�
$user_model_1/StatefulPartitionedCallStatefulPartitionedCallinputs_2inputs_1inputs_3inputsuser_model_1_15186user_model_1_15188user_model_1_15190user_model_1_15192user_model_1_15194user_model_1_15196user_model_1_15198user_model_1_15200user_model_1_15202user_model_1_15204user_model_1_15206user_model_1_15208*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_14924�
dense_3/StatefulPartitionedCallStatefulPartitionedCall-user_model_1/StatefulPartitionedCall:output:0dense_3_15211dense_3_15213*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_15057w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_3/StatefulPartitionedCall%^user_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:���������:���������:���������:���������: : : : : : : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$user_model_1/StatefulPartitionedCall$user_model_1/StatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
F__inference_embedding_8_layer_call_and_return_conditional_losses_14430

inputs	(
embedding_lookup_14424:
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_14424inputs*
Tindices0	*)
_class
loc:@embedding_lookup/14424*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/14424*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_embedding_7_layer_call_fn_16480

inputs	
unknown:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_7_layer_call_and_return_conditional_losses_14322o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_sequential_11_layer_call_and_return_conditional_losses_14568

inputs	?
;integer_lookup_5_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_5_none_lookup_lookuptablefindv2_default_value	#
embedding_9_14564:9
identity��#embedding_9/StatefulPartitionedCall�.integer_lookup_5/None_Lookup/LookupTableFindV2�
.integer_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_5_none_lookup_lookuptablefindv2_table_handleinputs<integer_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_5/IdentityIdentity7integer_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_9/StatefulPartitionedCallStatefulPartitionedCall"integer_lookup_5/Identity:output:0embedding_9_14564*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_9_layer_call_and_return_conditional_losses_14538{
IdentityIdentity,embedding_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^embedding_9/StatefulPartitionedCall/^integer_lookup_5/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_9/StatefulPartitionedCall#embedding_9/StatefulPartitionedCall2`
.integer_lookup_5/None_Lookup/LookupTableFindV2.integer_lookup_5/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
-__inference_sequential_13_layer_call_fn_15248
age	

gender	
level	
user_id	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5
	unknown_6	
	unknown_7:9
	unknown_8
	unknown_9	

unknown_10:

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallagegenderleveluser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_13_layer_call_and_return_conditional_losses_15217o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:���������:���������:���������:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:H D
#
_output_shapes
:���������

_user_specified_nameage:KG
#
_output_shapes
:���������
 
_user_specified_namegender:JF
#
_output_shapes
:���������

_user_specified_namelevel:LH
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
G__inference_sequential_9_layer_call_and_return_conditional_losses_16316

inputs	?
;integer_lookup_4_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_4_none_lookup_lookuptablefindv2_default_value	5
"embedding_7_embedding_lookup_16310:	�
identity��embedding_7/embedding_lookup�.integer_lookup_4/None_Lookup/LookupTableFindV2�
.integer_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_4_none_lookup_lookuptablefindv2_table_handleinputs<integer_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_4/IdentityIdentity7integer_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
embedding_7/embedding_lookupResourceGather"embedding_7_embedding_lookup_16310"integer_lookup_4/Identity:output:0*
Tindices0	*5
_class+
)'loc:@embedding_7/embedding_lookup/16310*'
_output_shapes
:���������*
dtype0�
%embedding_7/embedding_lookup/IdentityIdentity%embedding_7/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_7/embedding_lookup/16310*'
_output_shapes
:����������
'embedding_7/embedding_lookup/Identity_1Identity.embedding_7/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
IdentityIdentity0embedding_7/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^embedding_7/embedding_lookup/^integer_lookup_4/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2<
embedding_7/embedding_lookupembedding_7/embedding_lookup2`
.integer_lookup_4/None_Lookup/LookupTableFindV2.integer_lookup_4/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
H__inference_sequential_11_layer_call_and_return_conditional_losses_14554
integer_lookup_5_input	?
;integer_lookup_5_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_5_none_lookup_lookuptablefindv2_default_value	#
embedding_9_14550:9
identity��#embedding_9/StatefulPartitionedCall�.integer_lookup_5/None_Lookup/LookupTableFindV2�
.integer_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_5_none_lookup_lookuptablefindv2_table_handleinteger_lookup_5_input<integer_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_5/IdentityIdentity7integer_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_9/StatefulPartitionedCallStatefulPartitionedCall"integer_lookup_5/Identity:output:0embedding_9_14550*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_9_layer_call_and_return_conditional_losses_14538{
IdentityIdentity,embedding_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^embedding_9/StatefulPartitionedCall/^integer_lookup_5/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_9/StatefulPartitionedCall#embedding_9/StatefulPartitionedCall2`
.integer_lookup_5/None_Lookup/LookupTableFindV2.integer_lookup_5/None_Lookup/LookupTableFindV2:[ W
#
_output_shapes
:���������
0
_user_specified_nameinteger_lookup_5_input:

_output_shapes
: 
�
�
,__inference_sequential_9_layer_call_fn_14361
integer_lookup_4_input	
unknown
	unknown_0	
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinteger_lookup_4_inputunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_14352o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
#
_output_shapes
:���������
0
_user_specified_nameinteger_lookup_4_input:

_output_shapes
: 
�
�
F__inference_embedding_7_layer_call_and_return_conditional_losses_16489

inputs	)
embedding_lookup_16483:	�
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_16483inputs*
Tindices0	*)
_class
loc:@embedding_lookup/16483*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/16483*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_sequential_12_layer_call_and_return_conditional_losses_14698

inputs	?
;integer_lookup_6_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_6_none_lookup_lookuptablefindv2_default_value	$
embedding_10_14694:
identity��$embedding_10/StatefulPartitionedCall�.integer_lookup_6/None_Lookup/LookupTableFindV2�
.integer_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_6_none_lookup_lookuptablefindv2_table_handleinputs<integer_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_6/IdentityIdentity7integer_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
$embedding_10/StatefulPartitionedCallStatefulPartitionedCall"integer_lookup_6/Identity:output:0embedding_10_14694*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_10_layer_call_and_return_conditional_losses_14646|
IdentityIdentity-embedding_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^embedding_10/StatefulPartitionedCall/^integer_lookup_6/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2`
.integer_lookup_6/None_Lookup/LookupTableFindV2.integer_lookup_6/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
F__inference_brute_force_layer_call_and_return_conditional_losses_15423
age	

gender	
level	
user_id	
sequential_13_15383
sequential_13_15385	&
sequential_13_15387:	�
sequential_13_15389
sequential_13_15391	%
sequential_13_15393:
sequential_13_15395
sequential_13_15397	%
sequential_13_15399:9
sequential_13_15401
sequential_13_15403	%
sequential_13_15405:%
sequential_13_15407:@!
sequential_13_15409:0
matmul_readvariableop_resource:
gather_resource:	

identity_1

identity_2	��Gather�MatMul/ReadVariableOp�%sequential_13/StatefulPartitionedCall�
%sequential_13/StatefulPartitionedCallStatefulPartitionedCallagegenderleveluser_idsequential_13_15383sequential_13_15385sequential_13_15387sequential_13_15389sequential_13_15391sequential_13_15393sequential_13_15395sequential_13_15397sequential_13_15399sequential_13_15401sequential_13_15403sequential_13_15405sequential_13_15407sequential_13_15409*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_13_layer_call_and_return_conditional_losses_15217t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0�
MatMulMatMul.sequential_13/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:���������
:���������
�
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:���������
*
dtype0	W
IdentityIdentityGather:output:0*
T0	*'
_output_shapes
:���������
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:���������
b

Identity_2IdentityIdentity:output:0^NoOp*
T0	*'
_output_shapes
:���������
�
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:���������:���������:���������:���������: : : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential_13/StatefulPartitionedCall%sequential_13/StatefulPartitionedCall:H D
#
_output_shapes
:���������

_user_specified_nameage:KG
#
_output_shapes
:���������
 
_user_specified_namegender:JF
#
_output_shapes
:���������

_user_specified_namelevel:LH
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
F__inference_embedding_9_layer_call_and_return_conditional_losses_14538

inputs	(
embedding_lookup_14532:9
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_14532inputs*
Tindices0	*)
_class
loc:@embedding_lookup/14532*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/14532*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�m
�
F__inference_brute_force_layer_call_and_return_conditional_losses_15873
queries_age	
queries_gender
queries_level	
queries_user_id	g
csequential_13_user_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_table_handleh
dsequential_13_user_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_default_value	]
Jsequential_13_user_model_1_sequential_9_embedding_7_embedding_lookup_15822:	�g
csequential_13_user_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_table_handleh
dsequential_13_user_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_default_value	]
Ksequential_13_user_model_1_sequential_10_embedding_8_embedding_lookup_15831:h
dsequential_13_user_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_table_handlei
esequential_13_user_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_default_value	]
Ksequential_13_user_model_1_sequential_11_embedding_9_embedding_lookup_15840:9h
dsequential_13_user_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_table_handlei
esequential_13_user_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_default_value	^
Lsequential_13_user_model_1_sequential_12_embedding_10_embedding_lookup_15849:F
4sequential_13_dense_3_matmul_readvariableop_resource:@C
5sequential_13_dense_3_biasadd_readvariableop_resource:0
matmul_readvariableop_resource:
gather_resource:	

identity_1

identity_2	��Gather�MatMul/ReadVariableOp�,sequential_13/dense_3/BiasAdd/ReadVariableOp�+sequential_13/dense_3/MatMul/ReadVariableOp�Esequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup�Vsequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2�Esequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup�Wsequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2�Fsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup�Wsequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2�Dsequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup�Vsequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2�
Vsequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2csequential_13_user_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_table_handlequeries_user_iddsequential_13_user_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
Asequential_13/user_model_1/sequential_9/integer_lookup_4/IdentityIdentity_sequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Dsequential_13/user_model_1/sequential_9/embedding_7/embedding_lookupResourceGatherJsequential_13_user_model_1_sequential_9_embedding_7_embedding_lookup_15822Jsequential_13/user_model_1/sequential_9/integer_lookup_4/Identity:output:0*
Tindices0	*]
_classS
QOloc:@sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/15822*'
_output_shapes
:���������*
dtype0�
Msequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/IdentityIdentityMsequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup:output:0*
T0*]
_classS
QOloc:@sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/15822*'
_output_shapes
:����������
Osequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/Identity_1IdentityVsequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Vsequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2csequential_13_user_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_table_handlequeries_genderdsequential_13_user_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
Asequential_13/user_model_1/sequential_10/string_lookup_3/IdentityIdentity_sequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Esequential_13/user_model_1/sequential_10/embedding_8/embedding_lookupResourceGatherKsequential_13_user_model_1_sequential_10_embedding_8_embedding_lookup_15831Jsequential_13/user_model_1/sequential_10/string_lookup_3/Identity:output:0*
Tindices0	*^
_classT
RPloc:@sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/15831*'
_output_shapes
:���������*
dtype0�
Nsequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/IdentityIdentityNsequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup:output:0*
T0*^
_classT
RPloc:@sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/15831*'
_output_shapes
:����������
Psequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/Identity_1IdentityWsequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Wsequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2dsequential_13_user_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_table_handlequeries_ageesequential_13_user_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
Bsequential_13/user_model_1/sequential_11/integer_lookup_5/IdentityIdentity`sequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Esequential_13/user_model_1/sequential_11/embedding_9/embedding_lookupResourceGatherKsequential_13_user_model_1_sequential_11_embedding_9_embedding_lookup_15840Ksequential_13/user_model_1/sequential_11/integer_lookup_5/Identity:output:0*
Tindices0	*^
_classT
RPloc:@sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/15840*'
_output_shapes
:���������*
dtype0�
Nsequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/IdentityIdentityNsequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup:output:0*
T0*^
_classT
RPloc:@sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/15840*'
_output_shapes
:����������
Psequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/Identity_1IdentityWsequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Wsequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2dsequential_13_user_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_table_handlequeries_levelesequential_13_user_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
Bsequential_13/user_model_1/sequential_12/integer_lookup_6/IdentityIdentity`sequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Fsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookupResourceGatherLsequential_13_user_model_1_sequential_12_embedding_10_embedding_lookup_15849Ksequential_13/user_model_1/sequential_12/integer_lookup_6/Identity:output:0*
Tindices0	*_
_classU
SQloc:@sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/15849*'
_output_shapes
:���������*
dtype0�
Osequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/IdentityIdentityOsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup:output:0*
T0*_
_classU
SQloc:@sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/15849*'
_output_shapes
:����������
Qsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/Identity_1IdentityXsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������h
&sequential_13/user_model_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_13/user_model_1/concatConcatV2Xsequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/Identity_1:output:0Ysequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/Identity_1:output:0Ysequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/Identity_1:output:0Zsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/Identity_1:output:0/sequential_13/user_model_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@�
+sequential_13/dense_3/MatMul/ReadVariableOpReadVariableOp4sequential_13_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
sequential_13/dense_3/MatMulMatMul*sequential_13/user_model_1/concat:output:03sequential_13/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,sequential_13/dense_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_13_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_13/dense_3/BiasAddBiasAdd&sequential_13/dense_3/MatMul:product:04sequential_13/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0�
MatMulMatMul&sequential_13/dense_3/BiasAdd:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:���������
:���������
�
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:���������
*
dtype0	W
IdentityIdentityGather:output:0*
T0	*'
_output_shapes
:���������
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:���������
b

Identity_2IdentityIdentity:output:0^NoOp*
T0	*'
_output_shapes
:���������
�
NoOpNoOp^Gather^MatMul/ReadVariableOp-^sequential_13/dense_3/BiasAdd/ReadVariableOp,^sequential_13/dense_3/MatMul/ReadVariableOpF^sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookupW^sequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2F^sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookupX^sequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2G^sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookupX^sequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2E^sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookupW^sequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:���������:���������:���������:���������: : : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2\
,sequential_13/dense_3/BiasAdd/ReadVariableOp,sequential_13/dense_3/BiasAdd/ReadVariableOp2Z
+sequential_13/dense_3/MatMul/ReadVariableOp+sequential_13/dense_3/MatMul/ReadVariableOp2�
Esequential_13/user_model_1/sequential_10/embedding_8/embedding_lookupEsequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup2�
Vsequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2Vsequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV22�
Esequential_13/user_model_1/sequential_11/embedding_9/embedding_lookupEsequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup2�
Wsequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2Wsequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV22�
Fsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookupFsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup2�
Wsequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2Wsequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV22�
Dsequential_13/user_model_1/sequential_9/embedding_7/embedding_lookupDsequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup2�
Vsequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2Vsequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2:P L
#
_output_shapes
:���������
%
_user_specified_namequeries_age:SO
#
_output_shapes
:���������
(
_user_specified_namequeries_gender:RN
#
_output_shapes
:���������
'
_user_specified_namequeries_level:TP
#
_output_shapes
:���������
)
_user_specified_namequeries_user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_sequential_10_layer_call_and_return_conditional_losses_14482

inputs>
:string_lookup_3_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_3_none_lookup_lookuptablefindv2_default_value	#
embedding_8_14478:
identity��#embedding_8/StatefulPartitionedCall�-string_lookup_3/None_Lookup/LookupTableFindV2�
-string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_3_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup_3/IdentityIdentity6string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_8/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_3/Identity:output:0embedding_8_14478*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_8_layer_call_and_return_conditional_losses_14430{
IdentityIdentity,embedding_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^embedding_8/StatefulPartitionedCall.^string_lookup_3/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2^
-string_lookup_3/None_Lookup/LookupTableFindV2-string_lookup_3/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
-__inference_sequential_10_layer_call_fn_14491
string_lookup_3_input
unknown
	unknown_0	
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_3_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_14482o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
#
_output_shapes
:���������
/
_user_specified_namestring_lookup_3_input:

_output_shapes
: 
�D
�
G__inference_user_model_1_layer_call_and_return_conditional_losses_16217

inputs_age	
inputs_gender
inputs_level	
inputs_user_id	L
Hsequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_table_handleM
Isequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_default_value	B
/sequential_9_embedding_7_embedding_lookup_16182:	�L
Hsequential_10_string_lookup_3_none_lookup_lookuptablefindv2_table_handleM
Isequential_10_string_lookup_3_none_lookup_lookuptablefindv2_default_value	B
0sequential_10_embedding_8_embedding_lookup_16191:M
Isequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_table_handleN
Jsequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_default_value	B
0sequential_11_embedding_9_embedding_lookup_16200:9M
Isequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_table_handleN
Jsequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_default_value	C
1sequential_12_embedding_10_embedding_lookup_16209:
identity��*sequential_10/embedding_8/embedding_lookup�;sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2�*sequential_11/embedding_9/embedding_lookup�<sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2�+sequential_12/embedding_10/embedding_lookup�<sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2�)sequential_9/embedding_7/embedding_lookup�;sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2�
;sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2Hsequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_table_handleinputs_user_idIsequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
&sequential_9/integer_lookup_4/IdentityIdentityDsequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)sequential_9/embedding_7/embedding_lookupResourceGather/sequential_9_embedding_7_embedding_lookup_16182/sequential_9/integer_lookup_4/Identity:output:0*
Tindices0	*B
_class8
64loc:@sequential_9/embedding_7/embedding_lookup/16182*'
_output_shapes
:���������*
dtype0�
2sequential_9/embedding_7/embedding_lookup/IdentityIdentity2sequential_9/embedding_7/embedding_lookup:output:0*
T0*B
_class8
64loc:@sequential_9/embedding_7/embedding_lookup/16182*'
_output_shapes
:����������
4sequential_9/embedding_7/embedding_lookup/Identity_1Identity;sequential_9/embedding_7/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
;sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2Hsequential_10_string_lookup_3_none_lookup_lookuptablefindv2_table_handleinputs_genderIsequential_10_string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
&sequential_10/string_lookup_3/IdentityIdentityDsequential_10/string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
*sequential_10/embedding_8/embedding_lookupResourceGather0sequential_10_embedding_8_embedding_lookup_16191/sequential_10/string_lookup_3/Identity:output:0*
Tindices0	*C
_class9
75loc:@sequential_10/embedding_8/embedding_lookup/16191*'
_output_shapes
:���������*
dtype0�
3sequential_10/embedding_8/embedding_lookup/IdentityIdentity3sequential_10/embedding_8/embedding_lookup:output:0*
T0*C
_class9
75loc:@sequential_10/embedding_8/embedding_lookup/16191*'
_output_shapes
:����������
5sequential_10/embedding_8/embedding_lookup/Identity_1Identity<sequential_10/embedding_8/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
<sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2Isequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_table_handle
inputs_ageJsequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
'sequential_11/integer_lookup_5/IdentityIdentityEsequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
*sequential_11/embedding_9/embedding_lookupResourceGather0sequential_11_embedding_9_embedding_lookup_162000sequential_11/integer_lookup_5/Identity:output:0*
Tindices0	*C
_class9
75loc:@sequential_11/embedding_9/embedding_lookup/16200*'
_output_shapes
:���������*
dtype0�
3sequential_11/embedding_9/embedding_lookup/IdentityIdentity3sequential_11/embedding_9/embedding_lookup:output:0*
T0*C
_class9
75loc:@sequential_11/embedding_9/embedding_lookup/16200*'
_output_shapes
:����������
5sequential_11/embedding_9/embedding_lookup/Identity_1Identity<sequential_11/embedding_9/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
<sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2Isequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_table_handleinputs_levelJsequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
'sequential_12/integer_lookup_6/IdentityIdentityEsequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
+sequential_12/embedding_10/embedding_lookupResourceGather1sequential_12_embedding_10_embedding_lookup_162090sequential_12/integer_lookup_6/Identity:output:0*
Tindices0	*D
_class:
86loc:@sequential_12/embedding_10/embedding_lookup/16209*'
_output_shapes
:���������*
dtype0�
4sequential_12/embedding_10/embedding_lookup/IdentityIdentity4sequential_12/embedding_10/embedding_lookup:output:0*
T0*D
_class:
86loc:@sequential_12/embedding_10/embedding_lookup/16209*'
_output_shapes
:����������
6sequential_12/embedding_10/embedding_lookup/Identity_1Identity=sequential_12/embedding_10/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2=sequential_9/embedding_7/embedding_lookup/Identity_1:output:0>sequential_10/embedding_8/embedding_lookup/Identity_1:output:0>sequential_11/embedding_9/embedding_lookup/Identity_1:output:0?sequential_12/embedding_10/embedding_lookup/Identity_1:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp+^sequential_10/embedding_8/embedding_lookup<^sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2+^sequential_11/embedding_9/embedding_lookup=^sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2,^sequential_12/embedding_10/embedding_lookup=^sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2*^sequential_9/embedding_7/embedding_lookup<^sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : : : 2X
*sequential_10/embedding_8/embedding_lookup*sequential_10/embedding_8/embedding_lookup2z
;sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2;sequential_10/string_lookup_3/None_Lookup/LookupTableFindV22X
*sequential_11/embedding_9/embedding_lookup*sequential_11/embedding_9/embedding_lookup2|
<sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2<sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV22Z
+sequential_12/embedding_10/embedding_lookup+sequential_12/embedding_10/embedding_lookup2|
<sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2<sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV22V
)sequential_9/embedding_7/embedding_lookup)sequential_9/embedding_7/embedding_lookup2z
;sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2;sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2:O K
#
_output_shapes
:���������
$
_user_specified_name
inputs_age:RN
#
_output_shapes
:���������
'
_user_specified_nameinputs_gender:QM
#
_output_shapes
:���������
&
_user_specified_nameinputs_level:SO
#
_output_shapes
:���������
(
_user_specified_nameinputs_user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
#__inference_signature_wrapper_15728
age	

gender	
level	
user_id	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5
	unknown_6	
	unknown_7:9
	unknown_8
	unknown_9	

unknown_10:

unknown_11:@

unknown_12:

unknown_13:

unknown_14:	
identity

identity_1	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallagegenderleveluser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2							*
Tout
2	*
_collective_manager_ids
 *:
_output_shapes(
&:���������
:���������
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_14305o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0	*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:���������:���������:���������:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:H D
#
_output_shapes
:���������

_user_specified_nameage:KG
#
_output_shapes
:���������
 
_user_specified_namegender:JF
#
_output_shapes
:���������

_user_specified_namelevel:LH
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
F__inference_brute_force_layer_call_and_return_conditional_losses_15475
	queries_2	
	queries_1
	queries_3	
queries	
sequential_13_15435
sequential_13_15437	&
sequential_13_15439:	�
sequential_13_15441
sequential_13_15443	%
sequential_13_15445:
sequential_13_15447
sequential_13_15449	%
sequential_13_15451:9
sequential_13_15453
sequential_13_15455	%
sequential_13_15457:%
sequential_13_15459:@!
sequential_13_15461:0
matmul_readvariableop_resource:
gather_resource:	

identity_1

identity_2	��Gather�MatMul/ReadVariableOp�%sequential_13/StatefulPartitionedCall�
%sequential_13/StatefulPartitionedCallStatefulPartitionedCall	queries_2	queries_1	queries_3queriessequential_13_15435sequential_13_15437sequential_13_15439sequential_13_15441sequential_13_15443sequential_13_15445sequential_13_15447sequential_13_15449sequential_13_15451sequential_13_15453sequential_13_15455sequential_13_15457sequential_13_15459sequential_13_15461*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_13_layer_call_and_return_conditional_losses_15144t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0�
MatMulMatMul.sequential_13/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:���������
:���������
�
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:���������
*
dtype0	W
IdentityIdentityGather:output:0*
T0	*'
_output_shapes
:���������
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:���������
b

Identity_2IdentityIdentity:output:0^NoOp*
T0	*'
_output_shapes
:���������
�
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:���������:���������:���������:���������: : : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential_13/StatefulPartitionedCall%sequential_13/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	queries:LH
#
_output_shapes
:���������
!
_user_specified_name	queries:LH
#
_output_shapes
:���������
!
_user_specified_name	queries:LH
#
_output_shapes
:���������
!
_user_specified_name	queries:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
,
__inference__destroyer_16591
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
G__inference_embedding_10_layer_call_and_return_conditional_losses_16537

inputs	(
embedding_lookup_16531:
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_16531inputs*
Tindices0	*)
_class
loc:@embedding_lookup/16531*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/16531*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_sequential_9_layer_call_and_return_conditional_losses_16329

inputs	?
;integer_lookup_4_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_4_none_lookup_lookuptablefindv2_default_value	5
"embedding_7_embedding_lookup_16323:	�
identity��embedding_7/embedding_lookup�.integer_lookup_4/None_Lookup/LookupTableFindV2�
.integer_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_4_none_lookup_lookuptablefindv2_table_handleinputs<integer_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_4/IdentityIdentity7integer_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
embedding_7/embedding_lookupResourceGather"embedding_7_embedding_lookup_16323"integer_lookup_4/Identity:output:0*
Tindices0	*5
_class+
)'loc:@embedding_7/embedding_lookup/16323*'
_output_shapes
:���������*
dtype0�
%embedding_7/embedding_lookup/IdentityIdentity%embedding_7/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_7/embedding_lookup/16323*'
_output_shapes
:����������
'embedding_7/embedding_lookup/Identity_1Identity.embedding_7/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
IdentityIdentity0embedding_7/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^embedding_7/embedding_lookup/^integer_lookup_4/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2<
embedding_7/embedding_lookupembedding_7/embedding_lookup2`
.integer_lookup_4/None_Lookup/LookupTableFindV2.integer_lookup_4/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
,__inference_sequential_9_layer_call_fn_16303

inputs	
unknown
	unknown_0	
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_14374o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
-__inference_sequential_13_layer_call_fn_16006

inputs_age	
inputs_gender
inputs_level	
inputs_user_id	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5
	unknown_6	
	unknown_7:9
	unknown_8
	unknown_9	

unknown_10:

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
inputs_ageinputs_genderinputs_levelinputs_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_13_layer_call_and_return_conditional_losses_15217o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:���������:���������:���������:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:���������
$
_user_specified_name
inputs_age:RN
#
_output_shapes
:���������
'
_user_specified_nameinputs_gender:QM
#
_output_shapes
:���������
&
_user_specified_nameinputs_level:SO
#
_output_shapes
:���������
(
_user_specified_nameinputs_user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
:
__inference__creator_16542
identity��
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name7143*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�W
�
H__inference_sequential_13_layer_call_and_return_conditional_losses_16108

inputs_age	
inputs_gender
inputs_level	
inputs_user_id	Y
Uuser_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_table_handleZ
Vuser_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_default_value	O
<user_model_1_sequential_9_embedding_7_embedding_lookup_16067:	�Y
Uuser_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_table_handleZ
Vuser_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_default_value	O
=user_model_1_sequential_10_embedding_8_embedding_lookup_16076:Z
Vuser_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_table_handle[
Wuser_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_default_value	O
=user_model_1_sequential_11_embedding_9_embedding_lookup_16085:9Z
Vuser_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_table_handle[
Wuser_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_default_value	P
>user_model_1_sequential_12_embedding_10_embedding_lookup_16094:8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity��dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�7user_model_1/sequential_10/embedding_8/embedding_lookup�Huser_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2�7user_model_1/sequential_11/embedding_9/embedding_lookup�Iuser_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2�8user_model_1/sequential_12/embedding_10/embedding_lookup�Iuser_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2�6user_model_1/sequential_9/embedding_7/embedding_lookup�Huser_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2�
Huser_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2Uuser_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_table_handleinputs_user_idVuser_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
3user_model_1/sequential_9/integer_lookup_4/IdentityIdentityQuser_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
6user_model_1/sequential_9/embedding_7/embedding_lookupResourceGather<user_model_1_sequential_9_embedding_7_embedding_lookup_16067<user_model_1/sequential_9/integer_lookup_4/Identity:output:0*
Tindices0	*O
_classE
CAloc:@user_model_1/sequential_9/embedding_7/embedding_lookup/16067*'
_output_shapes
:���������*
dtype0�
?user_model_1/sequential_9/embedding_7/embedding_lookup/IdentityIdentity?user_model_1/sequential_9/embedding_7/embedding_lookup:output:0*
T0*O
_classE
CAloc:@user_model_1/sequential_9/embedding_7/embedding_lookup/16067*'
_output_shapes
:����������
Auser_model_1/sequential_9/embedding_7/embedding_lookup/Identity_1IdentityHuser_model_1/sequential_9/embedding_7/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Huser_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2Uuser_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_table_handleinputs_genderVuser_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
3user_model_1/sequential_10/string_lookup_3/IdentityIdentityQuser_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
7user_model_1/sequential_10/embedding_8/embedding_lookupResourceGather=user_model_1_sequential_10_embedding_8_embedding_lookup_16076<user_model_1/sequential_10/string_lookup_3/Identity:output:0*
Tindices0	*P
_classF
DBloc:@user_model_1/sequential_10/embedding_8/embedding_lookup/16076*'
_output_shapes
:���������*
dtype0�
@user_model_1/sequential_10/embedding_8/embedding_lookup/IdentityIdentity@user_model_1/sequential_10/embedding_8/embedding_lookup:output:0*
T0*P
_classF
DBloc:@user_model_1/sequential_10/embedding_8/embedding_lookup/16076*'
_output_shapes
:����������
Buser_model_1/sequential_10/embedding_8/embedding_lookup/Identity_1IdentityIuser_model_1/sequential_10/embedding_8/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Iuser_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2Vuser_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_table_handle
inputs_ageWuser_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
4user_model_1/sequential_11/integer_lookup_5/IdentityIdentityRuser_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
7user_model_1/sequential_11/embedding_9/embedding_lookupResourceGather=user_model_1_sequential_11_embedding_9_embedding_lookup_16085=user_model_1/sequential_11/integer_lookup_5/Identity:output:0*
Tindices0	*P
_classF
DBloc:@user_model_1/sequential_11/embedding_9/embedding_lookup/16085*'
_output_shapes
:���������*
dtype0�
@user_model_1/sequential_11/embedding_9/embedding_lookup/IdentityIdentity@user_model_1/sequential_11/embedding_9/embedding_lookup:output:0*
T0*P
_classF
DBloc:@user_model_1/sequential_11/embedding_9/embedding_lookup/16085*'
_output_shapes
:����������
Buser_model_1/sequential_11/embedding_9/embedding_lookup/Identity_1IdentityIuser_model_1/sequential_11/embedding_9/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Iuser_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2Vuser_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_table_handleinputs_levelWuser_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
4user_model_1/sequential_12/integer_lookup_6/IdentityIdentityRuser_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
8user_model_1/sequential_12/embedding_10/embedding_lookupResourceGather>user_model_1_sequential_12_embedding_10_embedding_lookup_16094=user_model_1/sequential_12/integer_lookup_6/Identity:output:0*
Tindices0	*Q
_classG
ECloc:@user_model_1/sequential_12/embedding_10/embedding_lookup/16094*'
_output_shapes
:���������*
dtype0�
Auser_model_1/sequential_12/embedding_10/embedding_lookup/IdentityIdentityAuser_model_1/sequential_12/embedding_10/embedding_lookup:output:0*
T0*Q
_classG
ECloc:@user_model_1/sequential_12/embedding_10/embedding_lookup/16094*'
_output_shapes
:����������
Cuser_model_1/sequential_12/embedding_10/embedding_lookup/Identity_1IdentityJuser_model_1/sequential_12/embedding_10/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������Z
user_model_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
user_model_1/concatConcatV2Juser_model_1/sequential_9/embedding_7/embedding_lookup/Identity_1:output:0Kuser_model_1/sequential_10/embedding_8/embedding_lookup/Identity_1:output:0Kuser_model_1/sequential_11/embedding_9/embedding_lookup/Identity_1:output:0Luser_model_1/sequential_12/embedding_10/embedding_lookup/Identity_1:output:0!user_model_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_3/MatMulMatMuluser_model_1/concat:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp8^user_model_1/sequential_10/embedding_8/embedding_lookupI^user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV28^user_model_1/sequential_11/embedding_9/embedding_lookupJ^user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV29^user_model_1/sequential_12/embedding_10/embedding_lookupJ^user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV27^user_model_1/sequential_9/embedding_7/embedding_lookupI^user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:���������:���������:���������:���������: : : : : : : : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2r
7user_model_1/sequential_10/embedding_8/embedding_lookup7user_model_1/sequential_10/embedding_8/embedding_lookup2�
Huser_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2Huser_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV22r
7user_model_1/sequential_11/embedding_9/embedding_lookup7user_model_1/sequential_11/embedding_9/embedding_lookup2�
Iuser_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2Iuser_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV22t
8user_model_1/sequential_12/embedding_10/embedding_lookup8user_model_1/sequential_12/embedding_10/embedding_lookup2�
Iuser_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2Iuser_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV22p
6user_model_1/sequential_9/embedding_7/embedding_lookup6user_model_1/sequential_9/embedding_7/embedding_lookup2�
Huser_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2Huser_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2:O K
#
_output_shapes
:���������
$
_user_specified_name
inputs_age:RN
#
_output_shapes
:���������
'
_user_specified_nameinputs_gender:QM
#
_output_shapes
:���������
&
_user_specified_nameinputs_level:SO
#
_output_shapes
:���������
(
_user_specified_nameinputs_user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
F__inference_brute_force_layer_call_and_return_conditional_losses_15377
age	

gender	
level	
user_id	
sequential_13_15337
sequential_13_15339	&
sequential_13_15341:	�
sequential_13_15343
sequential_13_15345	%
sequential_13_15347:
sequential_13_15349
sequential_13_15351	%
sequential_13_15353:9
sequential_13_15355
sequential_13_15357	%
sequential_13_15359:%
sequential_13_15361:@!
sequential_13_15363:0
matmul_readvariableop_resource:
gather_resource:	

identity_1

identity_2	��Gather�MatMul/ReadVariableOp�%sequential_13/StatefulPartitionedCall�
%sequential_13/StatefulPartitionedCallStatefulPartitionedCallagegenderleveluser_idsequential_13_15337sequential_13_15339sequential_13_15341sequential_13_15343sequential_13_15345sequential_13_15347sequential_13_15349sequential_13_15351sequential_13_15353sequential_13_15355sequential_13_15357sequential_13_15359sequential_13_15361sequential_13_15363*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_13_layer_call_and_return_conditional_losses_15144t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0�
MatMulMatMul.sequential_13/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:���������
:���������
�
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:���������
*
dtype0	W
IdentityIdentityGather:output:0*
T0	*'
_output_shapes
:���������
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:���������
b

Identity_2IdentityIdentity:output:0^NoOp*
T0	*'
_output_shapes
:���������
�
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:���������:���������:���������:���������: : : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential_13/StatefulPartitionedCall%sequential_13/StatefulPartitionedCall:H D
#
_output_shapes
:���������

_user_specified_nameage:KG
#
_output_shapes
:���������
 
_user_specified_namegender:JF
#
_output_shapes
:���������

_user_specified_namelevel:LH
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
-__inference_sequential_11_layer_call_fn_16399

inputs	
unknown
	unknown_0	
	unknown_1:9
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_14590o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�D
�
G__inference_user_model_1_layer_call_and_return_conditional_losses_16262

inputs_age	
inputs_gender
inputs_level	
inputs_user_id	L
Hsequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_table_handleM
Isequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_default_value	B
/sequential_9_embedding_7_embedding_lookup_16227:	�L
Hsequential_10_string_lookup_3_none_lookup_lookuptablefindv2_table_handleM
Isequential_10_string_lookup_3_none_lookup_lookuptablefindv2_default_value	B
0sequential_10_embedding_8_embedding_lookup_16236:M
Isequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_table_handleN
Jsequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_default_value	B
0sequential_11_embedding_9_embedding_lookup_16245:9M
Isequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_table_handleN
Jsequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_default_value	C
1sequential_12_embedding_10_embedding_lookup_16254:
identity��*sequential_10/embedding_8/embedding_lookup�;sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2�*sequential_11/embedding_9/embedding_lookup�<sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2�+sequential_12/embedding_10/embedding_lookup�<sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2�)sequential_9/embedding_7/embedding_lookup�;sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2�
;sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2Hsequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_table_handleinputs_user_idIsequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
&sequential_9/integer_lookup_4/IdentityIdentityDsequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)sequential_9/embedding_7/embedding_lookupResourceGather/sequential_9_embedding_7_embedding_lookup_16227/sequential_9/integer_lookup_4/Identity:output:0*
Tindices0	*B
_class8
64loc:@sequential_9/embedding_7/embedding_lookup/16227*'
_output_shapes
:���������*
dtype0�
2sequential_9/embedding_7/embedding_lookup/IdentityIdentity2sequential_9/embedding_7/embedding_lookup:output:0*
T0*B
_class8
64loc:@sequential_9/embedding_7/embedding_lookup/16227*'
_output_shapes
:����������
4sequential_9/embedding_7/embedding_lookup/Identity_1Identity;sequential_9/embedding_7/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
;sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2Hsequential_10_string_lookup_3_none_lookup_lookuptablefindv2_table_handleinputs_genderIsequential_10_string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
&sequential_10/string_lookup_3/IdentityIdentityDsequential_10/string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
*sequential_10/embedding_8/embedding_lookupResourceGather0sequential_10_embedding_8_embedding_lookup_16236/sequential_10/string_lookup_3/Identity:output:0*
Tindices0	*C
_class9
75loc:@sequential_10/embedding_8/embedding_lookup/16236*'
_output_shapes
:���������*
dtype0�
3sequential_10/embedding_8/embedding_lookup/IdentityIdentity3sequential_10/embedding_8/embedding_lookup:output:0*
T0*C
_class9
75loc:@sequential_10/embedding_8/embedding_lookup/16236*'
_output_shapes
:����������
5sequential_10/embedding_8/embedding_lookup/Identity_1Identity<sequential_10/embedding_8/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
<sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2Isequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_table_handle
inputs_ageJsequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
'sequential_11/integer_lookup_5/IdentityIdentityEsequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
*sequential_11/embedding_9/embedding_lookupResourceGather0sequential_11_embedding_9_embedding_lookup_162450sequential_11/integer_lookup_5/Identity:output:0*
Tindices0	*C
_class9
75loc:@sequential_11/embedding_9/embedding_lookup/16245*'
_output_shapes
:���������*
dtype0�
3sequential_11/embedding_9/embedding_lookup/IdentityIdentity3sequential_11/embedding_9/embedding_lookup:output:0*
T0*C
_class9
75loc:@sequential_11/embedding_9/embedding_lookup/16245*'
_output_shapes
:����������
5sequential_11/embedding_9/embedding_lookup/Identity_1Identity<sequential_11/embedding_9/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
<sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2Isequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_table_handleinputs_levelJsequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
'sequential_12/integer_lookup_6/IdentityIdentityEsequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
+sequential_12/embedding_10/embedding_lookupResourceGather1sequential_12_embedding_10_embedding_lookup_162540sequential_12/integer_lookup_6/Identity:output:0*
Tindices0	*D
_class:
86loc:@sequential_12/embedding_10/embedding_lookup/16254*'
_output_shapes
:���������*
dtype0�
4sequential_12/embedding_10/embedding_lookup/IdentityIdentity4sequential_12/embedding_10/embedding_lookup:output:0*
T0*D
_class:
86loc:@sequential_12/embedding_10/embedding_lookup/16254*'
_output_shapes
:����������
6sequential_12/embedding_10/embedding_lookup/Identity_1Identity=sequential_12/embedding_10/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2=sequential_9/embedding_7/embedding_lookup/Identity_1:output:0>sequential_10/embedding_8/embedding_lookup/Identity_1:output:0>sequential_11/embedding_9/embedding_lookup/Identity_1:output:0?sequential_12/embedding_10/embedding_lookup/Identity_1:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp+^sequential_10/embedding_8/embedding_lookup<^sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2+^sequential_11/embedding_9/embedding_lookup=^sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2,^sequential_12/embedding_10/embedding_lookup=^sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2*^sequential_9/embedding_7/embedding_lookup<^sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : : : 2X
*sequential_10/embedding_8/embedding_lookup*sequential_10/embedding_8/embedding_lookup2z
;sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2;sequential_10/string_lookup_3/None_Lookup/LookupTableFindV22X
*sequential_11/embedding_9/embedding_lookup*sequential_11/embedding_9/embedding_lookup2|
<sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2<sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV22Z
+sequential_12/embedding_10/embedding_lookup+sequential_12/embedding_10/embedding_lookup2|
<sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2<sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV22V
)sequential_9/embedding_7/embedding_lookup)sequential_9/embedding_7/embedding_lookup2z
;sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2;sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2:O K
#
_output_shapes
:���������
$
_user_specified_name
inputs_age:RN
#
_output_shapes
:���������
'
_user_specified_nameinputs_gender:QM
#
_output_shapes
:���������
&
_user_specified_nameinputs_level:SO
#
_output_shapes
:���������
(
_user_specified_nameinputs_user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
+__inference_brute_force_layer_call_fn_15600
age	

gender	
level	
user_id	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5
	unknown_6	
	unknown_7:9
	unknown_8
	unknown_9	

unknown_10:

unknown_11:@

unknown_12:

unknown_13:

unknown_14:	
identity

identity_1	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallagegenderleveluser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2							*
Tout
2	*
_collective_manager_ids
 *:
_output_shapes(
&:���������
:���������
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_15563o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0	*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:���������:���������:���������:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:H D
#
_output_shapes
:���������

_user_specified_nameage:KG
#
_output_shapes
:���������
 
_user_specified_namegender:JF
#
_output_shapes
:���������

_user_specified_namelevel:LH
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
,
__inference__destroyer_16573
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
:
__inference__creator_16596
identity��
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name7212*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�
�
H__inference_sequential_10_layer_call_and_return_conditional_losses_14460

inputs>
:string_lookup_3_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_3_none_lookup_lookuptablefindv2_default_value	#
embedding_8_14456:
identity��#embedding_8/StatefulPartitionedCall�-string_lookup_3/None_Lookup/LookupTableFindV2�
-string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_3_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup_3/IdentityIdentity6string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_8/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_3/Identity:output:0embedding_8_14456*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_8_layer_call_and_return_conditional_losses_14430{
IdentityIdentity,embedding_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^embedding_8/StatefulPartitionedCall.^string_lookup_3/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2^
-string_lookup_3/None_Lookup/LookupTableFindV2-string_lookup_3/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
H__inference_sequential_10_layer_call_and_return_conditional_losses_16364

inputs>
:string_lookup_3_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_3_none_lookup_lookuptablefindv2_default_value	4
"embedding_8_embedding_lookup_16358:
identity��embedding_8/embedding_lookup�-string_lookup_3/None_Lookup/LookupTableFindV2�
-string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_3_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup_3/IdentityIdentity6string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
embedding_8/embedding_lookupResourceGather"embedding_8_embedding_lookup_16358!string_lookup_3/Identity:output:0*
Tindices0	*5
_class+
)'loc:@embedding_8/embedding_lookup/16358*'
_output_shapes
:���������*
dtype0�
%embedding_8/embedding_lookup/IdentityIdentity%embedding_8/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_8/embedding_lookup/16358*'
_output_shapes
:����������
'embedding_8/embedding_lookup/Identity_1Identity.embedding_8/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
IdentityIdentity0embedding_8/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^embedding_8/embedding_lookup.^string_lookup_3/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2<
embedding_8/embedding_lookupembedding_8/embedding_lookup2^
-string_lookup_3/None_Lookup/LookupTableFindV2-string_lookup_3/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
H__inference_sequential_10_layer_call_and_return_conditional_losses_14446
string_lookup_3_input>
:string_lookup_3_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_3_none_lookup_lookuptablefindv2_default_value	#
embedding_8_14442:
identity��#embedding_8/StatefulPartitionedCall�-string_lookup_3/None_Lookup/LookupTableFindV2�
-string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_3_none_lookup_lookuptablefindv2_table_handlestring_lookup_3_input;string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup_3/IdentityIdentity6string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_8/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_3/Identity:output:0embedding_8_14442*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_8_layer_call_and_return_conditional_losses_14430{
IdentityIdentity,embedding_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^embedding_8/StatefulPartitionedCall.^string_lookup_3/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2^
-string_lookup_3/None_Lookup/LookupTableFindV2-string_lookup_3/None_Lookup/LookupTableFindV2:Z V
#
_output_shapes
:���������
/
_user_specified_namestring_lookup_3_input:

_output_shapes
: 
�
�
G__inference_sequential_9_layer_call_and_return_conditional_losses_14374

inputs	?
;integer_lookup_4_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_4_none_lookup_lookuptablefindv2_default_value	$
embedding_7_14370:	�
identity��#embedding_7/StatefulPartitionedCall�.integer_lookup_4/None_Lookup/LookupTableFindV2�
.integer_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_4_none_lookup_lookuptablefindv2_table_handleinputs<integer_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_4/IdentityIdentity7integer_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_7/StatefulPartitionedCallStatefulPartitionedCall"integer_lookup_4/Identity:output:0embedding_7_14370*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_7_layer_call_and_return_conditional_losses_14322{
IdentityIdentity,embedding_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^embedding_7/StatefulPartitionedCall/^integer_lookup_4/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_7/StatefulPartitionedCall#embedding_7/StatefulPartitionedCall2`
.integer_lookup_4/None_Lookup/LookupTableFindV2.integer_lookup_4/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
F__inference_brute_force_layer_call_and_return_conditional_losses_15563
	queries_2	
	queries_1
	queries_3	
queries	
sequential_13_15523
sequential_13_15525	&
sequential_13_15527:	�
sequential_13_15529
sequential_13_15531	%
sequential_13_15533:
sequential_13_15535
sequential_13_15537	%
sequential_13_15539:9
sequential_13_15541
sequential_13_15543	%
sequential_13_15545:%
sequential_13_15547:@!
sequential_13_15549:0
matmul_readvariableop_resource:
gather_resource:	

identity_1

identity_2	��Gather�MatMul/ReadVariableOp�%sequential_13/StatefulPartitionedCall�
%sequential_13/StatefulPartitionedCallStatefulPartitionedCall	queries_2	queries_1	queries_3queriessequential_13_15523sequential_13_15525sequential_13_15527sequential_13_15529sequential_13_15531sequential_13_15533sequential_13_15535sequential_13_15537sequential_13_15539sequential_13_15541sequential_13_15543sequential_13_15545sequential_13_15547sequential_13_15549*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_13_layer_call_and_return_conditional_losses_15217t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0�
MatMulMatMul.sequential_13/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:���������
:���������
�
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:���������
*
dtype0	W
IdentityIdentityGather:output:0*
T0	*'
_output_shapes
:���������
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:���������
b

Identity_2IdentityIdentity:output:0^NoOp*
T0	*'
_output_shapes
:���������
�
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:���������:���������:���������:���������: : : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential_13/StatefulPartitionedCall%sequential_13/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	queries:LH
#
_output_shapes
:���������
!
_user_specified_name	queries:LH
#
_output_shapes
:���������
!
_user_specified_name	queries:LH
#
_output_shapes
:���������
!
_user_specified_name	queries:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
G__inference_user_model_1_layer_call_and_return_conditional_losses_14775
age	

gender	
level	
user_id	
sequential_9_14744
sequential_9_14746	%
sequential_9_14748:	�
sequential_10_14751
sequential_10_14753	%
sequential_10_14755:
sequential_11_14758
sequential_11_14760	%
sequential_11_14762:9
sequential_12_14765
sequential_12_14767	%
sequential_12_14769:
identity��%sequential_10/StatefulPartitionedCall�%sequential_11/StatefulPartitionedCall�%sequential_12/StatefulPartitionedCall�$sequential_9/StatefulPartitionedCall�
$sequential_9/StatefulPartitionedCallStatefulPartitionedCalluser_idsequential_9_14744sequential_9_14746sequential_9_14748*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_14352�
%sequential_10/StatefulPartitionedCallStatefulPartitionedCallgendersequential_10_14751sequential_10_14753sequential_10_14755*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_14460�
%sequential_11/StatefulPartitionedCallStatefulPartitionedCallagesequential_11_14758sequential_11_14760sequential_11_14762*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_14568�
%sequential_12/StatefulPartitionedCallStatefulPartitionedCalllevelsequential_12_14765sequential_12_14767sequential_12_14769*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_14676M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2-sequential_9/StatefulPartitionedCall:output:0.sequential_10/StatefulPartitionedCall:output:0.sequential_11/StatefulPartitionedCall:output:0.sequential_12/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp&^sequential_10/StatefulPartitionedCall&^sequential_11/StatefulPartitionedCall&^sequential_12/StatefulPartitionedCall%^sequential_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : : : 2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall2N
%sequential_11/StatefulPartitionedCall%sequential_11/StatefulPartitionedCall2N
%sequential_12/StatefulPartitionedCall%sequential_12/StatefulPartitionedCall2L
$sequential_9/StatefulPartitionedCall$sequential_9/StatefulPartitionedCall:H D
#
_output_shapes
:���������

_user_specified_nameage:KG
#
_output_shapes
:���������
 
_user_specified_namegender:JF
#
_output_shapes
:���������

_user_specified_namelevel:LH
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
-__inference_sequential_13_layer_call_fn_15970

inputs_age	
inputs_gender
inputs_level	
inputs_user_id	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5
	unknown_6	
	unknown_7:9
	unknown_8
	unknown_9	

unknown_10:

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
inputs_ageinputs_genderinputs_levelinputs_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_13_layer_call_and_return_conditional_losses_15144o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:���������:���������:���������:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:���������
$
_user_specified_name
inputs_age:RN
#
_output_shapes
:���������
'
_user_specified_nameinputs_gender:QM
#
_output_shapes
:���������
&
_user_specified_nameinputs_level:SO
#
_output_shapes
:���������
(
_user_specified_nameinputs_user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_sequential_11_layer_call_and_return_conditional_losses_14590

inputs	?
;integer_lookup_5_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_5_none_lookup_lookuptablefindv2_default_value	#
embedding_9_14586:9
identity��#embedding_9/StatefulPartitionedCall�.integer_lookup_5/None_Lookup/LookupTableFindV2�
.integer_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_5_none_lookup_lookuptablefindv2_table_handleinputs<integer_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_5/IdentityIdentity7integer_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_9/StatefulPartitionedCallStatefulPartitionedCall"integer_lookup_5/Identity:output:0embedding_9_14586*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_9_layer_call_and_return_conditional_losses_14538{
IdentityIdentity,embedding_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^embedding_9/StatefulPartitionedCall/^integer_lookup_5/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_9/StatefulPartitionedCall#embedding_9/StatefulPartitionedCall2`
.integer_lookup_5/None_Lookup/LookupTableFindV2.integer_lookup_5/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
,__inference_sequential_9_layer_call_fn_14383
integer_lookup_4_input	
unknown
	unknown_0	
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinteger_lookup_4_inputunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_14374o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
#
_output_shapes
:���������
0
_user_specified_nameinteger_lookup_4_input:

_output_shapes
: 
�
�
H__inference_sequential_10_layer_call_and_return_conditional_losses_14435
string_lookup_3_input>
:string_lookup_3_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_3_none_lookup_lookuptablefindv2_default_value	#
embedding_8_14431:
identity��#embedding_8/StatefulPartitionedCall�-string_lookup_3/None_Lookup/LookupTableFindV2�
-string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_3_none_lookup_lookuptablefindv2_table_handlestring_lookup_3_input;string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup_3/IdentityIdentity6string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_8/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_3/Identity:output:0embedding_8_14431*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_8_layer_call_and_return_conditional_losses_14430{
IdentityIdentity,embedding_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^embedding_8/StatefulPartitionedCall.^string_lookup_3/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2^
-string_lookup_3/None_Lookup/LookupTableFindV2-string_lookup_3/None_Lookup/LookupTableFindV2:Z V
#
_output_shapes
:���������
/
_user_specified_namestring_lookup_3_input:

_output_shapes
: 
�
�
H__inference_sequential_13_layer_call_and_return_conditional_losses_15101
age	

gender	
level	
user_id	
user_model_1_15070
user_model_1_15072	%
user_model_1_15074:	�
user_model_1_15076
user_model_1_15078	$
user_model_1_15080:
user_model_1_15082
user_model_1_15084	$
user_model_1_15086:9
user_model_1_15088
user_model_1_15090	$
user_model_1_15092:
dense_3_15095:@
dense_3_15097:
identity��dense_3/StatefulPartitionedCall�$user_model_1/StatefulPartitionedCall�
$user_model_1/StatefulPartitionedCallStatefulPartitionedCallagegenderleveluser_iduser_model_1_15070user_model_1_15072user_model_1_15074user_model_1_15076user_model_1_15078user_model_1_15080user_model_1_15082user_model_1_15084user_model_1_15086user_model_1_15088user_model_1_15090user_model_1_15092*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_14924�
dense_3/StatefulPartitionedCallStatefulPartitionedCall-user_model_1/StatefulPartitionedCall:output:0dense_3_15095dense_3_15097*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_15057w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_3/StatefulPartitionedCall%^user_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:���������:���������:���������:���������: : : : : : : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$user_model_1/StatefulPartitionedCall$user_model_1/StatefulPartitionedCall:H D
#
_output_shapes
:���������

_user_specified_nameage:KG
#
_output_shapes
:���������
 
_user_specified_namegender:JF
#
_output_shapes
:���������

_user_specified_namelevel:LH
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�m
�
F__inference_brute_force_layer_call_and_return_conditional_losses_15934
queries_age	
queries_gender
queries_level	
queries_user_id	g
csequential_13_user_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_table_handleh
dsequential_13_user_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_default_value	]
Jsequential_13_user_model_1_sequential_9_embedding_7_embedding_lookup_15883:	�g
csequential_13_user_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_table_handleh
dsequential_13_user_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_default_value	]
Ksequential_13_user_model_1_sequential_10_embedding_8_embedding_lookup_15892:h
dsequential_13_user_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_table_handlei
esequential_13_user_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_default_value	]
Ksequential_13_user_model_1_sequential_11_embedding_9_embedding_lookup_15901:9h
dsequential_13_user_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_table_handlei
esequential_13_user_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_default_value	^
Lsequential_13_user_model_1_sequential_12_embedding_10_embedding_lookup_15910:F
4sequential_13_dense_3_matmul_readvariableop_resource:@C
5sequential_13_dense_3_biasadd_readvariableop_resource:0
matmul_readvariableop_resource:
gather_resource:	

identity_1

identity_2	��Gather�MatMul/ReadVariableOp�,sequential_13/dense_3/BiasAdd/ReadVariableOp�+sequential_13/dense_3/MatMul/ReadVariableOp�Esequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup�Vsequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2�Esequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup�Wsequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2�Fsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup�Wsequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2�Dsequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup�Vsequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2�
Vsequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2csequential_13_user_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_table_handlequeries_user_iddsequential_13_user_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
Asequential_13/user_model_1/sequential_9/integer_lookup_4/IdentityIdentity_sequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Dsequential_13/user_model_1/sequential_9/embedding_7/embedding_lookupResourceGatherJsequential_13_user_model_1_sequential_9_embedding_7_embedding_lookup_15883Jsequential_13/user_model_1/sequential_9/integer_lookup_4/Identity:output:0*
Tindices0	*]
_classS
QOloc:@sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/15883*'
_output_shapes
:���������*
dtype0�
Msequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/IdentityIdentityMsequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup:output:0*
T0*]
_classS
QOloc:@sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/15883*'
_output_shapes
:����������
Osequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/Identity_1IdentityVsequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Vsequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2csequential_13_user_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_table_handlequeries_genderdsequential_13_user_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
Asequential_13/user_model_1/sequential_10/string_lookup_3/IdentityIdentity_sequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Esequential_13/user_model_1/sequential_10/embedding_8/embedding_lookupResourceGatherKsequential_13_user_model_1_sequential_10_embedding_8_embedding_lookup_15892Jsequential_13/user_model_1/sequential_10/string_lookup_3/Identity:output:0*
Tindices0	*^
_classT
RPloc:@sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/15892*'
_output_shapes
:���������*
dtype0�
Nsequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/IdentityIdentityNsequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup:output:0*
T0*^
_classT
RPloc:@sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/15892*'
_output_shapes
:����������
Psequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/Identity_1IdentityWsequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Wsequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2dsequential_13_user_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_table_handlequeries_ageesequential_13_user_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
Bsequential_13/user_model_1/sequential_11/integer_lookup_5/IdentityIdentity`sequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Esequential_13/user_model_1/sequential_11/embedding_9/embedding_lookupResourceGatherKsequential_13_user_model_1_sequential_11_embedding_9_embedding_lookup_15901Ksequential_13/user_model_1/sequential_11/integer_lookup_5/Identity:output:0*
Tindices0	*^
_classT
RPloc:@sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/15901*'
_output_shapes
:���������*
dtype0�
Nsequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/IdentityIdentityNsequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup:output:0*
T0*^
_classT
RPloc:@sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/15901*'
_output_shapes
:����������
Psequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/Identity_1IdentityWsequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Wsequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2dsequential_13_user_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_table_handlequeries_levelesequential_13_user_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
Bsequential_13/user_model_1/sequential_12/integer_lookup_6/IdentityIdentity`sequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Fsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookupResourceGatherLsequential_13_user_model_1_sequential_12_embedding_10_embedding_lookup_15910Ksequential_13/user_model_1/sequential_12/integer_lookup_6/Identity:output:0*
Tindices0	*_
_classU
SQloc:@sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/15910*'
_output_shapes
:���������*
dtype0�
Osequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/IdentityIdentityOsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup:output:0*
T0*_
_classU
SQloc:@sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/15910*'
_output_shapes
:����������
Qsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/Identity_1IdentityXsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������h
&sequential_13/user_model_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_13/user_model_1/concatConcatV2Xsequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/Identity_1:output:0Ysequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/Identity_1:output:0Ysequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/Identity_1:output:0Zsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/Identity_1:output:0/sequential_13/user_model_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@�
+sequential_13/dense_3/MatMul/ReadVariableOpReadVariableOp4sequential_13_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
sequential_13/dense_3/MatMulMatMul*sequential_13/user_model_1/concat:output:03sequential_13/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,sequential_13/dense_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_13_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_13/dense_3/BiasAddBiasAdd&sequential_13/dense_3/MatMul:product:04sequential_13/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0�
MatMulMatMul&sequential_13/dense_3/BiasAdd:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:���������
:���������
�
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:���������
*
dtype0	W
IdentityIdentityGather:output:0*
T0	*'
_output_shapes
:���������
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:���������
b

Identity_2IdentityIdentity:output:0^NoOp*
T0	*'
_output_shapes
:���������
�
NoOpNoOp^Gather^MatMul/ReadVariableOp-^sequential_13/dense_3/BiasAdd/ReadVariableOp,^sequential_13/dense_3/MatMul/ReadVariableOpF^sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookupW^sequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2F^sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookupX^sequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2G^sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookupX^sequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2E^sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookupW^sequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:���������:���������:���������:���������: : : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2\
,sequential_13/dense_3/BiasAdd/ReadVariableOp,sequential_13/dense_3/BiasAdd/ReadVariableOp2Z
+sequential_13/dense_3/MatMul/ReadVariableOp+sequential_13/dense_3/MatMul/ReadVariableOp2�
Esequential_13/user_model_1/sequential_10/embedding_8/embedding_lookupEsequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup2�
Vsequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2Vsequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV22�
Esequential_13/user_model_1/sequential_11/embedding_9/embedding_lookupEsequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup2�
Wsequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2Wsequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV22�
Fsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookupFsequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup2�
Wsequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2Wsequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV22�
Dsequential_13/user_model_1/sequential_9/embedding_7/embedding_lookupDsequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup2�
Vsequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2Vsequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2:P L
#
_output_shapes
:���������
%
_user_specified_namequeries_age:SO
#
_output_shapes
:���������
(
_user_specified_namequeries_gender:RN
#
_output_shapes
:���������
'
_user_specified_namequeries_level:TP
#
_output_shapes
:���������
)
_user_specified_namequeries_user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�G
�
__inference__traced_save_16704
file_prefix0
"read_disablecopyonread_identifiers:	5
#read_1_disablecopyonread_candidates:B
/read_2_disablecopyonread_embedding_7_embeddings:	�A
/read_3_disablecopyonread_embedding_8_embeddings:A
/read_4_disablecopyonread_embedding_9_embeddings:9B
0read_5_disablecopyonread_embedding_10_embeddings:G
5read_6_disablecopyonread_sequential_13_dense_3_kernel:@A
3read_7_disablecopyonread_sequential_13_dense_3_bias:
savev2_const_12
identity_17��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: t
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_identifiers"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_identifiers^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	e
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:]

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0	*
_output_shapes
:w
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_candidates"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_candidates^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_2/DisableCopyOnReadDisableCopyOnRead/read_2_disablecopyonread_embedding_7_embeddings"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp/read_2_disablecopyonread_embedding_7_embeddings^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_3/DisableCopyOnReadDisableCopyOnRead/read_3_disablecopyonread_embedding_8_embeddings"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp/read_3_disablecopyonread_embedding_8_embeddings^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_4/DisableCopyOnReadDisableCopyOnRead/read_4_disablecopyonread_embedding_9_embeddings"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp/read_4_disablecopyonread_embedding_9_embeddings^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:9*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:9c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:9�
Read_5/DisableCopyOnReadDisableCopyOnRead0read_5_disablecopyonread_embedding_10_embeddings"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp0read_5_disablecopyonread_embedding_10_embeddings^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_6/DisableCopyOnReadDisableCopyOnRead5read_6_disablecopyonread_sequential_13_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp5read_6_disablecopyonread_sequential_13_dense_3_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_7/DisableCopyOnReadDisableCopyOnRead3read_7_disablecopyonread_sequential_13_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp3read_7_disablecopyonread_sequential_13_dense_3_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0savev2_const_12"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2		�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_16Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_17IdentityIdentity_16:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_17Identity_17:output:0*'
_input_shapes
: : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:	

_output_shapes
: 
�
�
H__inference_sequential_12_layer_call_and_return_conditional_losses_16473

inputs	?
;integer_lookup_6_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_6_none_lookup_lookuptablefindv2_default_value	5
#embedding_10_embedding_lookup_16467:
identity��embedding_10/embedding_lookup�.integer_lookup_6/None_Lookup/LookupTableFindV2�
.integer_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_6_none_lookup_lookuptablefindv2_table_handleinputs<integer_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_6/IdentityIdentity7integer_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
embedding_10/embedding_lookupResourceGather#embedding_10_embedding_lookup_16467"integer_lookup_6/Identity:output:0*
Tindices0	*6
_class,
*(loc:@embedding_10/embedding_lookup/16467*'
_output_shapes
:���������*
dtype0�
&embedding_10/embedding_lookup/IdentityIdentity&embedding_10/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_10/embedding_lookup/16467*'
_output_shapes
:����������
(embedding_10/embedding_lookup/Identity_1Identity/embedding_10/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
IdentityIdentity1embedding_10/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^embedding_10/embedding_lookup/^integer_lookup_6/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2>
embedding_10/embedding_lookupembedding_10/embedding_lookup2`
.integer_lookup_6/None_Lookup/LookupTableFindV2.integer_lookup_6/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�	
�
B__inference_dense_3_layer_call_and_return_conditional_losses_16281

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
,
__inference__destroyer_16555
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
G__inference_embedding_10_layer_call_and_return_conditional_losses_14646

inputs	(
embedding_lookup_14640:
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_14640inputs*
Tindices0	*)
_class
loc:@embedding_lookup/14640*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/14640*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_user_model_1_layer_call_and_return_conditional_losses_14924
inputs_2	
inputs_1
inputs_3	

inputs	
sequential_9_14893
sequential_9_14895	%
sequential_9_14897:	�
sequential_10_14900
sequential_10_14902	%
sequential_10_14904:
sequential_11_14907
sequential_11_14909	%
sequential_11_14911:9
sequential_12_14914
sequential_12_14916	%
sequential_12_14918:
identity��%sequential_10/StatefulPartitionedCall�%sequential_11/StatefulPartitionedCall�%sequential_12/StatefulPartitionedCall�$sequential_9/StatefulPartitionedCall�
$sequential_9/StatefulPartitionedCallStatefulPartitionedCallinputssequential_9_14893sequential_9_14895sequential_9_14897*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_14374�
%sequential_10/StatefulPartitionedCallStatefulPartitionedCallinputs_1sequential_10_14900sequential_10_14902sequential_10_14904*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_14482�
%sequential_11/StatefulPartitionedCallStatefulPartitionedCallinputs_2sequential_11_14907sequential_11_14909sequential_11_14911*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_14590�
%sequential_12/StatefulPartitionedCallStatefulPartitionedCallinputs_3sequential_12_14914sequential_12_14916sequential_12_14918*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_14698M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2-sequential_9/StatefulPartitionedCall:output:0.sequential_10/StatefulPartitionedCall:output:0.sequential_11/StatefulPartitionedCall:output:0.sequential_12/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp&^sequential_10/StatefulPartitionedCall&^sequential_11/StatefulPartitionedCall&^sequential_12/StatefulPartitionedCall%^sequential_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : : : 2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall2N
%sequential_11/StatefulPartitionedCall%sequential_11/StatefulPartitionedCall2N
%sequential_12/StatefulPartitionedCall%sequential_12/StatefulPartitionedCall2L
$sequential_9/StatefulPartitionedCall$sequential_9/StatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
,__inference_user_model_1_layer_call_fn_14951
age	

gender	
level	
user_id	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5
	unknown_6	
	unknown_7:9
	unknown_8
	unknown_9	

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallagegenderleveluser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_14924o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:H D
#
_output_shapes
:���������

_user_specified_nameage:KG
#
_output_shapes
:���������
 
_user_specified_namegender:JF
#
_output_shapes
:���������

_user_specified_namelevel:LH
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

+__inference_embedding_8_layer_call_fn_16496

inputs	
unknown:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_8_layer_call_and_return_conditional_losses_14430o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
-__inference_sequential_12_layer_call_fn_16436

inputs	
unknown
	unknown_0	
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_14676o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
H__inference_sequential_10_layer_call_and_return_conditional_losses_16377

inputs>
:string_lookup_3_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_3_none_lookup_lookuptablefindv2_default_value	4
"embedding_8_embedding_lookup_16371:
identity��embedding_8/embedding_lookup�-string_lookup_3/None_Lookup/LookupTableFindV2�
-string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_3_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup_3/IdentityIdentity6string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
embedding_8/embedding_lookupResourceGather"embedding_8_embedding_lookup_16371!string_lookup_3/Identity:output:0*
Tindices0	*5
_class+
)'loc:@embedding_8/embedding_lookup/16371*'
_output_shapes
:���������*
dtype0�
%embedding_8/embedding_lookup/IdentityIdentity%embedding_8/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_8/embedding_lookup/16371*'
_output_shapes
:����������
'embedding_8/embedding_lookup/Identity_1Identity.embedding_8/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
IdentityIdentity0embedding_8/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^embedding_8/embedding_lookup.^string_lookup_3/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2<
embedding_8/embedding_lookupembedding_8/embedding_lookup2^
-string_lookup_3/None_Lookup/LookupTableFindV2-string_lookup_3/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
G__inference_sequential_9_layer_call_and_return_conditional_losses_14338
integer_lookup_4_input	?
;integer_lookup_4_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_4_none_lookup_lookuptablefindv2_default_value	$
embedding_7_14334:	�
identity��#embedding_7/StatefulPartitionedCall�.integer_lookup_4/None_Lookup/LookupTableFindV2�
.integer_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_4_none_lookup_lookuptablefindv2_table_handleinteger_lookup_4_input<integer_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_4/IdentityIdentity7integer_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_7/StatefulPartitionedCallStatefulPartitionedCall"integer_lookup_4/Identity:output:0embedding_7_14334*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_7_layer_call_and_return_conditional_losses_14322{
IdentityIdentity,embedding_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^embedding_7/StatefulPartitionedCall/^integer_lookup_4/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_7/StatefulPartitionedCall#embedding_7/StatefulPartitionedCall2`
.integer_lookup_4/None_Lookup/LookupTableFindV2.integer_lookup_4/None_Lookup/LookupTableFindV2:[ W
#
_output_shapes
:���������
0
_user_specified_nameinteger_lookup_4_input:

_output_shapes
: 
�
�
-__inference_sequential_11_layer_call_fn_14577
integer_lookup_5_input	
unknown
	unknown_0	
	unknown_1:9
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinteger_lookup_5_inputunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_14568o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
#
_output_shapes
:���������
0
_user_specified_nameinteger_lookup_5_input:

_output_shapes
: 
�
�
F__inference_embedding_8_layer_call_and_return_conditional_losses_16505

inputs	(
embedding_lookup_16499:
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_16499inputs*
Tindices0	*)
_class
loc:@embedding_lookup/16499*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/16499*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_embedding_9_layer_call_and_return_conditional_losses_16521

inputs	(
embedding_lookup_16515:9
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_16515inputs*
Tindices0	*)
_class
loc:@embedding_lookup/16515*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/16515*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
-__inference_sequential_10_layer_call_fn_16340

inputs
unknown
	unknown_0	
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_14460o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
-__inference_sequential_12_layer_call_fn_14685
integer_lookup_6_input	
unknown
	unknown_0	
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinteger_lookup_6_inputunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_14676o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
#
_output_shapes
:���������
0
_user_specified_nameinteger_lookup_6_input:

_output_shapes
: 
�
�
,__inference_sequential_9_layer_call_fn_16292

inputs	
unknown
	unknown_0	
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_14352o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
'__inference_dense_3_layer_call_fn_16271

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_15057o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�W
�
H__inference_sequential_13_layer_call_and_return_conditional_losses_16057

inputs_age	
inputs_gender
inputs_level	
inputs_user_id	Y
Uuser_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_table_handleZ
Vuser_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_default_value	O
<user_model_1_sequential_9_embedding_7_embedding_lookup_16016:	�Y
Uuser_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_table_handleZ
Vuser_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_default_value	O
=user_model_1_sequential_10_embedding_8_embedding_lookup_16025:Z
Vuser_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_table_handle[
Wuser_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_default_value	O
=user_model_1_sequential_11_embedding_9_embedding_lookup_16034:9Z
Vuser_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_table_handle[
Wuser_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_default_value	P
>user_model_1_sequential_12_embedding_10_embedding_lookup_16043:8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity��dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�7user_model_1/sequential_10/embedding_8/embedding_lookup�Huser_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2�7user_model_1/sequential_11/embedding_9/embedding_lookup�Iuser_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2�8user_model_1/sequential_12/embedding_10/embedding_lookup�Iuser_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2�6user_model_1/sequential_9/embedding_7/embedding_lookup�Huser_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2�
Huser_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2Uuser_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_table_handleinputs_user_idVuser_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
3user_model_1/sequential_9/integer_lookup_4/IdentityIdentityQuser_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
6user_model_1/sequential_9/embedding_7/embedding_lookupResourceGather<user_model_1_sequential_9_embedding_7_embedding_lookup_16016<user_model_1/sequential_9/integer_lookup_4/Identity:output:0*
Tindices0	*O
_classE
CAloc:@user_model_1/sequential_9/embedding_7/embedding_lookup/16016*'
_output_shapes
:���������*
dtype0�
?user_model_1/sequential_9/embedding_7/embedding_lookup/IdentityIdentity?user_model_1/sequential_9/embedding_7/embedding_lookup:output:0*
T0*O
_classE
CAloc:@user_model_1/sequential_9/embedding_7/embedding_lookup/16016*'
_output_shapes
:����������
Auser_model_1/sequential_9/embedding_7/embedding_lookup/Identity_1IdentityHuser_model_1/sequential_9/embedding_7/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Huser_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2Uuser_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_table_handleinputs_genderVuser_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
3user_model_1/sequential_10/string_lookup_3/IdentityIdentityQuser_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
7user_model_1/sequential_10/embedding_8/embedding_lookupResourceGather=user_model_1_sequential_10_embedding_8_embedding_lookup_16025<user_model_1/sequential_10/string_lookup_3/Identity:output:0*
Tindices0	*P
_classF
DBloc:@user_model_1/sequential_10/embedding_8/embedding_lookup/16025*'
_output_shapes
:���������*
dtype0�
@user_model_1/sequential_10/embedding_8/embedding_lookup/IdentityIdentity@user_model_1/sequential_10/embedding_8/embedding_lookup:output:0*
T0*P
_classF
DBloc:@user_model_1/sequential_10/embedding_8/embedding_lookup/16025*'
_output_shapes
:����������
Buser_model_1/sequential_10/embedding_8/embedding_lookup/Identity_1IdentityIuser_model_1/sequential_10/embedding_8/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Iuser_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2Vuser_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_table_handle
inputs_ageWuser_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
4user_model_1/sequential_11/integer_lookup_5/IdentityIdentityRuser_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
7user_model_1/sequential_11/embedding_9/embedding_lookupResourceGather=user_model_1_sequential_11_embedding_9_embedding_lookup_16034=user_model_1/sequential_11/integer_lookup_5/Identity:output:0*
Tindices0	*P
_classF
DBloc:@user_model_1/sequential_11/embedding_9/embedding_lookup/16034*'
_output_shapes
:���������*
dtype0�
@user_model_1/sequential_11/embedding_9/embedding_lookup/IdentityIdentity@user_model_1/sequential_11/embedding_9/embedding_lookup:output:0*
T0*P
_classF
DBloc:@user_model_1/sequential_11/embedding_9/embedding_lookup/16034*'
_output_shapes
:����������
Buser_model_1/sequential_11/embedding_9/embedding_lookup/Identity_1IdentityIuser_model_1/sequential_11/embedding_9/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Iuser_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2Vuser_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_table_handleinputs_levelWuser_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
4user_model_1/sequential_12/integer_lookup_6/IdentityIdentityRuser_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
8user_model_1/sequential_12/embedding_10/embedding_lookupResourceGather>user_model_1_sequential_12_embedding_10_embedding_lookup_16043=user_model_1/sequential_12/integer_lookup_6/Identity:output:0*
Tindices0	*Q
_classG
ECloc:@user_model_1/sequential_12/embedding_10/embedding_lookup/16043*'
_output_shapes
:���������*
dtype0�
Auser_model_1/sequential_12/embedding_10/embedding_lookup/IdentityIdentityAuser_model_1/sequential_12/embedding_10/embedding_lookup:output:0*
T0*Q
_classG
ECloc:@user_model_1/sequential_12/embedding_10/embedding_lookup/16043*'
_output_shapes
:����������
Cuser_model_1/sequential_12/embedding_10/embedding_lookup/Identity_1IdentityJuser_model_1/sequential_12/embedding_10/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������Z
user_model_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
user_model_1/concatConcatV2Juser_model_1/sequential_9/embedding_7/embedding_lookup/Identity_1:output:0Kuser_model_1/sequential_10/embedding_8/embedding_lookup/Identity_1:output:0Kuser_model_1/sequential_11/embedding_9/embedding_lookup/Identity_1:output:0Luser_model_1/sequential_12/embedding_10/embedding_lookup/Identity_1:output:0!user_model_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_3/MatMulMatMuluser_model_1/concat:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp8^user_model_1/sequential_10/embedding_8/embedding_lookupI^user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV28^user_model_1/sequential_11/embedding_9/embedding_lookupJ^user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV29^user_model_1/sequential_12/embedding_10/embedding_lookupJ^user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV27^user_model_1/sequential_9/embedding_7/embedding_lookupI^user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:���������:���������:���������:���������: : : : : : : : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2r
7user_model_1/sequential_10/embedding_8/embedding_lookup7user_model_1/sequential_10/embedding_8/embedding_lookup2�
Huser_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2Huser_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV22r
7user_model_1/sequential_11/embedding_9/embedding_lookup7user_model_1/sequential_11/embedding_9/embedding_lookup2�
Iuser_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2Iuser_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV22t
8user_model_1/sequential_12/embedding_10/embedding_lookup8user_model_1/sequential_12/embedding_10/embedding_lookup2�
Iuser_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2Iuser_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV22p
6user_model_1/sequential_9/embedding_7/embedding_lookup6user_model_1/sequential_9/embedding_7/embedding_lookup2�
Huser_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2Huser_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2:O K
#
_output_shapes
:���������
$
_user_specified_name
inputs_age:RN
#
_output_shapes
:���������
'
_user_specified_nameinputs_gender:QM
#
_output_shapes
:���������
&
_user_specified_nameinputs_level:SO
#
_output_shapes
:���������
(
_user_specified_nameinputs_user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
:
__inference__creator_16578
identity��
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name7189*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�
�
F__inference_embedding_7_layer_call_and_return_conditional_losses_14322

inputs	)
embedding_lookup_14316:	�
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_14316inputs*
Tindices0	*)
_class
loc:@embedding_lookup/14316*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/14316*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_user_model_1_layer_call_fn_14882
age	

gender	
level	
user_id	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5
	unknown_6	
	unknown_7:9
	unknown_8
	unknown_9	

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallagegenderleveluser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_14855o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:H D
#
_output_shapes
:���������

_user_specified_nameage:KG
#
_output_shapes
:���������
 
_user_specified_namegender:JF
#
_output_shapes
:���������

_user_specified_namelevel:LH
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
+__inference_brute_force_layer_call_fn_15812
queries_age	
queries_gender
queries_level	
queries_user_id	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5
	unknown_6	
	unknown_7:9
	unknown_8
	unknown_9	

unknown_10:

unknown_11:@

unknown_12:

unknown_13:

unknown_14:	
identity

identity_1	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueries_agequeries_genderqueries_levelqueries_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2							*
Tout
2	*
_collective_manager_ids
 *:
_output_shapes(
&:���������
:���������
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_15563o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0	*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:���������:���������:���������:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:���������
%
_user_specified_namequeries_age:SO
#
_output_shapes
:���������
(
_user_specified_namequeries_gender:RN
#
_output_shapes
:���������
'
_user_specified_namequeries_level:TP
#
_output_shapes
:���������
)
_user_specified_namequeries_user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
,__inference_embedding_10_layer_call_fn_16528

inputs	
unknown:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_10_layer_call_and_return_conditional_losses_14646o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_user_model_1_layer_call_fn_16172

inputs_age	
inputs_gender
inputs_level	
inputs_user_id	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5
	unknown_6	
	unknown_7:9
	unknown_8
	unknown_9	

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
inputs_ageinputs_genderinputs_levelinputs_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_user_model_1_layer_call_and_return_conditional_losses_14924o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:���������
$
_user_specified_name
inputs_age:RN
#
_output_shapes
:���������
'
_user_specified_nameinputs_gender:QM
#
_output_shapes
:���������
&
_user_specified_nameinputs_level:SO
#
_output_shapes
:���������
(
_user_specified_nameinputs_user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�&
�
!__inference__traced_restore_16738
file_prefix*
assignvariableop_identifiers:	/
assignvariableop_1_candidates:<
)assignvariableop_2_embedding_7_embeddings:	�;
)assignvariableop_3_embedding_8_embeddings:;
)assignvariableop_4_embedding_9_embeddings:9<
*assignvariableop_5_embedding_10_embeddings:A
/assignvariableop_6_sequential_13_dense_3_kernel:@;
-assignvariableop_7_sequential_13_dense_3_bias:

identity_9��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_identifiersIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_candidatesIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp)assignvariableop_2_embedding_7_embeddingsIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp)assignvariableop_3_embedding_8_embeddingsIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp)assignvariableop_4_embedding_9_embeddingsIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp*assignvariableop_5_embedding_10_embeddingsIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp/assignvariableop_6_sequential_13_dense_3_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp-assignvariableop_7_sequential_13_dense_3_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*"
_acd_function_control_output(*
_output_shapes
 "!

identity_9Identity_9:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
-__inference_sequential_10_layer_call_fn_14469
string_lookup_3_input
unknown
	unknown_0	
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_3_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_14460o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
#
_output_shapes
:���������
/
_user_specified_namestring_lookup_3_input:

_output_shapes
: 
�
�
+__inference_brute_force_layer_call_fn_15512
age	

gender	
level	
user_id	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5
	unknown_6	
	unknown_7:9
	unknown_8
	unknown_9	

unknown_10:

unknown_11:@

unknown_12:

unknown_13:

unknown_14:	
identity

identity_1	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallagegenderleveluser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2							*
Tout
2	*
_collective_manager_ids
 *:
_output_shapes(
&:���������
:���������
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_15475o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0	*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:���������:���������:���������:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:H D
#
_output_shapes
:���������

_user_specified_nameage:KG
#
_output_shapes
:���������
 
_user_specified_namegender:JF
#
_output_shapes
:���������

_user_specified_namelevel:LH
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�z
�
 __inference__wrapped_model_14305
age	

gender	
level	
user_id	s
obrute_force_sequential_13_user_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_table_handlet
pbrute_force_sequential_13_user_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_default_value	i
Vbrute_force_sequential_13_user_model_1_sequential_9_embedding_7_embedding_lookup_14254:	�s
obrute_force_sequential_13_user_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_table_handlet
pbrute_force_sequential_13_user_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_default_value	i
Wbrute_force_sequential_13_user_model_1_sequential_10_embedding_8_embedding_lookup_14263:t
pbrute_force_sequential_13_user_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_table_handleu
qbrute_force_sequential_13_user_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_default_value	i
Wbrute_force_sequential_13_user_model_1_sequential_11_embedding_9_embedding_lookup_14272:9t
pbrute_force_sequential_13_user_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_table_handleu
qbrute_force_sequential_13_user_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_default_value	j
Xbrute_force_sequential_13_user_model_1_sequential_12_embedding_10_embedding_lookup_14281:R
@brute_force_sequential_13_dense_3_matmul_readvariableop_resource:@O
Abrute_force_sequential_13_dense_3_biasadd_readvariableop_resource:<
*brute_force_matmul_readvariableop_resource:)
brute_force_gather_resource:	
identity

identity_1	��brute_force/Gather�!brute_force/MatMul/ReadVariableOp�8brute_force/sequential_13/dense_3/BiasAdd/ReadVariableOp�7brute_force/sequential_13/dense_3/MatMul/ReadVariableOp�Qbrute_force/sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup�bbrute_force/sequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2�Qbrute_force/sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup�cbrute_force/sequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2�Rbrute_force/sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup�cbrute_force/sequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2�Pbrute_force/sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup�bbrute_force/sequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2�
bbrute_force/sequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2obrute_force_sequential_13_user_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_table_handleuser_idpbrute_force_sequential_13_user_model_1_sequential_9_integer_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
Mbrute_force/sequential_13/user_model_1/sequential_9/integer_lookup_4/IdentityIdentitykbrute_force/sequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Pbrute_force/sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookupResourceGatherVbrute_force_sequential_13_user_model_1_sequential_9_embedding_7_embedding_lookup_14254Vbrute_force/sequential_13/user_model_1/sequential_9/integer_lookup_4/Identity:output:0*
Tindices0	*i
_class_
][loc:@brute_force/sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/14254*'
_output_shapes
:���������*
dtype0�
Ybrute_force/sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/IdentityIdentityYbrute_force/sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup:output:0*
T0*i
_class_
][loc:@brute_force/sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/14254*'
_output_shapes
:����������
[brute_force/sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/Identity_1Identitybbrute_force/sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
bbrute_force/sequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2LookupTableFindV2obrute_force_sequential_13_user_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_table_handlegenderpbrute_force_sequential_13_user_model_1_sequential_10_string_lookup_3_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
Mbrute_force/sequential_13/user_model_1/sequential_10/string_lookup_3/IdentityIdentitykbrute_force/sequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Qbrute_force/sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookupResourceGatherWbrute_force_sequential_13_user_model_1_sequential_10_embedding_8_embedding_lookup_14263Vbrute_force/sequential_13/user_model_1/sequential_10/string_lookup_3/Identity:output:0*
Tindices0	*j
_class`
^\loc:@brute_force/sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/14263*'
_output_shapes
:���������*
dtype0�
Zbrute_force/sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/IdentityIdentityZbrute_force/sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup:output:0*
T0*j
_class`
^\loc:@brute_force/sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/14263*'
_output_shapes
:����������
\brute_force/sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/Identity_1Identitycbrute_force/sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
cbrute_force/sequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2pbrute_force_sequential_13_user_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_table_handleageqbrute_force_sequential_13_user_model_1_sequential_11_integer_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
Nbrute_force/sequential_13/user_model_1/sequential_11/integer_lookup_5/IdentityIdentitylbrute_force/sequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Qbrute_force/sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookupResourceGatherWbrute_force_sequential_13_user_model_1_sequential_11_embedding_9_embedding_lookup_14272Wbrute_force/sequential_13/user_model_1/sequential_11/integer_lookup_5/Identity:output:0*
Tindices0	*j
_class`
^\loc:@brute_force/sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/14272*'
_output_shapes
:���������*
dtype0�
Zbrute_force/sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/IdentityIdentityZbrute_force/sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup:output:0*
T0*j
_class`
^\loc:@brute_force/sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/14272*'
_output_shapes
:����������
\brute_force/sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/Identity_1Identitycbrute_force/sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
cbrute_force/sequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2pbrute_force_sequential_13_user_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_table_handlelevelqbrute_force_sequential_13_user_model_1_sequential_12_integer_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
Nbrute_force/sequential_13/user_model_1/sequential_12/integer_lookup_6/IdentityIdentitylbrute_force/sequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Rbrute_force/sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookupResourceGatherXbrute_force_sequential_13_user_model_1_sequential_12_embedding_10_embedding_lookup_14281Wbrute_force/sequential_13/user_model_1/sequential_12/integer_lookup_6/Identity:output:0*
Tindices0	*k
_classa
_]loc:@brute_force/sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/14281*'
_output_shapes
:���������*
dtype0�
[brute_force/sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/IdentityIdentity[brute_force/sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup:output:0*
T0*k
_classa
_]loc:@brute_force/sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/14281*'
_output_shapes
:����������
]brute_force/sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/Identity_1Identitydbrute_force/sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������t
2brute_force/sequential_13/user_model_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
-brute_force/sequential_13/user_model_1/concatConcatV2dbrute_force/sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup/Identity_1:output:0ebrute_force/sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup/Identity_1:output:0ebrute_force/sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup/Identity_1:output:0fbrute_force/sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup/Identity_1:output:0;brute_force/sequential_13/user_model_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@�
7brute_force/sequential_13/dense_3/MatMul/ReadVariableOpReadVariableOp@brute_force_sequential_13_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
(brute_force/sequential_13/dense_3/MatMulMatMul6brute_force/sequential_13/user_model_1/concat:output:0?brute_force/sequential_13/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
8brute_force/sequential_13/dense_3/BiasAdd/ReadVariableOpReadVariableOpAbrute_force_sequential_13_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
)brute_force/sequential_13/dense_3/BiasAddBiasAdd2brute_force/sequential_13/dense_3/MatMul:product:0@brute_force/sequential_13/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!brute_force/MatMul/ReadVariableOpReadVariableOp*brute_force_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
brute_force/MatMulMatMul2brute_force/sequential_13/dense_3/BiasAdd:output:0)brute_force/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(V
brute_force/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
�
brute_force/TopKV2TopKV2brute_force/MatMul:product:0brute_force/TopKV2/k:output:0*
T0*:
_output_shapes(
&:���������
:���������
�
brute_force/GatherResourceGatherbrute_force_gather_resourcebrute_force/TopKV2:indices:0*
Tindices0*'
_output_shapes
:���������
*
dtype0	o
brute_force/IdentityIdentitybrute_force/Gather:output:0*
T0	*'
_output_shapes
:���������
j
IdentityIdentitybrute_force/TopKV2:values:0^NoOp*
T0*'
_output_shapes
:���������
n

Identity_1Identitybrute_force/Identity:output:0^NoOp*
T0	*'
_output_shapes
:���������
�
NoOpNoOp^brute_force/Gather"^brute_force/MatMul/ReadVariableOp9^brute_force/sequential_13/dense_3/BiasAdd/ReadVariableOp8^brute_force/sequential_13/dense_3/MatMul/ReadVariableOpR^brute_force/sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookupc^brute_force/sequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2R^brute_force/sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookupd^brute_force/sequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2S^brute_force/sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookupd^brute_force/sequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2Q^brute_force/sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookupc^brute_force/sequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:���������:���������:���������:���������: : : : : : : : : : : : : : : : 2(
brute_force/Gatherbrute_force/Gather2F
!brute_force/MatMul/ReadVariableOp!brute_force/MatMul/ReadVariableOp2t
8brute_force/sequential_13/dense_3/BiasAdd/ReadVariableOp8brute_force/sequential_13/dense_3/BiasAdd/ReadVariableOp2r
7brute_force/sequential_13/dense_3/MatMul/ReadVariableOp7brute_force/sequential_13/dense_3/MatMul/ReadVariableOp2�
Qbrute_force/sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookupQbrute_force/sequential_13/user_model_1/sequential_10/embedding_8/embedding_lookup2�
bbrute_force/sequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV2bbrute_force/sequential_13/user_model_1/sequential_10/string_lookup_3/None_Lookup/LookupTableFindV22�
Qbrute_force/sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookupQbrute_force/sequential_13/user_model_1/sequential_11/embedding_9/embedding_lookup2�
cbrute_force/sequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV2cbrute_force/sequential_13/user_model_1/sequential_11/integer_lookup_5/None_Lookup/LookupTableFindV22�
Rbrute_force/sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookupRbrute_force/sequential_13/user_model_1/sequential_12/embedding_10/embedding_lookup2�
cbrute_force/sequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV2cbrute_force/sequential_13/user_model_1/sequential_12/integer_lookup_6/None_Lookup/LookupTableFindV22�
Pbrute_force/sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookupPbrute_force/sequential_13/user_model_1/sequential_9/embedding_7/embedding_lookup2�
bbrute_force/sequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2bbrute_force/sequential_13/user_model_1/sequential_9/integer_lookup_4/None_Lookup/LookupTableFindV2:H D
#
_output_shapes
:���������

_user_specified_nameage:KG
#
_output_shapes
:���������
 
_user_specified_namegender:JF
#
_output_shapes
:���������

_user_specified_namelevel:LH
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
-__inference_sequential_13_layer_call_fn_15175
age	

gender	
level	
user_id	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5
	unknown_6	
	unknown_7:9
	unknown_8
	unknown_9	

unknown_10:

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallagegenderleveluser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_13_layer_call_and_return_conditional_losses_15144o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:���������:���������:���������:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:H D
#
_output_shapes
:���������

_user_specified_nameage:KG
#
_output_shapes
:���������
 
_user_specified_namegender:JF
#
_output_shapes
:���������

_user_specified_namelevel:LH
#
_output_shapes
:���������
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
G__inference_sequential_9_layer_call_and_return_conditional_losses_14352

inputs	?
;integer_lookup_4_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_4_none_lookup_lookuptablefindv2_default_value	$
embedding_7_14348:	�
identity��#embedding_7/StatefulPartitionedCall�.integer_lookup_4/None_Lookup/LookupTableFindV2�
.integer_lookup_4/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_4_none_lookup_lookuptablefindv2_table_handleinputs<integer_lookup_4_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_4/IdentityIdentity7integer_lookup_4/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_7/StatefulPartitionedCallStatefulPartitionedCall"integer_lookup_4/Identity:output:0embedding_7_14348*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_7_layer_call_and_return_conditional_losses_14322{
IdentityIdentity,embedding_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^embedding_7/StatefulPartitionedCall/^integer_lookup_4/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_7/StatefulPartitionedCall#embedding_7/StatefulPartitionedCall2`
.integer_lookup_4/None_Lookup/LookupTableFindV2.integer_lookup_4/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
+__inference_brute_force_layer_call_fn_15770
queries_age	
queries_gender
queries_level	
queries_user_id	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:
	unknown_5
	unknown_6	
	unknown_7:9
	unknown_8
	unknown_9	

unknown_10:

unknown_11:@

unknown_12:

unknown_13:

unknown_14:	
identity

identity_1	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueries_agequeries_genderqueries_levelqueries_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2							*
Tout
2	*
_collective_manager_ids
 *:
_output_shapes(
&:���������
:���������
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_15475o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0	*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:���������:���������:���������:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:���������
%
_user_specified_namequeries_age:SO
#
_output_shapes
:���������
(
_user_specified_namequeries_gender:RN
#
_output_shapes
:���������
'
_user_specified_namequeries_level:TP
#
_output_shapes
:���������
)
_user_specified_namequeries_user_id:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_sequential_11_layer_call_and_return_conditional_losses_16412

inputs	?
;integer_lookup_5_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_5_none_lookup_lookuptablefindv2_default_value	4
"embedding_9_embedding_lookup_16406:9
identity��embedding_9/embedding_lookup�.integer_lookup_5/None_Lookup/LookupTableFindV2�
.integer_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_5_none_lookup_lookuptablefindv2_table_handleinputs<integer_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_5/IdentityIdentity7integer_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
embedding_9/embedding_lookupResourceGather"embedding_9_embedding_lookup_16406"integer_lookup_5/Identity:output:0*
Tindices0	*5
_class+
)'loc:@embedding_9/embedding_lookup/16406*'
_output_shapes
:���������*
dtype0�
%embedding_9/embedding_lookup/IdentityIdentity%embedding_9/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_9/embedding_lookup/16406*'
_output_shapes
:����������
'embedding_9/embedding_lookup/Identity_1Identity.embedding_9/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
IdentityIdentity0embedding_9/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^embedding_9/embedding_lookup/^integer_lookup_5/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2<
embedding_9/embedding_lookupembedding_9/embedding_lookup2`
.integer_lookup_5/None_Lookup/LookupTableFindV2.integer_lookup_5/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
H__inference_sequential_12_layer_call_and_return_conditional_losses_14662
integer_lookup_6_input	?
;integer_lookup_6_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_6_none_lookup_lookuptablefindv2_default_value	$
embedding_10_14658:
identity��$embedding_10/StatefulPartitionedCall�.integer_lookup_6/None_Lookup/LookupTableFindV2�
.integer_lookup_6/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_6_none_lookup_lookuptablefindv2_table_handleinteger_lookup_6_input<integer_lookup_6_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
integer_lookup_6/IdentityIdentity7integer_lookup_6/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
$embedding_10/StatefulPartitionedCallStatefulPartitionedCall"integer_lookup_6/Identity:output:0embedding_10_14658*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_10_layer_call_and_return_conditional_losses_14646|
IdentityIdentity-embedding_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^embedding_10/StatefulPartitionedCall/^integer_lookup_6/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2`
.integer_lookup_6/None_Lookup/LookupTableFindV2.integer_lookup_6/None_Lookup/LookupTableFindV2:[ W
#
_output_shapes
:���������
0
_user_specified_nameinteger_lookup_6_input:

_output_shapes
: 
�
�
-__inference_sequential_12_layer_call_fn_14707
integer_lookup_6_input	
unknown
	unknown_0	
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinteger_lookup_6_inputunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_14698o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
#
_output_shapes
:���������
0
_user_specified_nameinteger_lookup_6_input:

_output_shapes
: 
�
�
__inference__initializer_166047
3key_value_init7211_lookuptableimportv2_table_handle/
+key_value_init7211_lookuptableimportv2_keys	1
-key_value_init7211_lookuptableimportv2_values	
identity��&key_value_init7211/LookupTableImportV2�
&key_value_init7211/LookupTableImportV2LookupTableImportV23key_value_init7211_lookuptableimportv2_table_handle+key_value_init7211_lookuptableimportv2_keys-key_value_init7211_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init7211/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2P
&key_value_init7211/LookupTableImportV2&key_value_init7211/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
�
�
-__inference_sequential_12_layer_call_fn_16447

inputs	
unknown
	unknown_0	
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_14698o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: "�
L
saver_filename:0StatefulPartitionedCall_5:0StatefulPartitionedCall_68"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
/
age(
serving_default_age:0	���������
5
gender+
serving_default_gender:0���������
3
level*
serving_default_level:0	���������
7
user_id,
serving_default_user_id:0	���������<
output_10
StatefulPartitionedCall:0���������
<
output_20
StatefulPartitionedCall:1	���������
tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
query_model
	identifiers
	_identifiers


candidates

_candidates
query_with_exclusions

signatures"
_tf_keras_model
X
0
1
2
3
4
5
	6

7"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
trace_1
trace_2
trace_32�
+__inference_brute_force_layer_call_fn_15512
+__inference_brute_force_layer_call_fn_15600
+__inference_brute_force_layer_call_fn_15770
+__inference_brute_force_layer_call_fn_15812�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 ztrace_0ztrace_1ztrace_2ztrace_3
�
trace_0
trace_1
trace_2
trace_32�
F__inference_brute_force_layer_call_and_return_conditional_losses_15377
F__inference_brute_force_layer_call_and_return_conditional_losses_15423
F__inference_brute_force_layer_call_and_return_conditional_losses_15873
F__inference_brute_force_layer_call_and_return_conditional_losses_15934�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 ztrace_0ztrace_1ztrace_2ztrace_3
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
 __inference__wrapped_model_14305agegenderleveluser_id"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
$layer_with_weights-0
$layer-0
%layer_with_weights-1
%layer-1
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,_build_input_shape"
_tf_keras_sequential
:	2identifiers
:2
candidates
�2��
���
FullArgSpec)
args!�
	jqueries
j
exclusions
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
-serving_default"
signature_map
):'	�2embedding_7/embeddings
(:&2embedding_8/embeddings
(:&92embedding_9/embeddings
):'2embedding_10/embeddings
.:,@2sequential_13/dense_3/kernel
(:&2sequential_13/dense_3/bias
.
	0

1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
+__inference_brute_force_layer_call_fn_15512agegenderleveluser_id"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
+__inference_brute_force_layer_call_fn_15600agegenderleveluser_id"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
+__inference_brute_force_layer_call_fn_15770queries_agequeries_genderqueries_levelqueries_user_id"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
+__inference_brute_force_layer_call_fn_15812queries_agequeries_genderqueries_levelqueries_user_id"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
F__inference_brute_force_layer_call_and_return_conditional_losses_15377agegenderleveluser_id"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
F__inference_brute_force_layer_call_and_return_conditional_losses_15423agegenderleveluser_id"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
F__inference_brute_force_layer_call_and_return_conditional_losses_15873queries_agequeries_genderqueries_levelqueries_user_id"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
F__inference_brute_force_layer_call_and_return_conditional_losses_15934queries_agequeries_genderqueries_levelqueries_user_id"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
"J

Const_11jtf.TrackableConstant
"J

Const_10jtf.TrackableConstant
!J	
Const_9jtf.TrackableConstant
!J	
Const_8jtf.TrackableConstant
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses
4user_embedding
5gender_embedding
6age_embedding
7level_embedding"
_tf_keras_model
�
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_32�
-__inference_sequential_13_layer_call_fn_15175
-__inference_sequential_13_layer_call_fn_15248
-__inference_sequential_13_layer_call_fn_15970
-__inference_sequential_13_layer_call_fn_16006�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zCtrace_0zDtrace_1zEtrace_2zFtrace_3
�
Gtrace_0
Htrace_1
Itrace_2
Jtrace_32�
H__inference_sequential_13_layer_call_and_return_conditional_losses_15064
H__inference_sequential_13_layer_call_and_return_conditional_losses_15101
H__inference_sequential_13_layer_call_and_return_conditional_losses_16057
H__inference_sequential_13_layer_call_and_return_conditional_losses_16108�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zGtrace_0zHtrace_1zItrace_2zJtrace_3
 "
trackable_dict_wrapper
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
#__inference_signature_wrapper_15728agegenderleveluser_id"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
�
Ptrace_0
Qtrace_1
Rtrace_2
Strace_32�
,__inference_user_model_1_layer_call_fn_14882
,__inference_user_model_1_layer_call_fn_14951
,__inference_user_model_1_layer_call_fn_16140
,__inference_user_model_1_layer_call_fn_16172�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 zPtrace_0zQtrace_1zRtrace_2zStrace_3
�
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_32�
G__inference_user_model_1_layer_call_and_return_conditional_losses_14775
G__inference_user_model_1_layer_call_and_return_conditional_losses_14812
G__inference_user_model_1_layer_call_and_return_conditional_losses_16217
G__inference_user_model_1_layer_call_and_return_conditional_losses_16262�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 zTtrace_0zUtrace_1zVtrace_2zWtrace_3
�
Xlayer-0
Ylayer_with_weights-0
Ylayer-1
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
`layer-0
alayer_with_weights-0
alayer-1
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
hlayer-0
ilayer_with_weights-0
ilayer-1
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
player-0
qlayer_with_weights-0
qlayer-1
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses"
_tf_keras_sequential
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
�
}trace_02�
'__inference_dense_3_layer_call_fn_16271�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z}trace_0
�
~trace_02�
B__inference_dense_3_layer_call_and_return_conditional_losses_16281�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z~trace_0
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
-__inference_sequential_13_layer_call_fn_15175agegenderleveluser_id"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
-__inference_sequential_13_layer_call_fn_15248agegenderleveluser_id"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
-__inference_sequential_13_layer_call_fn_15970
inputs_ageinputs_genderinputs_levelinputs_user_id"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
-__inference_sequential_13_layer_call_fn_16006
inputs_ageinputs_genderinputs_levelinputs_user_id"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
H__inference_sequential_13_layer_call_and_return_conditional_losses_15064agegenderleveluser_id"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
H__inference_sequential_13_layer_call_and_return_conditional_losses_15101agegenderleveluser_id"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
H__inference_sequential_13_layer_call_and_return_conditional_losses_16057
inputs_ageinputs_genderinputs_levelinputs_user_id"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
H__inference_sequential_13_layer_call_and_return_conditional_losses_16108
inputs_ageinputs_genderinputs_levelinputs_user_id"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
 "
trackable_list_wrapper
<
40
51
62
73"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
,__inference_user_model_1_layer_call_fn_14882agegenderleveluser_id"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
,__inference_user_model_1_layer_call_fn_14951agegenderleveluser_id"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
,__inference_user_model_1_layer_call_fn_16140
inputs_ageinputs_genderinputs_levelinputs_user_id"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
,__inference_user_model_1_layer_call_fn_16172
inputs_ageinputs_genderinputs_levelinputs_user_id"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
G__inference_user_model_1_layer_call_and_return_conditional_losses_14775agegenderleveluser_id"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
G__inference_user_model_1_layer_call_and_return_conditional_losses_14812agegenderleveluser_id"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
G__inference_user_model_1_layer_call_and_return_conditional_losses_16217
inputs_ageinputs_genderinputs_levelinputs_user_id"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
�
 	capture_1
!	capture_4
"	capture_7
#
capture_10B�
G__inference_user_model_1_layer_call_and_return_conditional_losses_16262
inputs_ageinputs_genderinputs_levelinputs_user_id"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z 	capture_1z!	capture_4z"	capture_7z#
capture_10
;
	keras_api
�lookup_table"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
,__inference_sequential_9_layer_call_fn_14361
,__inference_sequential_9_layer_call_fn_14383
,__inference_sequential_9_layer_call_fn_16292
,__inference_sequential_9_layer_call_fn_16303�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
G__inference_sequential_9_layer_call_and_return_conditional_losses_14327
G__inference_sequential_9_layer_call_and_return_conditional_losses_14338
G__inference_sequential_9_layer_call_and_return_conditional_losses_16316
G__inference_sequential_9_layer_call_and_return_conditional_losses_16329�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
<
�	keras_api
�lookup_table"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
-__inference_sequential_10_layer_call_fn_14469
-__inference_sequential_10_layer_call_fn_14491
-__inference_sequential_10_layer_call_fn_16340
-__inference_sequential_10_layer_call_fn_16351�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
H__inference_sequential_10_layer_call_and_return_conditional_losses_14435
H__inference_sequential_10_layer_call_and_return_conditional_losses_14446
H__inference_sequential_10_layer_call_and_return_conditional_losses_16364
H__inference_sequential_10_layer_call_and_return_conditional_losses_16377�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
<
�	keras_api
�lookup_table"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
-__inference_sequential_11_layer_call_fn_14577
-__inference_sequential_11_layer_call_fn_14599
-__inference_sequential_11_layer_call_fn_16388
-__inference_sequential_11_layer_call_fn_16399�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
H__inference_sequential_11_layer_call_and_return_conditional_losses_14543
H__inference_sequential_11_layer_call_and_return_conditional_losses_14554
H__inference_sequential_11_layer_call_and_return_conditional_losses_16412
H__inference_sequential_11_layer_call_and_return_conditional_losses_16425�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
<
�	keras_api
�lookup_table"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
-__inference_sequential_12_layer_call_fn_14685
-__inference_sequential_12_layer_call_fn_14707
-__inference_sequential_12_layer_call_fn_16436
-__inference_sequential_12_layer_call_fn_16447�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
H__inference_sequential_12_layer_call_and_return_conditional_losses_14651
H__inference_sequential_12_layer_call_and_return_conditional_losses_14662
H__inference_sequential_12_layer_call_and_return_conditional_losses_16460
H__inference_sequential_12_layer_call_and_return_conditional_losses_16473�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
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
�B�
'__inference_dense_3_layer_call_fn_16271inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_3_layer_call_and_return_conditional_losses_16281inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
"
_generic_user_object
j
�_initializer
�_create_resource
�_initialize
�_destroy_resourceR jtf.StaticHashTable
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_embedding_7_layer_call_fn_16480�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_embedding_7_layer_call_and_return_conditional_losses_16489�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
 	capture_1B�
,__inference_sequential_9_layer_call_fn_14361integer_lookup_4_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1
�
 	capture_1B�
,__inference_sequential_9_layer_call_fn_14383integer_lookup_4_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1
�
 	capture_1B�
,__inference_sequential_9_layer_call_fn_16292inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1
�
 	capture_1B�
,__inference_sequential_9_layer_call_fn_16303inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1
�
 	capture_1B�
G__inference_sequential_9_layer_call_and_return_conditional_losses_14327integer_lookup_4_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1
�
 	capture_1B�
G__inference_sequential_9_layer_call_and_return_conditional_losses_14338integer_lookup_4_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1
�
 	capture_1B�
G__inference_sequential_9_layer_call_and_return_conditional_losses_16316inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1
�
 	capture_1B�
G__inference_sequential_9_layer_call_and_return_conditional_losses_16329inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z 	capture_1
"
_generic_user_object
j
�_initializer
�_create_resource
�_initialize
�_destroy_resourceR jtf.StaticHashTable
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_embedding_8_layer_call_fn_16496�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_embedding_8_layer_call_and_return_conditional_losses_16505�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
!	capture_1B�
-__inference_sequential_10_layer_call_fn_14469string_lookup_3_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z!	capture_1
�
!	capture_1B�
-__inference_sequential_10_layer_call_fn_14491string_lookup_3_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z!	capture_1
�
!	capture_1B�
-__inference_sequential_10_layer_call_fn_16340inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z!	capture_1
�
!	capture_1B�
-__inference_sequential_10_layer_call_fn_16351inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z!	capture_1
�
!	capture_1B�
H__inference_sequential_10_layer_call_and_return_conditional_losses_14435string_lookup_3_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z!	capture_1
�
!	capture_1B�
H__inference_sequential_10_layer_call_and_return_conditional_losses_14446string_lookup_3_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z!	capture_1
�
!	capture_1B�
H__inference_sequential_10_layer_call_and_return_conditional_losses_16364inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z!	capture_1
�
!	capture_1B�
H__inference_sequential_10_layer_call_and_return_conditional_losses_16377inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z!	capture_1
"
_generic_user_object
j
�_initializer
�_create_resource
�_initialize
�_destroy_resourceR jtf.StaticHashTable
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_embedding_9_layer_call_fn_16512�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_embedding_9_layer_call_and_return_conditional_losses_16521�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
"	capture_1B�
-__inference_sequential_11_layer_call_fn_14577integer_lookup_5_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z"	capture_1
�
"	capture_1B�
-__inference_sequential_11_layer_call_fn_14599integer_lookup_5_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z"	capture_1
�
"	capture_1B�
-__inference_sequential_11_layer_call_fn_16388inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z"	capture_1
�
"	capture_1B�
-__inference_sequential_11_layer_call_fn_16399inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z"	capture_1
�
"	capture_1B�
H__inference_sequential_11_layer_call_and_return_conditional_losses_14543integer_lookup_5_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z"	capture_1
�
"	capture_1B�
H__inference_sequential_11_layer_call_and_return_conditional_losses_14554integer_lookup_5_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z"	capture_1
�
"	capture_1B�
H__inference_sequential_11_layer_call_and_return_conditional_losses_16412inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z"	capture_1
�
"	capture_1B�
H__inference_sequential_11_layer_call_and_return_conditional_losses_16425inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z"	capture_1
"
_generic_user_object
j
�_initializer
�_create_resource
�_initialize
�_destroy_resourceR jtf.StaticHashTable
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_embedding_10_layer_call_fn_16528�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_embedding_10_layer_call_and_return_conditional_losses_16537�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
#	capture_1B�
-__inference_sequential_12_layer_call_fn_14685integer_lookup_6_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z#	capture_1
�
#	capture_1B�
-__inference_sequential_12_layer_call_fn_14707integer_lookup_6_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z#	capture_1
�
#	capture_1B�
-__inference_sequential_12_layer_call_fn_16436inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z#	capture_1
�
#	capture_1B�
-__inference_sequential_12_layer_call_fn_16447inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z#	capture_1
�
#	capture_1B�
H__inference_sequential_12_layer_call_and_return_conditional_losses_14651integer_lookup_6_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z#	capture_1
�
#	capture_1B�
H__inference_sequential_12_layer_call_and_return_conditional_losses_14662integer_lookup_6_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z#	capture_1
�
#	capture_1B�
H__inference_sequential_12_layer_call_and_return_conditional_losses_16460inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z#	capture_1
�
#	capture_1B�
H__inference_sequential_12_layer_call_and_return_conditional_losses_16473inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z#	capture_1
"
_generic_user_object
�
�trace_02�
__inference__creator_16542�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_16550�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_16555�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
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
�B�
+__inference_embedding_7_layer_call_fn_16480inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_embedding_7_layer_call_and_return_conditional_losses_16489inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
"
_generic_user_object
�
�trace_02�
__inference__creator_16560�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_16568�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_16573�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
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
�B�
+__inference_embedding_8_layer_call_fn_16496inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_embedding_8_layer_call_and_return_conditional_losses_16505inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
"
_generic_user_object
�
�trace_02�
__inference__creator_16578�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_16586�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_16591�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
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
�B�
+__inference_embedding_9_layer_call_fn_16512inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_embedding_9_layer_call_and_return_conditional_losses_16521inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
"
_generic_user_object
�
�trace_02�
__inference__creator_16596�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_16604�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_16609�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
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
�B�
,__inference_embedding_10_layer_call_fn_16528inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_embedding_10_layer_call_and_return_conditional_losses_16537inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference__creator_16542"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
�	capture_1
�	capture_2B�
__inference__initializer_16550"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�	capture_1z�	capture_2
�B�
__inference__destroyer_16555"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__creator_16560"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
�	capture_1
�	capture_2B�
__inference__initializer_16568"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�	capture_1z�	capture_2
�B�
__inference__destroyer_16573"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__creator_16578"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
�	capture_1
�	capture_2B�
__inference__initializer_16586"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�	capture_1z�	capture_2
�B�
__inference__destroyer_16591"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__creator_16596"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
�	capture_1
�	capture_2B�
__inference__initializer_16604"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�	capture_1z�	capture_2
�B�
__inference__destroyer_16609"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
!J	
Const_7jtf.TrackableConstant
!J	
Const_6jtf.TrackableConstant
!J	
Const_5jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant?
__inference__creator_16542!�

� 
� "�
unknown ?
__inference__creator_16560!�

� 
� "�
unknown ?
__inference__creator_16578!�

� 
� "�
unknown ?
__inference__creator_16596!�

� 
� "�
unknown A
__inference__destroyer_16555!�

� 
� "�
unknown A
__inference__destroyer_16573!�

� 
� "�
unknown A
__inference__destroyer_16591!�

� 
� "�
unknown A
__inference__destroyer_16609!�

� 
� "�
unknown K
__inference__initializer_16550)����

� 
� "�
unknown K
__inference__initializer_16568)����

� 
� "�
unknown K
__inference__initializer_16586)����

� 
� "�
unknown K
__inference__initializer_16604)����

� 
� "�
unknown �
 __inference__wrapped_model_14305�� �!�"�#
	���
���
���
 
age�
age���������	
&
gender�
gender���������
$
level�
level���������	
(
user_id�
user_id���������	
� "c�`
.
output_1"�
output_1���������

.
output_2"�
output_2���������
	�
F__inference_brute_force_layer_call_and_return_conditional_losses_15377�� �!�"�#
	���
���
���
 
age�
age���������	
&
gender�
gender���������
$
level�
level���������	
(
user_id�
user_id���������	

 
�

trainingp"Y�V
O�L
$�!

tensor_0_0���������

$�!

tensor_0_1���������
	
� �
F__inference_brute_force_layer_call_and_return_conditional_losses_15423�� �!�"�#
	���
���
���
 
age�
age���������	
&
gender�
gender���������
$
level�
level���������	
(
user_id�
user_id���������	

 
�

trainingp "Y�V
O�L
$�!

tensor_0_0���������

$�!

tensor_0_1���������
	
� �
F__inference_brute_force_layer_call_and_return_conditional_losses_15873�� �!�"�#
	���
���
���
(
age!�
queries_age���������	
.
gender$�!
queries_gender���������
,
level#� 
queries_level���������	
0
user_id%�"
queries_user_id���������	

 
�

trainingp"Y�V
O�L
$�!

tensor_0_0���������

$�!

tensor_0_1���������
	
� �
F__inference_brute_force_layer_call_and_return_conditional_losses_15934�� �!�"�#
	���
���
���
(
age!�
queries_age���������	
.
gender$�!
queries_gender���������
,
level#� 
queries_level���������	
0
user_id%�"
queries_user_id���������	

 
�

trainingp "Y�V
O�L
$�!

tensor_0_0���������

$�!

tensor_0_1���������
	
� �
+__inference_brute_force_layer_call_fn_15512�� �!�"�#
	���
���
���
 
age�
age���������	
&
gender�
gender���������
$
level�
level���������	
(
user_id�
user_id���������	

 
�

trainingp"K�H
"�
tensor_0���������

"�
tensor_1���������
	�
+__inference_brute_force_layer_call_fn_15600�� �!�"�#
	���
���
���
 
age�
age���������	
&
gender�
gender���������
$
level�
level���������	
(
user_id�
user_id���������	

 
�

trainingp "K�H
"�
tensor_0���������

"�
tensor_1���������
	�
+__inference_brute_force_layer_call_fn_15770�� �!�"�#
	���
���
���
(
age!�
queries_age���������	
.
gender$�!
queries_gender���������
,
level#� 
queries_level���������	
0
user_id%�"
queries_user_id���������	

 
�

trainingp"K�H
"�
tensor_0���������

"�
tensor_1���������
	�
+__inference_brute_force_layer_call_fn_15812�� �!�"�#
	���
���
���
(
age!�
queries_age���������	
.
gender$�!
queries_gender���������
,
level#� 
queries_level���������	
0
user_id%�"
queries_user_id���������	

 
�

trainingp "K�H
"�
tensor_0���������

"�
tensor_1���������
	�
B__inference_dense_3_layer_call_and_return_conditional_losses_16281c/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0���������
� �
'__inference_dense_3_layer_call_fn_16271X/�,
%�"
 �
inputs���������@
� "!�
unknown����������
G__inference_embedding_10_layer_call_and_return_conditional_losses_16537^+�(
!�
�
inputs���������	
� ",�)
"�
tensor_0���������
� �
,__inference_embedding_10_layer_call_fn_16528S+�(
!�
�
inputs���������	
� "!�
unknown����������
F__inference_embedding_7_layer_call_and_return_conditional_losses_16489^+�(
!�
�
inputs���������	
� ",�)
"�
tensor_0���������
� �
+__inference_embedding_7_layer_call_fn_16480S+�(
!�
�
inputs���������	
� "!�
unknown����������
F__inference_embedding_8_layer_call_and_return_conditional_losses_16505^+�(
!�
�
inputs���������	
� ",�)
"�
tensor_0���������
� �
+__inference_embedding_8_layer_call_fn_16496S+�(
!�
�
inputs���������	
� "!�
unknown����������
F__inference_embedding_9_layer_call_and_return_conditional_losses_16521^+�(
!�
�
inputs���������	
� ",�)
"�
tensor_0���������
� �
+__inference_embedding_9_layer_call_fn_16512S+�(
!�
�
inputs���������	
� "!�
unknown����������
H__inference_sequential_10_layer_call_and_return_conditional_losses_14435x�!B�?
8�5
+�(
string_lookup_3_input���������
p

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_10_layer_call_and_return_conditional_losses_14446x�!B�?
8�5
+�(
string_lookup_3_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_10_layer_call_and_return_conditional_losses_16364i�!3�0
)�&
�
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_10_layer_call_and_return_conditional_losses_16377i�!3�0
)�&
�
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
-__inference_sequential_10_layer_call_fn_14469m�!B�?
8�5
+�(
string_lookup_3_input���������
p

 
� "!�
unknown����������
-__inference_sequential_10_layer_call_fn_14491m�!B�?
8�5
+�(
string_lookup_3_input���������
p 

 
� "!�
unknown����������
-__inference_sequential_10_layer_call_fn_16340^�!3�0
)�&
�
inputs���������
p

 
� "!�
unknown����������
-__inference_sequential_10_layer_call_fn_16351^�!3�0
)�&
�
inputs���������
p 

 
� "!�
unknown����������
H__inference_sequential_11_layer_call_and_return_conditional_losses_14543y�"C�@
9�6
,�)
integer_lookup_5_input���������	
p

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_11_layer_call_and_return_conditional_losses_14554y�"C�@
9�6
,�)
integer_lookup_5_input���������	
p 

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_11_layer_call_and_return_conditional_losses_16412i�"3�0
)�&
�
inputs���������	
p

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_11_layer_call_and_return_conditional_losses_16425i�"3�0
)�&
�
inputs���������	
p 

 
� ",�)
"�
tensor_0���������
� �
-__inference_sequential_11_layer_call_fn_14577n�"C�@
9�6
,�)
integer_lookup_5_input���������	
p

 
� "!�
unknown����������
-__inference_sequential_11_layer_call_fn_14599n�"C�@
9�6
,�)
integer_lookup_5_input���������	
p 

 
� "!�
unknown����������
-__inference_sequential_11_layer_call_fn_16388^�"3�0
)�&
�
inputs���������	
p

 
� "!�
unknown����������
-__inference_sequential_11_layer_call_fn_16399^�"3�0
)�&
�
inputs���������	
p 

 
� "!�
unknown����������
H__inference_sequential_12_layer_call_and_return_conditional_losses_14651y�#C�@
9�6
,�)
integer_lookup_6_input���������	
p

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_12_layer_call_and_return_conditional_losses_14662y�#C�@
9�6
,�)
integer_lookup_6_input���������	
p 

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_12_layer_call_and_return_conditional_losses_16460i�#3�0
)�&
�
inputs���������	
p

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_12_layer_call_and_return_conditional_losses_16473i�#3�0
)�&
�
inputs���������	
p 

 
� ",�)
"�
tensor_0���������
� �
-__inference_sequential_12_layer_call_fn_14685n�#C�@
9�6
,�)
integer_lookup_6_input���������	
p

 
� "!�
unknown����������
-__inference_sequential_12_layer_call_fn_14707n�#C�@
9�6
,�)
integer_lookup_6_input���������	
p 

 
� "!�
unknown����������
-__inference_sequential_12_layer_call_fn_16436^�#3�0
)�&
�
inputs���������	
p

 
� "!�
unknown����������
-__inference_sequential_12_layer_call_fn_16447^�#3�0
)�&
�
inputs���������	
p 

 
� "!�
unknown����������
H__inference_sequential_13_layer_call_and_return_conditional_losses_15064�� �!�"�#���
���
���
 
age�
age���������	
&
gender�
gender���������
$
level�
level���������	
(
user_id�
user_id���������	
p

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_13_layer_call_and_return_conditional_losses_15101�� �!�"�#���
���
���
 
age�
age���������	
&
gender�
gender���������
$
level�
level���������	
(
user_id�
user_id���������	
p 

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_13_layer_call_and_return_conditional_losses_16057�� �!�"�#���
���
���
'
age �

inputs_age���������	
-
gender#� 
inputs_gender���������
+
level"�
inputs_level���������	
/
user_id$�!
inputs_user_id���������	
p

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_13_layer_call_and_return_conditional_losses_16108�� �!�"�#���
���
���
'
age �

inputs_age���������	
-
gender#� 
inputs_gender���������
+
level"�
inputs_level���������	
/
user_id$�!
inputs_user_id���������	
p 

 
� ",�)
"�
tensor_0���������
� �
-__inference_sequential_13_layer_call_fn_15175�� �!�"�#���
���
���
 
age�
age���������	
&
gender�
gender���������
$
level�
level���������	
(
user_id�
user_id���������	
p

 
� "!�
unknown����������
-__inference_sequential_13_layer_call_fn_15248�� �!�"�#���
���
���
 
age�
age���������	
&
gender�
gender���������
$
level�
level���������	
(
user_id�
user_id���������	
p 

 
� "!�
unknown����������
-__inference_sequential_13_layer_call_fn_15970�� �!�"�#���
���
���
'
age �

inputs_age���������	
-
gender#� 
inputs_gender���������
+
level"�
inputs_level���������	
/
user_id$�!
inputs_user_id���������	
p

 
� "!�
unknown����������
-__inference_sequential_13_layer_call_fn_16006�� �!�"�#���
���
���
'
age �

inputs_age���������	
-
gender#� 
inputs_gender���������
+
level"�
inputs_level���������	
/
user_id$�!
inputs_user_id���������	
p 

 
� "!�
unknown����������
G__inference_sequential_9_layer_call_and_return_conditional_losses_14327y� C�@
9�6
,�)
integer_lookup_4_input���������	
p

 
� ",�)
"�
tensor_0���������
� �
G__inference_sequential_9_layer_call_and_return_conditional_losses_14338y� C�@
9�6
,�)
integer_lookup_4_input���������	
p 

 
� ",�)
"�
tensor_0���������
� �
G__inference_sequential_9_layer_call_and_return_conditional_losses_16316i� 3�0
)�&
�
inputs���������	
p

 
� ",�)
"�
tensor_0���������
� �
G__inference_sequential_9_layer_call_and_return_conditional_losses_16329i� 3�0
)�&
�
inputs���������	
p 

 
� ",�)
"�
tensor_0���������
� �
,__inference_sequential_9_layer_call_fn_14361n� C�@
9�6
,�)
integer_lookup_4_input���������	
p

 
� "!�
unknown����������
,__inference_sequential_9_layer_call_fn_14383n� C�@
9�6
,�)
integer_lookup_4_input���������	
p 

 
� "!�
unknown����������
,__inference_sequential_9_layer_call_fn_16292^� 3�0
)�&
�
inputs���������	
p

 
� "!�
unknown����������
,__inference_sequential_9_layer_call_fn_16303^� 3�0
)�&
�
inputs���������	
p 

 
� "!�
unknown����������
#__inference_signature_wrapper_15728�� �!�"�#
	���
� 
���
 
age�
age���������	
&
gender�
gender���������
$
level�
level���������	
(
user_id�
user_id���������	"c�`
.
output_1"�
output_1���������

.
output_2"�
output_2���������
	�
G__inference_user_model_1_layer_call_and_return_conditional_losses_14775�� �!�"�#���
���
���
 
age�
age���������	
&
gender�
gender���������
$
level�
level���������	
(
user_id�
user_id���������	
�

trainingp",�)
"�
tensor_0���������@
� �
G__inference_user_model_1_layer_call_and_return_conditional_losses_14812�� �!�"�#���
���
���
 
age�
age���������	
&
gender�
gender���������
$
level�
level���������	
(
user_id�
user_id���������	
�

trainingp ",�)
"�
tensor_0���������@
� �
G__inference_user_model_1_layer_call_and_return_conditional_losses_16217�� �!�"�#���
���
���
'
age �

inputs_age���������	
-
gender#� 
inputs_gender���������
+
level"�
inputs_level���������	
/
user_id$�!
inputs_user_id���������	
�

trainingp",�)
"�
tensor_0���������@
� �
G__inference_user_model_1_layer_call_and_return_conditional_losses_16262�� �!�"�#���
���
���
'
age �

inputs_age���������	
-
gender#� 
inputs_gender���������
+
level"�
inputs_level���������	
/
user_id$�!
inputs_user_id���������	
�

trainingp ",�)
"�
tensor_0���������@
� �
,__inference_user_model_1_layer_call_fn_14882�� �!�"�#���
���
���
 
age�
age���������	
&
gender�
gender���������
$
level�
level���������	
(
user_id�
user_id���������	
�

trainingp"!�
unknown���������@�
,__inference_user_model_1_layer_call_fn_14951�� �!�"�#���
���
���
 
age�
age���������	
&
gender�
gender���������
$
level�
level���������	
(
user_id�
user_id���������	
�

trainingp "!�
unknown���������@�
,__inference_user_model_1_layer_call_fn_16140�� �!�"�#���
���
���
'
age �

inputs_age���������	
-
gender#� 
inputs_gender���������
+
level"�
inputs_level���������	
/
user_id$�!
inputs_user_id���������	
�

trainingp"!�
unknown���������@�
,__inference_user_model_1_layer_call_fn_16172�� �!�"�#���
���
���
'
age �

inputs_age���������	
-
gender#� 
inputs_gender���������
+
level"�
inputs_level���������	
/
user_id$�!
inputs_user_id���������	
�

trainingp "!�
unknown���������@