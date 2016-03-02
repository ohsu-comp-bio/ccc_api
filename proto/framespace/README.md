# FrameSpace
## Abstract representation of tabular data using protobufs

### Conceptual Overview of the Axis, KeySpace, and Keys Heirarchy

![keyspace](https://cloud.githubusercontent.com/assets/6373975/13445184/aa7555a4-dfbf-11e5-8ebd-719152f2df11.png)

Based on the above diagram, we have the following:

**Axis**: Top level description of a KeySpace (Samples, Genes, Clinical Variables)

**KeySpace**: A set of Keys which belong to an axis group. The KeySpace name would be the field as defined by a set of data standards from.

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

**Note**: When you build a _DataFrame_ from a subset of keys, you are defining a _Dimension_ of a _DataFrame_.

### DataFrame Schema Overview

![screen shot 2016-03-01 at 4 00 12 pm](https://cloud.githubusercontent.com/assets/6373975/13446281/e5beeaec-dfc6-11e5-96b7-a09e12c7fcaa.png)

