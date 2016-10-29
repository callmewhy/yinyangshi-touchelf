package.path=package.path .. ";/var/touchelf/scripts/?.lua"
require "阴阳师-基础"

function main()
    setup()
    
    -- 点击 挑战 按钮
    local p0 = {1808,1158}
    click(p0[1], p0[2]);
    
    -- 点击 准备 按钮
    clickReady()
    
    -- 等待对面准备
    local p = {109, 1438}
    while getColor(p[1], p[2]) == 0x222233 do
        mSleep(1000)
    end

    -- 检查是否处于战斗状态
    local clickAuto = function()
        click(89, 1445)
        mSleep(2000)
        click(89, 1445)
    end
    waitUntilBattleOver(clickAuto)
    
    -- 检查是否结束
    while getColor(p0[1], p0[2]) ~= 0x272420 do
        click(p0[1], p0[2])            
        mSleep(500)
    end

end