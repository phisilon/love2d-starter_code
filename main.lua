function love.load()
    love.window.setMode(1280,720)
    width,height,flags=love.window.getMode()
    --math vars
    huge=math.huge
    pi=math.pi
    --graphics vars
    resolution={width=640,height=360}

    --game vars
    test={}
end

function love.update(dt)
end

function love.draw()
end

--graphics functions
graphics=love.graphics
function pixel(x,y)
    graphics.rectangle('fill',x*width/resolution.width,y*height/resolution.height,width/resolution.width,height/resolution.height)
end
function square(x,y,size)
    for fy=0,size,1 do
        for fx=0,size,1 do
            graphics.rectangle('fill',(fx+x)*width/resolution.width,(fy+y)*height/resolution.height,width/resolution.width,height/resolution.height)
        end
    end
end
function rectangle(x,y,sizex,sizey)
    for fy=0,sizey,1 do
        for fx=0,sizex,1 do
            graphics.rectangle('fill',(fx+x)*width/resolution.width,(fy+y)*height/resolution.height,width/resolution.width,height/resolution.height)
        end
    end
end
function line(x1,y1,x2,y2)
    dyb=y2-y1
    dx=x2-x1
    if dx==0 then
        dx=1
    end
    xs=x1
    for x=x1,x2,1 do
        y=dyb*(x-xs+0.5)/dx+y1
        graphics.rectangle('fill',x*width/resolution.width,y*height/resolution.height,width/resolution.width,height/resolution.height)
    end
end
function circle(x,y,radius)
    for fy=0,radius*2,1 do
        for fx=0,radius*2,1 do
            if distance(x+radius,y+radius,fx,fy)<radius then
                graphics.rectangle('fill',(fx+x-1)*width/resolution.width,(fy+y-1)*height/resolution.height,width/resolution.width,height/resolution.height)
            end
        end
    end
end


--math functions
function abs(n)
    return math.abs(n)
end
function ceil(n)
    return math.ceil(n)
end
function cos(n)
    return math.cos(n)
end
function toDeg(n)
    return math.deg(n)
end
function distance(x1,y1,x2,y2)
    return math.sqrt((x1-x2)^2+(y1-y2)^2)
end
function floor(n)
    return math.floor(n)
end
function max(t)
    return math.max(unpack(t))
end
function min(t)
    return math.min(unpack(t))
end
function toRad(n)
    return math.rad(n)
end
function random(min,max)
    return math.random(min,max)
end
function round(n)
    return math.floor(n+0.5)
end
function sin(n)
    return math.sin(n)
end
function sqrt(n)
    return math.sqrt(n)
end
function tan(n)
    return math.tan(n)
end
