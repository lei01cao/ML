Exercise Conclusion:


Anomaly Detection

异常检验（也可当作一元分类），仅对感兴趣的正样本建模（不代表其余一定是负样本，e.g. 在线购物问题），目的是预测新样本是否“合法”

如何选定p值 ε？  →使Precision/Recall均衡值F1-score（2*P*R/(P+R)）最大，类似CV找超参数方式        （*CV集需有标签！）
Precision = 假设预测出的异常中确为异常的数目 / 模型假设预测出的异常数目（确为异常+模型误认为的异常）
Recall = 假设预测出的异常中确为异常的数目 / 样本中实际的异常数目（确为异常+模型误认为非异常的异常）

PS：①这里CV样本标签load时已给出，CV用来确定超参数ε即门限值。Xval - CV数据集数据； yval - CV数据集的标签； X - 训练样本，无标签！！！
②计算均值μ协方差阵σ²时未用var()函数，自实现原因：Octave/MATLAB默认使用1/(m-1)的无偏估计权值（数据量大时没太大问题，有偏可用var( ,1)形式）&用上m值


Recommender Systems (Collaborative Filtering)

推荐系统（协同过滤算法），根据已标注过的数据及对应等级划分相似用户集合，从集合中找到目标用户未标注的高等级数据推荐给Ta

矩阵R：与Y对应位置表示同一部电影，表示该电影用户i是否做过标记。标注出每一用户已打过分的电影为1未打过的为0，推荐系统的目的则是从0中寻找预测分数高的那些电影。

Part7中做normalizeRatings目的是配合随机初始化X,Theta对Y进行normalization，加速收敛（用的时候记得加回Ymean）

X与θ的迭代更新为同时更新！！！不可如：先求出X更新值→拿更新后的X计算新的cost→计算θ！

PS：①跟神经网络那章练习相似，部分输入&输出会以列向量形式存储传递（fmincg寻最小值函数参数传递格式）
②注意正则化的正则项与计算cost项是分开的（千万不能写到求和式之中！），具体可见cs229笔记之中第50页利用贝叶斯公式的证明部分
③寻找第j个电影与第i个电影相关？ - 寻找较小的||x(i)-x(j)||值（比如算完从小到大排序，选出前X个）
④ex8.pdf最后Figure 4中推荐出相关电影评分用的参数训练样本非代码中的！！目测训练样本丢失？（感兴趣也可以从豆瓣 or IMDb找样本爬）


