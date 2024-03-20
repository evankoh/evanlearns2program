def sort_grades(lst):
    sort_order={'VB':'A','V0':'B','V0+':'C','V1':'D','V2':'E','V3':'F','V4':'G','V5':'H','V6':'I','V7':'J','V8':'K','V9':'L','V10':'M','V11':'N','V12':'O','V13':'P','V14':'Q','V15':'R','V16':'S','V17':'T'}
    newlst=sorted(lst, key=lambda val: sort_order.get(val,val))
    return newlst