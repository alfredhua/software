# 配置

执行 tool/init.sh	

idea 插件：

ideaVim 
ideaVim-EasyMotion
ideaVimExtension
maven helper
AceJump
leetcode

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

