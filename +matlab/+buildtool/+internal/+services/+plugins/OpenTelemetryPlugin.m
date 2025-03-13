classdef OpenTelemetryPlugin < matlab.buildtool.plugins.BuildRunnerPlugin
    methods(Access = protected)
        function runTask(plugin, pluginData)
            disp("OPEN TELEMETRY PLUGIN");
            runTask@matlab.buildtool.plugins.BuildRunnerPlugin(plugin, pluginData);
        end
    end
end
