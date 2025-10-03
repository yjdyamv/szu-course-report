#import "../utils/style.typ": *

#let cover(
  时间: ("二五","二六","一"), // 二○「二五」 ～二○「二六」 学年度第「 一 」学期

  课程编号: "1002100001",
  课序号: "01",
  课程名称: "城市地理学",
  主讲教师: "杨超",
  
  学号: "2023123456",
  姓名: "深小荔",
  专业年级: "2023级地理信息科学",

  题目: "深圳市城市空间结构演变及其影响因素分析", 
) = {
  set text(font: 字体.楷体, size: 字号.五号)

  align(center)[#text(font: 字体.宋体, size: 字号.二号)[深圳大学考试答题纸]]

  align(center)[#text(font: 字体.宋体, size: 字号.小四)[(以论文、报告等形式考核专用)]]

  // 时间
  align(center)[#text(font: 字体.宋体, size: 字号.小四)[二〇 #underline(时间.at(0)) ～二〇 #underline(时间.at(1)) 学年度第 #underline(时间.at(2)) 学期]]

  set table.hline(stroke: .6pt)
  stack(
    // 个人信息
    align(center)[#table(stroke: none, columns: (5em, 6em, 4em, 2em, 5em, auto, 5em, auto, 3em, 3em),
      [课程编号], [#课程编号], [课序号], [#课序号], [课程名称], [#课程名称], [主讲教师], [#主讲教师], [评分], [],
      table.hline(start: 1, end: 2), table.hline(start: 3, end: 4), table.hline(start: 5, end: 6), table.hline(start: 7, end: 8), table.hline(start: 9, end: 10), 
    )],
    align(center)[#table(stroke: none, columns: (3em, 6em, 3em, 5em, 5em, auto),
      [学号], [#学号], [姓名], [#姓名], [专业年级], [#专业年级], 
      table.hline(start: 1, end: 2), table.hline(start: 3, end: 4), table.hline(start: 5, end: 6),
    )],
    v(0.5cm),
    // 教师评语专业年级: "2024级计算机与计算科学"
    table(columns: (1fr), rows: (4.2cm),
      [#align(left + top)[教师评语：]]
    ),
    v(0.2cm),
    // 题目
    align(center)[#table(columns: (auto, auto), stroke: none,
      text(size: 字号.小四)[题目: ],
      text(font: 字体.黑体, size: 字号.四号, 题目),
      table.hline(start: 1, end: 2),
    )],

  )
}
