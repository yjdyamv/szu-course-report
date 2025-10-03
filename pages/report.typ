#import "../utils/style.typ": *
#import "@preview/cuti:0.3.0": *

#let personal-report(
  时间: ("二五","二六","一"), // 二○「二五」 ～二○「二六」 学年度第「 一 」学期
  学号: "2023123456",
  姓名: "深小荔",
  题目: "深圳市城市空间结构演变及其影响因素分析", 
  联系电话: "",
  电子邮件: "",
) = {
  show: show-cn-fakebold
  set text(font: 字体.宋体, size: 字号.小二)

  align(center)[#text(font: 字体.宋体, size: 字号.二号)[深圳大学期末课程报告]]

  v(23pt)

  align(center)[#text(font: 字体.宋体, size: 字号.二号, weight: "bold")[个人成绩]]

  set table.hline(stroke: .6pt)

  v(23pt)
  
  // 报告个人信息
  align(center)[
    #set text(font: 字体.宋体, size: 字号.小四)
    #table(columns: (), rows: (), 
    [序号], [学号], [姓名], [成绩], 
    [1], [#学号], [#姓名], [], 
  )]

  // 

}

