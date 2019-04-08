Exercise Conclusion:

注意行与列数目！

带regularization 的 error 在backpropagation时注意求导时候bias项(第一列，偏置单元b)修改！！

反向传播计算error的时候，注意z(l)与a(l)、a(l+1)之间的对应行列关系！！
(即偏置的对应使用(与后一层计算时需要传递)or忽略(与求导相关计算需要置0！))

NN训练参数的初始化时候：为避免symmetry breaking(对称性破缺，跨学科研究BUG...这里可以想象一下初始化全为0得出来的结果...) 需要随机初始化。
Ng推荐的初始化均匀随机因子选值估计(两位小数就行)
ε_ini = sqrt(6)/sqrt(L_in + L_out)  (L_in与L_out是第L层的输入、输出单元数目，此处为sqrt(6/(400+1 + 25))≈0.118678≈0.12))

完整的training流程大致如下：
随机初始化各层参数，FP得到output→(计算cost function(带or不带regularization)→BP)  ——初始化部分，括号为首次寻找J单独列出。→
                                     
更新参数，寻找最小J(GD Adam blablabla...)→满足J足够小or到达迭代上限，输出结果（各层的parameters）






PS: fmincg函数采用的是line search，基于Wolfe-Powell原则（AdamW当中自动求导不好代码实现的话，可以用这个）；

Ng的ex4.pdf里一步步分解说明是将每一步计算都实现在for循环中。而练习里实现的版本，除开始y的向量化及计算Output Layer的loss delta_3
(意思一下，这里也可以用矩阵运算)写入循环外，其后各参数皆为矩阵运算同时求解；

这里并没有用NN常用的BP自动算法（手工实现 = =、），以及三层的z是ex4中注明的方式而非标准的"W*x+b"形式。