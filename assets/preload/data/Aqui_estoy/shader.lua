local shaderName = "crt"
function onBeatHit()
    if curBeat == 51 or curBeat == 119 or curBeat == 169 then
        shaderCoordFix() -- initialize a fix for textureCoord when resizing game window
    
        runHaxeCode([[
            var shaderName = "]] .. shaderName .. [[";
        
            game.initLuaShader(shaderName);
        
            shader0 = game.createRuntimeShader(shaderName);
            game.camGame.setFilters([new ShaderFilter(shader0)]);
        ]])
    end
    if curbeat == 119 then
        runHaxeCode('game.'..cam..'.setFilters([shader0]);')
    end
    if curbeat == 169 then
        runHaxeCode('game.'..cam..'.setFilters([shader0]);')
    end
end

function onUpdate()
    if curBeat >= 51 then
        runHaxeCode([[
            shader0.setFloat("iTime", ]] .. os.clock() .. [[);
        ]])
    end
end

function shaderCoordFix()
    runHaxeCode([[
        resetCamCache = function(?spr) {
            if (spr == null || spr.filters == null) return;
            spr.__cacheBitmap = null;
            spr.__cacheBitmapData3 = spr.__cacheBitmapData2 = spr.__cacheBitmapData = null;
            spr.__cacheBitmapColorTransform = null;
        }
        
        fixShaderCoordFix = function(?_) {
            resetCamCache(game.camGame.flashSprite);
            resetCamCache(game.camHUD.flashSprite);
            resetCamCache(game.camOther.flashSprite);
        }
    
        FlxG.signals.gameResized.add(fixShaderCoordFix);
        fixShaderCoordFix();
    ]])
    
    local temp = onDestroy
    function onDestroy()
        runHaxeCode([[
            FlxG.signals.gameResized.remove(fixShaderCoordFix);
        ]])
        temp()
    end
end

function removeCamFilter(cam)
    runHaxeCode('game.'..cam..'.setFilters([]);')
end

function onStepHit()
    if curStep == 338 or curStep == 608 or curStep == 879 then
    removeCamFilter("camGame")
    end
end