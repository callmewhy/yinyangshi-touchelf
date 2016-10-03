-- 初始化配置
function setup()
    mSleep(1000)
    rotateScreen(90)
end


-- 点击
function click(x, y)
    touchDown(0, x, y)
    mSleep(500)
    touchUp(0)
end

-- 点击准备按钮
function clickReady()
    local p = {1909, 1268}
    while getColor(p[1], p[2]) ~= 0xc86D22 do
        mSleep(500)
    end
    click(p[1], p[2])
end

-- 等到战斗结束
function waitUntilBattleOver(handler)
    local p = {110, 1500}
    while getColor(p[1], p[2]) == 0x836d54 or getColor(p[1], p[2]) == 0x665341 do
        handler()
        mSleep(1000)
    end
end