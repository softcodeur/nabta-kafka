??
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
?
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
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
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
?
Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
b
InitializeTableV2
table_handle
keys"Tkey
values"Tval"
Tkeytype"
Tvaltype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
?
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?"serve*1.6.02v1.6.0-0-gd2e24b6039??
f
PlaceholderPlaceholder*
shape:?????????*
dtype0*#
_output_shapes
:?????????
h
Placeholder_1Placeholder*
dtype0*#
_output_shapes
:?????????*
shape:?????????
h
Placeholder_2Placeholder*
shape:?????????*
dtype0*#
_output_shapes
:?????????
h
Placeholder_3Placeholder*
dtype0*#
_output_shapes
:?????????*
shape:?????????
h
Placeholder_4Placeholder*
dtype0*#
_output_shapes
:?????????*
shape:?????????
h
Placeholder_5Placeholder*
shape:?????????*
dtype0*#
_output_shapes
:?????????
h
Placeholder_6Placeholder*
dtype0*#
_output_shapes
:?????????*
shape:?????????
h
Placeholder_7Placeholder*
dtype0*#
_output_shapes
:?????????*
shape:?????????
h
Placeholder_8Placeholder*
dtype0*#
_output_shapes
:?????????*
shape:?????????
h
Placeholder_9Placeholder*
dtype0*#
_output_shapes
:?????????*
shape:?????????
i
Placeholder_10Placeholder*
shape:?????????*
dtype0*#
_output_shapes
:?????????
i
Placeholder_11Placeholder*
dtype0*#
_output_shapes
:?????????*
shape:?????????
i
Placeholder_12Placeholder*
dtype0*#
_output_shapes
:?????????*
shape:?????????
[
ConstConst*"
valueBB <=50KB >50K*
dtype0*
_output_shapes
:
K
Sqrt/xConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
5
SqrtSqrtSqrt/x*
_output_shapes
: *
T0
J
div/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
<
divRealDivdiv/xSqrt*
T0*
_output_shapes
: 
?
7embeddings/education/Initializer/truncated_normal/shapeConst*
valueB"      *'
_class
loc:@embeddings/education*
dtype0*
_output_shapes
:
?
6embeddings/education/Initializer/truncated_normal/meanConst*
valueB
 *    *'
_class
loc:@embeddings/education*
dtype0*
_output_shapes
: 
?
Aembeddings/education/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7embeddings/education/Initializer/truncated_normal/shape*
T0*'
_class
loc:@embeddings/education*
seed2 *
dtype0*
_output_shapes

:*

seed 
?
5embeddings/education/Initializer/truncated_normal/mulMulAembeddings/education/Initializer/truncated_normal/TruncatedNormaldiv*
T0*'
_class
loc:@embeddings/education*
_output_shapes

:
?
1embeddings/education/Initializer/truncated_normalAdd5embeddings/education/Initializer/truncated_normal/mul6embeddings/education/Initializer/truncated_normal/mean*
_output_shapes

:*
T0*'
_class
loc:@embeddings/education
?
embeddings/education
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *'
_class
loc:@embeddings/education
?
embeddings/education/AssignAssignembeddings/education1embeddings/education/Initializer/truncated_normal*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*'
_class
loc:@embeddings/education
?
embeddings/education/readIdentityembeddings/education*
T0*'
_class
loc:@embeddings/education*
_output_shapes

:
?
!embeddings/StringToHashBucketFastStringToHashBucketFastPlaceholder_5*#
_output_shapes
:?????????*
num_buckets
?
embeddings/embedding_lookupGatherembeddings/education/read!embeddings/StringToHashBucketFast*
Tparams0*
validate_indices(*'
_class
loc:@embeddings/education*'
_output_shapes
:?????????*
Tindices0	
?
<embeddings/marital_status/Initializer/truncated_normal/shapeConst*
valueB"      *,
_class"
 loc:@embeddings/marital_status*
dtype0*
_output_shapes
:
?
;embeddings/marital_status/Initializer/truncated_normal/meanConst*
valueB
 *    *,
_class"
 loc:@embeddings/marital_status*
dtype0*
_output_shapes
: 
?
Fembeddings/marital_status/Initializer/truncated_normal/TruncatedNormalTruncatedNormal<embeddings/marital_status/Initializer/truncated_normal/shape*

seed *
T0*,
_class"
 loc:@embeddings/marital_status*
seed2 *
dtype0*
_output_shapes

:
?
:embeddings/marital_status/Initializer/truncated_normal/mulMulFembeddings/marital_status/Initializer/truncated_normal/TruncatedNormaldiv*
_output_shapes

:*
T0*,
_class"
 loc:@embeddings/marital_status
?
6embeddings/marital_status/Initializer/truncated_normalAdd:embeddings/marital_status/Initializer/truncated_normal/mul;embeddings/marital_status/Initializer/truncated_normal/mean*
T0*,
_class"
 loc:@embeddings/marital_status*
_output_shapes

:
?
embeddings/marital_status
VariableV2*
shared_name *,
_class"
 loc:@embeddings/marital_status*
	container *
shape
:*
dtype0*
_output_shapes

:
?
 embeddings/marital_status/AssignAssignembeddings/marital_status6embeddings/marital_status/Initializer/truncated_normal*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*,
_class"
 loc:@embeddings/marital_status
?
embeddings/marital_status/readIdentityembeddings/marital_status*
_output_shapes

:*
T0*,
_class"
 loc:@embeddings/marital_status
?
#embeddings/StringToHashBucketFast_1StringToHashBucketFastPlaceholder_6*#
_output_shapes
:?????????*
num_buckets
?
embeddings/embedding_lookup_1Gatherembeddings/marital_status/read#embeddings/StringToHashBucketFast_1*
Tparams0*
validate_indices(*,
_class"
 loc:@embeddings/marital_status*'
_output_shapes
:?????????*
Tindices0	
?
:embeddings/relationship/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      **
_class 
loc:@embeddings/relationship
?
9embeddings/relationship/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    **
_class 
loc:@embeddings/relationship
?
Dembeddings/relationship/Initializer/truncated_normal/TruncatedNormalTruncatedNormal:embeddings/relationship/Initializer/truncated_normal/shape*
T0**
_class 
loc:@embeddings/relationship*
seed2 *
dtype0*
_output_shapes

:*

seed 
?
8embeddings/relationship/Initializer/truncated_normal/mulMulDembeddings/relationship/Initializer/truncated_normal/TruncatedNormaldiv*
_output_shapes

:*
T0**
_class 
loc:@embeddings/relationship
?
4embeddings/relationship/Initializer/truncated_normalAdd8embeddings/relationship/Initializer/truncated_normal/mul9embeddings/relationship/Initializer/truncated_normal/mean*
_output_shapes

:*
T0**
_class 
loc:@embeddings/relationship
?
embeddings/relationship
VariableV2**
_class 
loc:@embeddings/relationship*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
?
embeddings/relationship/AssignAssignembeddings/relationship4embeddings/relationship/Initializer/truncated_normal*
validate_shape(*
_output_shapes

:*
use_locking(*
T0**
_class 
loc:@embeddings/relationship
?
embeddings/relationship/readIdentityembeddings/relationship*
T0**
_class 
loc:@embeddings/relationship*
_output_shapes

:
?
#embeddings/StringToHashBucketFast_2StringToHashBucketFastPlaceholder_7*#
_output_shapes
:?????????*
num_buckets
?
embeddings/embedding_lookup_2Gatherembeddings/relationship/read#embeddings/StringToHashBucketFast_2*'
_output_shapes
:?????????*
Tindices0	*
Tparams0*
validate_indices(**
_class 
loc:@embeddings/relationship
?
7embeddings/workclass/Initializer/truncated_normal/shapeConst*
valueB"	      *'
_class
loc:@embeddings/workclass*
dtype0*
_output_shapes
:
?
6embeddings/workclass/Initializer/truncated_normal/meanConst*
valueB
 *    *'
_class
loc:@embeddings/workclass*
dtype0*
_output_shapes
: 
?
Aembeddings/workclass/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7embeddings/workclass/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:	*

seed *
T0*'
_class
loc:@embeddings/workclass*
seed2 
?
5embeddings/workclass/Initializer/truncated_normal/mulMulAembeddings/workclass/Initializer/truncated_normal/TruncatedNormaldiv*
T0*'
_class
loc:@embeddings/workclass*
_output_shapes

:	
?
1embeddings/workclass/Initializer/truncated_normalAdd5embeddings/workclass/Initializer/truncated_normal/mul6embeddings/workclass/Initializer/truncated_normal/mean*
_output_shapes

:	*
T0*'
_class
loc:@embeddings/workclass
?
embeddings/workclass
VariableV2*
shared_name *'
_class
loc:@embeddings/workclass*
	container *
shape
:	*
dtype0*
_output_shapes

:	
?
embeddings/workclass/AssignAssignembeddings/workclass1embeddings/workclass/Initializer/truncated_normal*
validate_shape(*
_output_shapes

:	*
use_locking(*
T0*'
_class
loc:@embeddings/workclass
?
embeddings/workclass/readIdentityembeddings/workclass*
T0*'
_class
loc:@embeddings/workclass*
_output_shapes

:	
?
#embeddings/StringToHashBucketFast_3StringToHashBucketFastPlaceholder_8*#
_output_shapes
:?????????*
num_buckets	
?
embeddings/embedding_lookup_3Gatherembeddings/workclass/read#embeddings/StringToHashBucketFast_3*
Tparams0*
validate_indices(*'
_class
loc:@embeddings/workclass*'
_output_shapes
:?????????*
Tindices0	
?
8embeddings/occupation/Initializer/truncated_normal/shapeConst*
valueB"      *(
_class
loc:@embeddings/occupation*
dtype0*
_output_shapes
:
?
7embeddings/occupation/Initializer/truncated_normal/meanConst*
valueB
 *    *(
_class
loc:@embeddings/occupation*
dtype0*
_output_shapes
: 
?
Bembeddings/occupation/Initializer/truncated_normal/TruncatedNormalTruncatedNormal8embeddings/occupation/Initializer/truncated_normal/shape*

seed *
T0*(
_class
loc:@embeddings/occupation*
seed2 *
dtype0*
_output_shapes

:
?
6embeddings/occupation/Initializer/truncated_normal/mulMulBembeddings/occupation/Initializer/truncated_normal/TruncatedNormaldiv*
T0*(
_class
loc:@embeddings/occupation*
_output_shapes

:
?
2embeddings/occupation/Initializer/truncated_normalAdd6embeddings/occupation/Initializer/truncated_normal/mul7embeddings/occupation/Initializer/truncated_normal/mean*
T0*(
_class
loc:@embeddings/occupation*
_output_shapes

:
?
embeddings/occupation
VariableV2*(
_class
loc:@embeddings/occupation*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
?
embeddings/occupation/AssignAssignembeddings/occupation2embeddings/occupation/Initializer/truncated_normal*
use_locking(*
T0*(
_class
loc:@embeddings/occupation*
validate_shape(*
_output_shapes

:
?
embeddings/occupation/readIdentityembeddings/occupation*
T0*(
_class
loc:@embeddings/occupation*
_output_shapes

:
?
#embeddings/StringToHashBucketFast_4StringToHashBucketFastPlaceholder_9*#
_output_shapes
:?????????*
num_buckets
?
embeddings/embedding_lookup_4Gatherembeddings/occupation/read#embeddings/StringToHashBucketFast_4*'
_output_shapes
:?????????*
Tindices0	*
Tparams0*
validate_indices(*(
_class
loc:@embeddings/occupation
?
<embeddings/native_country/Initializer/truncated_normal/shapeConst*
valueB"*      *,
_class"
 loc:@embeddings/native_country*
dtype0*
_output_shapes
:
?
;embeddings/native_country/Initializer/truncated_normal/meanConst*
valueB
 *    *,
_class"
 loc:@embeddings/native_country*
dtype0*
_output_shapes
: 
?
Fembeddings/native_country/Initializer/truncated_normal/TruncatedNormalTruncatedNormal<embeddings/native_country/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:**

seed *
T0*,
_class"
 loc:@embeddings/native_country*
seed2 
?
:embeddings/native_country/Initializer/truncated_normal/mulMulFembeddings/native_country/Initializer/truncated_normal/TruncatedNormaldiv*
T0*,
_class"
 loc:@embeddings/native_country*
_output_shapes

:*
?
6embeddings/native_country/Initializer/truncated_normalAdd:embeddings/native_country/Initializer/truncated_normal/mul;embeddings/native_country/Initializer/truncated_normal/mean*
T0*,
_class"
 loc:@embeddings/native_country*
_output_shapes

:*
?
embeddings/native_country
VariableV2*
dtype0*
_output_shapes

:**
shared_name *,
_class"
 loc:@embeddings/native_country*
	container *
shape
:*
?
 embeddings/native_country/AssignAssignembeddings/native_country6embeddings/native_country/Initializer/truncated_normal*
T0*,
_class"
 loc:@embeddings/native_country*
validate_shape(*
_output_shapes

:**
use_locking(
?
embeddings/native_country/readIdentityembeddings/native_country*
_output_shapes

:**
T0*,
_class"
 loc:@embeddings/native_country
?
#embeddings/StringToHashBucketFast_5StringToHashBucketFastPlaceholder_10*
num_buckets**#
_output_shapes
:?????????
?
embeddings/embedding_lookup_5Gatherembeddings/native_country/read#embeddings/StringToHashBucketFast_5*
Tindices0	*
Tparams0*
validate_indices(*,
_class"
 loc:@embeddings/native_country*'
_output_shapes
:?????????
?
4embeddings/gender/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *$
_class
loc:@embeddings/gender
?
3embeddings/gender/Initializer/truncated_normal/meanConst*
valueB
 *    *$
_class
loc:@embeddings/gender*
dtype0*
_output_shapes
: 
?
>embeddings/gender/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4embeddings/gender/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:*

seed *
T0*$
_class
loc:@embeddings/gender*
seed2 
?
2embeddings/gender/Initializer/truncated_normal/mulMul>embeddings/gender/Initializer/truncated_normal/TruncatedNormaldiv*
T0*$
_class
loc:@embeddings/gender*
_output_shapes

:
?
.embeddings/gender/Initializer/truncated_normalAdd2embeddings/gender/Initializer/truncated_normal/mul3embeddings/gender/Initializer/truncated_normal/mean*
T0*$
_class
loc:@embeddings/gender*
_output_shapes

:
?
embeddings/gender
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *$
_class
loc:@embeddings/gender
?
embeddings/gender/AssignAssignembeddings/gender.embeddings/gender/Initializer/truncated_normal*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*$
_class
loc:@embeddings/gender
?
embeddings/gender/readIdentityembeddings/gender*
T0*$
_class
loc:@embeddings/gender*
_output_shapes

:
w
 embeddings/string_to_index/ConstConst*
dtype0*
_output_shapes
:*#
valueBB MaleB Female
a
embeddings/string_to_index/SizeConst*
dtype0*
_output_shapes
: *
value	B :
h
&embeddings/string_to_index/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&embeddings/string_to_index/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
?
 embeddings/string_to_index/rangeRange&embeddings/string_to_index/range/startembeddings/string_to_index/Size&embeddings/string_to_index/range/delta*
_output_shapes
:*

Tidx0
?
"embeddings/string_to_index/ToInt64Cast embeddings/string_to_index/range*

SrcT0*
_output_shapes
:*

DstT0	
?
%embeddings/string_to_index/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *
shared_name *
use_node_name_sharing( *
	key_dtype0*
	container 
v
+embeddings/string_to_index/hash_table/ConstConst*
valueB	 R
?????????*
dtype0	*
_output_shapes
: 
?
0embeddings/string_to_index/hash_table/table_initInitializeTableV2%embeddings/string_to_index/hash_table embeddings/string_to_index/Const"embeddings/string_to_index/ToInt64*

Tkey0*

Tval0	
?
embeddings/hash_table_LookupLookupTableFindV2%embeddings/string_to_index/hash_tablePlaceholder_11+embeddings/string_to_index/hash_table/Const*#
_output_shapes
:?????????*	
Tin0*

Tout0	
?
embeddings/embedding_lookup_6Gatherembeddings/gender/readembeddings/hash_table_Lookup*'
_output_shapes
:?????????*
Tindices0	*
Tparams0*
validate_indices(*$
_class
loc:@embeddings/gender
?
2embeddings/race/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *"
_class
loc:@embeddings/race
?
1embeddings/race/Initializer/truncated_normal/meanConst*
valueB
 *    *"
_class
loc:@embeddings/race*
dtype0*
_output_shapes
: 
?
<embeddings/race/Initializer/truncated_normal/TruncatedNormalTruncatedNormal2embeddings/race/Initializer/truncated_normal/shape*

seed *
T0*"
_class
loc:@embeddings/race*
seed2 *
dtype0*
_output_shapes

:
?
0embeddings/race/Initializer/truncated_normal/mulMul<embeddings/race/Initializer/truncated_normal/TruncatedNormaldiv*
T0*"
_class
loc:@embeddings/race*
_output_shapes

:
?
,embeddings/race/Initializer/truncated_normalAdd0embeddings/race/Initializer/truncated_normal/mul1embeddings/race/Initializer/truncated_normal/mean*
_output_shapes

:*
T0*"
_class
loc:@embeddings/race
?
embeddings/race
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *"
_class
loc:@embeddings/race*
	container 
?
embeddings/race/AssignAssignembeddings/race,embeddings/race/Initializer/truncated_normal*
T0*"
_class
loc:@embeddings/race*
validate_shape(*
_output_shapes

:*
use_locking(
~
embeddings/race/readIdentityembeddings/race*
_output_shapes

:*
T0*"
_class
loc:@embeddings/race
?
#embeddings/StringToHashBucketFast_6StringToHashBucketFastPlaceholder_12*#
_output_shapes
:?????????*
num_buckets
?
embeddings/embedding_lookup_7Gatherembeddings/race/read#embeddings/StringToHashBucketFast_6*
Tindices0	*
Tparams0*
validate_indices(*"
_class
loc:@embeddings/race*'
_output_shapes
:?????????
Y
ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
s

ExpandDims
ExpandDimsPlaceholderExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:?????????
[
ExpandDims_1/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
y
ExpandDims_1
ExpandDimsPlaceholder_1ExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:?????????
[
ExpandDims_2/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
y
ExpandDims_2
ExpandDimsPlaceholder_2ExpandDims_2/dim*'
_output_shapes
:?????????*

Tdim0*
T0
[
ExpandDims_3/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
y
ExpandDims_3
ExpandDimsPlaceholder_3ExpandDims_3/dim*
T0*'
_output_shapes
:?????????*

Tdim0
[
ExpandDims_4/dimConst*
dtype0*
_output_shapes
: *
valueB :
?????????
y
ExpandDims_4
ExpandDimsPlaceholder_4ExpandDims_4/dim*'
_output_shapes
:?????????*

Tdim0*
T0
M
concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
?
concatConcatV2
ExpandDimsExpandDims_2ExpandDims_3embeddings/embedding_lookupExpandDims_1embeddings/embedding_lookup_6ExpandDims_4embeddings/embedding_lookup_1embeddings/embedding_lookup_5embeddings/embedding_lookup_4embeddings/embedding_lookup_7embeddings/embedding_lookup_2embeddings/embedding_lookup_3concat/axis*
T0*
N*'
_output_shapes
:?????????E*

Tidx0
?
/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"E      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
?
.dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
?
0dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *p?F>*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
?
9dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/dense/kernel/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:	E?*

seed *
T0*
_class
loc:@dense/kernel*
seed2 
?
-dense/kernel/Initializer/truncated_normal/mulMul9dense/kernel/Initializer/truncated_normal/TruncatedNormal0dense/kernel/Initializer/truncated_normal/stddev*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	E?
?
)dense/kernel/Initializer/truncated_normalAdd-dense/kernel/Initializer/truncated_normal/mul.dense/kernel/Initializer/truncated_normal/mean*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	E?
?
dense/kernel
VariableV2*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:	E?*
dtype0*
_output_shapes
:	E?
?
dense/kernel/AssignAssigndense/kernel)dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	E?
v
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	E?
?
,dense/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:?*
_class
loc:@dense/bias
?
"dense/bias/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@dense/bias
?
dense/bias/Initializer/zerosFill,dense/bias/Initializer/zeros/shape_as_tensor"dense/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/bias*
_output_shapes	
:?
?

dense/bias
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *
_class
loc:@dense/bias*
	container 
?
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:?
l
dense/bias/readIdentity
dense/bias*
_output_shapes	
:?*
T0*
_class
loc:@dense/bias
?
dense/MatMulMatMulconcatdense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:??????????*
transpose_a( 
?
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:??????????
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:??????????
?
1dense_1/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   *!
_class
loc:@dense_1/kernel
?
0dense_1/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
?
2dense_1/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *?d?=*!
_class
loc:@dense_1/kernel
?
;dense_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_1/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0*
_output_shapes
:	?@*

seed *
T0*!
_class
loc:@dense_1/kernel
?
/dense_1/kernel/Initializer/truncated_normal/mulMul;dense_1/kernel/Initializer/truncated_normal/TruncatedNormal2dense_1/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?@
?
+dense_1/kernel/Initializer/truncated_normalAdd/dense_1/kernel/Initializer/truncated_normal/mul0dense_1/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?@
?
dense_1/kernel
VariableV2*!
_class
loc:@dense_1/kernel*
	container *
shape:	?@*
dtype0*
_output_shapes
:	?@*
shared_name 
?
dense_1/kernel/AssignAssigndense_1/kernel+dense_1/kernel/Initializer/truncated_normal*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	?@
|
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?@
?
.dense_1/bias/Initializer/zeros/shape_as_tensorConst*
valueB:@*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
?
$dense_1/bias/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
?
dense_1/bias/Initializer/zerosFill.dense_1/bias/Initializer/zeros/shape_as_tensor$dense_1/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_1/bias*
_output_shapes
:@
?
dense_1/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@dense_1/bias*
	container *
shape:@
?
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
q
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:@
?
dense_1/MatMulMatMul
dense/Reludense_1/kernel/read*
transpose_b( *
T0*'
_output_shapes
:?????????@*
transpose_a( 
?
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:?????????@
W
dense_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:?????????@
?
1dense_2/kernel/Initializer/truncated_normal/shapeConst*
valueB"@      *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:
?
0dense_2/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
?
2dense_2/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *?dN>*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
?
;dense_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_2/kernel/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:@*

seed *
T0*!
_class
loc:@dense_2/kernel*
seed2 
?
/dense_2/kernel/Initializer/truncated_normal/mulMul;dense_2/kernel/Initializer/truncated_normal/TruncatedNormal2dense_2/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:@
?
+dense_2/kernel/Initializer/truncated_normalAdd/dense_2/kernel/Initializer/truncated_normal/mul0dense_2/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:@
?
dense_2/kernel
VariableV2*
	container *
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *!
_class
loc:@dense_2/kernel
?
dense_2/kernel/AssignAssigndense_2/kernel+dense_2/kernel/Initializer/truncated_normal*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
{
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:@
?
.dense_2/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
?
$dense_2/bias/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@dense_2/bias
?
dense_2/bias/Initializer/zerosFill.dense_2/bias/Initializer/zeros/shape_as_tensor$dense_2/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_2/bias*
_output_shapes
:
?
dense_2/bias
VariableV2*
shared_name *
_class
loc:@dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
?
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:
q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:
?
dense_2/MatMulMatMuldense_1/Reludense_2/kernel/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( 
?
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
data_formatNHWC*'
_output_shapes
:?????????*
T0
U
SoftmaxSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:?????????
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
x
ArgMaxArgMaxSoftmaxArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:?????????*

Tidx0
{
GatherGatherConstArgMax*
Tindices0	*
Tparams0*
validate_indices(*#
_output_shapes
:?????????
W
Max/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
u
MaxMaxSoftmaxMax/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:?????????
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst*?
value?B?B
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBembeddings/educationBembeddings/genderBembeddings/marital_statusBembeddings/native_countryBembeddings/occupationBembeddings/raceBembeddings/relationshipBembeddings/workclass*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*/
value&B$B B B B B B B B B B B B B B 
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kernelembeddings/educationembeddings/genderembeddings/marital_statusembeddings/native_countryembeddings/occupationembeddings/raceembeddings/relationshipembeddings/workclass*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save/Const
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B?B
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBembeddings/educationBembeddings/genderBembeddings/marital_statusBembeddings/native_countryBembeddings/occupationBembeddings/raceBembeddings/relationshipBembeddings/workclass*
dtype0*
_output_shapes
:
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*L
_output_shapes:
8::::::::::::::*
dtypes
2
?
save/AssignAssign
dense/biassave/RestoreV2*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_1Assigndense/kernelsave/RestoreV2:1*
validate_shape(*
_output_shapes
:	E?*
use_locking(*
T0*
_class
loc:@dense/kernel
?
save/Assign_2Assigndense_1/biassave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:@
?
save/Assign_3Assigndense_1/kernelsave/RestoreV2:3*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	?@*
use_locking(
?
save/Assign_4Assigndense_2/biassave/RestoreV2:4*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
?
save/Assign_5Assigndense_2/kernelsave/RestoreV2:5*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

:@
?
save/Assign_6Assignembeddings/educationsave/RestoreV2:6*
use_locking(*
T0*'
_class
loc:@embeddings/education*
validate_shape(*
_output_shapes

:
?
save/Assign_7Assignembeddings/gendersave/RestoreV2:7*
use_locking(*
T0*$
_class
loc:@embeddings/gender*
validate_shape(*
_output_shapes

:
?
save/Assign_8Assignembeddings/marital_statussave/RestoreV2:8*
use_locking(*
T0*,
_class"
 loc:@embeddings/marital_status*
validate_shape(*
_output_shapes

:
?
save/Assign_9Assignembeddings/native_countrysave/RestoreV2:9*
use_locking(*
T0*,
_class"
 loc:@embeddings/native_country*
validate_shape(*
_output_shapes

:*
?
save/Assign_10Assignembeddings/occupationsave/RestoreV2:10*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*(
_class
loc:@embeddings/occupation
?
save/Assign_11Assignembeddings/racesave/RestoreV2:11*
use_locking(*
T0*"
_class
loc:@embeddings/race*
validate_shape(*
_output_shapes

:
?
save/Assign_12Assignembeddings/relationshipsave/RestoreV2:12*
use_locking(*
T0**
_class 
loc:@embeddings/relationship*
validate_shape(*
_output_shapes

:
?
save/Assign_13Assignembeddings/workclasssave/RestoreV2:13*
validate_shape(*
_output_shapes

:	*
use_locking(*
T0*'
_class
loc:@embeddings/workclass
?
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13

initNoOp
J
init_all_tablesNoOp1^embeddings/string_to_index/hash_table/table_init

init_1NoOp
L
init_all_tables_1NoOp1^embeddings/string_to_index/hash_table/table_init
/

group_depsNoOp^init_1^init_all_tables_1
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
?
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_beb9b39d0de448738b41e30321c41672/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
?
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
?
save_1/SaveV2/tensor_namesConst"/device:CPU:0*?
value?B?B
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBembeddings/educationBembeddings/genderBembeddings/marital_statusBembeddings/native_countryBembeddings/occupationBembeddings/raceBembeddings/relationshipBembeddings/workclass*
dtype0*
_output_shapes
:
?
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kernelembeddings/educationembeddings/genderembeddings/marital_statusembeddings/native_countryembeddings/occupationembeddings/raceembeddings/relationshipembeddings/workclass"/device:CPU:0*
dtypes
2
?
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
?
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
?
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
?
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
?
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*?
value?B?B
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBembeddings/educationBembeddings/genderBembeddings/marital_statusBembeddings/native_countryBembeddings/occupationBembeddings/raceBembeddings/relationshipBembeddings/workclass
?
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*/
value&B$B B B B B B B B B B B B B B 
?
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*L
_output_shapes:
8::::::::::::::
?
save_1/AssignAssign
dense/biassave_1/RestoreV2*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*
_class
loc:@dense/bias
?
save_1/Assign_1Assigndense/kernelsave_1/RestoreV2:1*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	E?
?
save_1/Assign_2Assigndense_1/biassave_1/RestoreV2:2*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:@
?
save_1/Assign_3Assigndense_1/kernelsave_1/RestoreV2:3*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	?@
?
save_1/Assign_4Assigndense_2/biassave_1/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:
?
save_1/Assign_5Assigndense_2/kernelsave_1/RestoreV2:5*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
?
save_1/Assign_6Assignembeddings/educationsave_1/RestoreV2:6*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*'
_class
loc:@embeddings/education
?
save_1/Assign_7Assignembeddings/gendersave_1/RestoreV2:7*
use_locking(*
T0*$
_class
loc:@embeddings/gender*
validate_shape(*
_output_shapes

:
?
save_1/Assign_8Assignembeddings/marital_statussave_1/RestoreV2:8*
use_locking(*
T0*,
_class"
 loc:@embeddings/marital_status*
validate_shape(*
_output_shapes

:
?
save_1/Assign_9Assignembeddings/native_countrysave_1/RestoreV2:9*
use_locking(*
T0*,
_class"
 loc:@embeddings/native_country*
validate_shape(*
_output_shapes

:*
?
save_1/Assign_10Assignembeddings/occupationsave_1/RestoreV2:10*
use_locking(*
T0*(
_class
loc:@embeddings/occupation*
validate_shape(*
_output_shapes

:
?
save_1/Assign_11Assignembeddings/racesave_1/RestoreV2:11*
use_locking(*
T0*"
_class
loc:@embeddings/race*
validate_shape(*
_output_shapes

:
?
save_1/Assign_12Assignembeddings/relationshipsave_1/RestoreV2:12*
T0**
_class 
loc:@embeddings/relationship*
validate_shape(*
_output_shapes

:*
use_locking(
?
save_1/Assign_13Assignembeddings/workclasssave_1/RestoreV2:13*
use_locking(*
T0*'
_class
loc:@embeddings/workclass*
validate_shape(*
_output_shapes

:	
?
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"?
trainable_variables??
?
embeddings/education:0embeddings/education/Assignembeddings/education/read:023embeddings/education/Initializer/truncated_normal:0
?
embeddings/marital_status:0 embeddings/marital_status/Assign embeddings/marital_status/read:028embeddings/marital_status/Initializer/truncated_normal:0
?
embeddings/relationship:0embeddings/relationship/Assignembeddings/relationship/read:026embeddings/relationship/Initializer/truncated_normal:0
?
embeddings/workclass:0embeddings/workclass/Assignembeddings/workclass/read:023embeddings/workclass/Initializer/truncated_normal:0
?
embeddings/occupation:0embeddings/occupation/Assignembeddings/occupation/read:024embeddings/occupation/Initializer/truncated_normal:0
?
embeddings/native_country:0 embeddings/native_country/Assign embeddings/native_country/read:028embeddings/native_country/Initializer/truncated_normal:0
{
embeddings/gender:0embeddings/gender/Assignembeddings/gender/read:020embeddings/gender/Initializer/truncated_normal:0
s
embeddings/race:0embeddings/race/Assignembeddings/race/read:02.embeddings/race/Initializer/truncated_normal:0
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02+dense/kernel/Initializer/truncated_normal:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02-dense_1/kernel/Initializer/truncated_normal:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02-dense_2/kernel/Initializer/truncated_normal:0
\
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:0"?
	variables??
?
embeddings/education:0embeddings/education/Assignembeddings/education/read:023embeddings/education/Initializer/truncated_normal:0
?
embeddings/marital_status:0 embeddings/marital_status/Assign embeddings/marital_status/read:028embeddings/marital_status/Initializer/truncated_normal:0
?
embeddings/relationship:0embeddings/relationship/Assignembeddings/relationship/read:026embeddings/relationship/Initializer/truncated_normal:0
?
embeddings/workclass:0embeddings/workclass/Assignembeddings/workclass/read:023embeddings/workclass/Initializer/truncated_normal:0
?
embeddings/occupation:0embeddings/occupation/Assignembeddings/occupation/read:024embeddings/occupation/Initializer/truncated_normal:0
?
embeddings/native_country:0 embeddings/native_country/Assign embeddings/native_country/read:028embeddings/native_country/Initializer/truncated_normal:0
{
embeddings/gender:0embeddings/gender/Assignembeddings/gender/read:020embeddings/gender/Initializer/truncated_normal:0
s
embeddings/race:0embeddings/race/Assignembeddings/race/read:02.embeddings/race/Initializer/truncated_normal:0
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02+dense/kernel/Initializer/truncated_normal:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02-dense_1/kernel/Initializer/truncated_normal:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02-dense_2/kernel/Initializer/truncated_normal:0
\
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:0" 
legacy_init_op


group_deps"I
table_initializer4
2
0embeddings/string_to_index/hash_table/table_init*?
serving_default?
2
relationship"
Placeholder_7:0?????????
0

occupation"
Placeholder_9:0?????????
4
marital_status"
Placeholder_6:0?????????
+
race#
Placeholder_12:0?????????
5
native_country#
Placeholder_10:0?????????
3
education_num"
Placeholder_1:0?????????
/
	workclass"
Placeholder_8:0?????????
2
capital_gain"
Placeholder_2:0?????????
'
age 
Placeholder:0?????????
/
	education"
Placeholder_5:0?????????
2
capital_loss"
Placeholder_3:0?????????
4
hours_per_week"
Placeholder_4:0?????????
-
gender#
Placeholder_11:0?????????*
predictions
Gather:0?????????&

confidence
Max:0?????????tensorflow/serving/predict