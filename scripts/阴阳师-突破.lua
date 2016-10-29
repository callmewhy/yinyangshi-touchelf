package.path=package.path .. ";/var/touchelf/scripts/?.lua"
require "阴阳师-基础"

function main()
    setup()
    
    x1 = 700
    x2 = 1230
    x3 = 1750
    y1 = 380
    y2 = 580
    y3 = 770
    checkPoints = {
        { x1,y1 },
        { x1,y2 },
        { x1,y3 },
        { x2,y1 },
        { x2,y2 },
        { x2,y3 },
        { x3,y1 },
        { x3,y2 },
        { x3,y3 },
    }
    
    for i=1, 9 do
        p = checkPoints[i]
        if getColor(p[1], p[2]) == 0xCBC0B4 then
            -- 点击开始按钮
            click(p[1], p[2])
            click(p[1], p[2]+200)
            
            -- 点击 准备 按钮
            clickReady()
            
            -- 检查是否处于战斗状态
            waitUntilBattleOver()
            
            -- 检查是否结束
            p0 = {1593,1052}
            while getColor(p0[1], p0[2]) ~= 0xF3B25E do
                click(p0[1], p0[2]);
                mSleep(500)
            end
        end
    end
    
end