Exercise Conclusion:


数据3使用cross validation来选择确定C与σ注意点：8x8 = 64种模型分别训练，暂存每一种的预测误差（存为NxN阵），寻找最小的->输出此误差对应的C,σ.

模型搭好（封装函数）选控制参数？(CV)→拟定N个模型(可以根据参数or根据训练集合or根据测试集合or综合起来....)→
分别训练、记录每一个模型最终的test(predict) error、parameters→寻找最小（误差限度内）error，确定参数 √


mail的文本处理：关键词替换、时态形式规则等等normalize过程→特征化（先找vacab序列化，后生成特征阵！）→训练SVM记录参数
(核函数类型、w b or αs、实际参与运算的支持向量support vectors阵) √
















