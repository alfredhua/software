# 配置


```
filename:

$!velocityTool.camelCaseName(${question.titleSlug})_$!{question.frontendQuestionId}

code:

${question.content}
  
package leetcode.editor.cn;

public class $!velocityTool.camelCaseName(${question.titleSlug})_$!{question.frontendQuestionId}{

   public static void main(String[] args) {
       Solution solution = new $!velocityTool.camelCaseName(${question.titleSlug})_$!{question.frontendQuestionId}().new Solution();
   }
   
   ${question.code}
   
}

```
执行 tool/init.sh	

