# FrameSpace
## Abstract representation of tabular data using protobufs

### Conceptual Overview of the Axis, KeySpace, and Keys Heirarchy

![keyspace](https://cloud.githubusercontent.com/assets/6373975/13445184/aa7555a4-dfbf-11e5-8ebd-719152f2df11.png)

**Axis**: Top level description of a KeySpace (Samples, Genes, Clinical Variables)

**KeySpace**: A set of Keys which belong to an axis group. The KeySpace name would be the field as defined by a set of data standards.

**Key**: A vector identifier which belongs to a KeySpace.

Examples: 

```
Axis: Samples
KeySpace: icgc_sample_id
Key: SA530426

Axis: Genes
KeySpace: `symbol`
Key: ABL2
```

### DataFrame Schema Overview

![screen shot 2016-03-01 at 4 00 12 pm](https://cloud.githubusercontent.com/assets/6373975/13470044/fae516a6-e05e-11e5-9b11-10343e538ddf.png)

**DataFrame**: Two dimensional matrix, composed of major and minor Dimensions and a set of Vectors.

**Dimension**: DataFrame axis, this is a subset of KeySpace. When you select a set of Keys from which to build a DataFrame (for example, a set of samples), this defines a Dimension of a DataFrame.

**Vector**: A perpendicular (relative to the major Dimension) 1:n chunk of a matrix, where n is the number of Cells. A Vector is defined in terms of major and minor Dimensions in a DataFrame. 

* For instance, DimensionA above would be the major Dimension of a DataFrame defined as a set of vectors parallel (and including) VectorA. DimensionB would be the minor Dimension of this DataFrame. Given this, the keys identifying a single cell are inherited from DimensionB, and the vector key is inherited from DimensionA (see below for example). 

* Similarily, DimensionB is the major Dimension of a DataFrame defined as a set of vectors parallel (and including) VectorB. DimensionA would be the minor Dimension in this DataFrame. Given this, the keys identifying a single cell are inherited from DimensionA, and the vector key is inherited from DimensionB (see below for example This is defined to allow ease of matrix transposing. 

**Cell**: A cell is what holds the value as defined by the experimental measurement unit. The unit value has context when considered as the intersection between two keyspaces.

### Vectors: An Example

From the above diagram:

**DimensionA**: 
```
Axis: Genes; KeySpace: symbol; Keys: ABCA4, ABL2, ACADM
```
**DimensionB**: 
```
Axis: Samples; KeySpace: sample_id; Keys: sample1, sample2, sample3
```

**VectorA**: 
```
{'ABCA4': [{'sample1': 0}, {'sample2': 1}, {'sample3': -1}]}
```
**VectorB**: 
```
{'sample1': [{'ABCA4': 0}, {'ABL2': -1}, {'ACADM': 1}]}
```

**DataFrame** with **VectorA** format has **DimensionA** as `major`, **DimensionB** as `minor`, and Unit as CNV.

**DataFrame** with **VectorB** format has **DimensionB** as `major`, **DimensionA** as `minor`, and unit as CNV.

