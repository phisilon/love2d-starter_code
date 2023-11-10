function love.load()
    love.window.setMode(500,500)
    width,height,flags=love.window.getMode()

    --math vars
    huge=math.huge
    pi=math.pi
    --graphics vars
    love.graphics.setDefaultFilter('nearest','nearest') 
    sWidth,sHeight=1920,1080
    color={0,0,0}

    --game vars
    time=0
    test=false
end

function love.update(dt)
    time=time+dt
end

function love.draw()
end

function love.mousemoved(x,y,dx,dy)
end

--graphics functions
graphics=love.graphics
function setColor(r,g,b)
    graphics.setColor(r/255,g/255,b/255)
end
function pixel(x,y)
    if x<=sWidth-1 and x>=1 and y<=sHeight and y>=1 then
        graphics.rectangle('fill',round(x*(width/sWidth)),round(y*(height/sHeight)),(width/sWidth),(height/sHeight))
    end
end
function rectangle(x,y,sizex,sizey)
    graphics.rectangle('fill',x*(width/sWidth),y*(height/sHeight),sizex*(width/sWidth),sizey*(height/sHeight))
end
function line(x1,y1,x2,y2)
    graphics.line(x1*(width/sWidth),y1*(height/sHeight),x2*(width/sWidth),y2*(height/sHeight))
end
function polygon(x1,y1,x2,y2,x3,y3,x4,y4)
    love.graphics.polygon('fill',x1*(width/sWidth),y1*(height/sHeight),x2*(width/sWidth),y2*(height/sHeight),x3*(width/sWidth),y3*(height/sHeight),x4*(width/sWidth),y4*(height/sHeight))
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
function distance3D(x1,y1,z1,x2,y2,z2)
    return math.sqrt((x1-x2)^2+(y1-y2)^2+(z1-z2)^2)
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
function findIntersection(x1,y1,x2,y2,x3,y3,x4,y4)
    return ((x1*y2-y1*x2)*(x3-x4)-(x1-x2)*(x3*y4-y3*x4))/((x1-x2)*(y3-y4)-(y1-y2)*(x3-x4)),((x1*y2-y1*x2)*(y3-y4)-(y1-y2)*(x3*y4-y3*x4))/((x1-x2)*(y3-y4)-(y1-y2)*(x3-x4))
end
function findAngle(x1,y1,x2,y2)
    if y2>y1 then
        return toDeg(math.atan((y1-y2)/(x1-x2)))
    else
        return toDeg(math.atan((y1-y2)/(x1-x2)))+180
    end
end

--misc
function getMouse()
    local x,y=love.mouse.getPosition()
    x=x/(width/sWidth)
    y=y/(height/sHeight)
    return x,y
end
function createImageAray(image)
    local imageData=love.image.newImageData(image)
    local map={}
    local w,h=imageData:getDimensions()

    for y=1,h do
        map[y]={}
        for x=1,w do
            local r,g,b,a=imageData:getPixel(x-1, y-1)
            map[y][x]={r,g,b,a}
        end
    end
    return map
end

--game functions
