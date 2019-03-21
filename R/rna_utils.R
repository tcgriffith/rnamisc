#' Title dot bracket notation to a list of pairs
#'
#' @param ss sequence
#'
#' @return a list of pairs
#' @import seqinr
#' @export
#'
#' @examples
#' rnamisc::dot2pair("((..))")
dot2pair = function(ss){
  ss.c = seqinr::s2c(ss)
  plist = list()
  stack = integer()
  for (i in 1:length(ss.c)){
    if (ss.c[[i]] %in% c(".","-")){

    }
    if (ss.c[[i]] %in% c("(")){
      stack = append(stack, i)
    }
    if (ss.c[[i]] %in% c(")")){
      plist = append(plist,list(c(tail(stack,1),i)))
      stack = stack[-length(stack)]
    }
  }
  return(plist)
}
