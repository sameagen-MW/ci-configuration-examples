classdef OpenTelemetryPluginService < matlab.buildtool.internal.services.plugins.BuildRunnerPluginService
    % This class is unsupported and might change or be removed without notice
    % in a future version.

    % Copyright 2025 The MathWorks, Inc.

    methods
        function plugins = providePlugins(service, ~)
            import matlab.buildtool.internal.services.plugins.OpenTelemetryPlugin;
            plugins = OpenTelemetryPlugin();
        end
    end
end
