# 把 j 映射到 zoxide 的 z 命令
function j --wraps=z --description 'alias j=z'
    z $argv
end
