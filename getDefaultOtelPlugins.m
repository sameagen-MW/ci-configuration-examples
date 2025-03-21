function plugins = getDefaultOtelPlugins(options)

arguments
    options (1,1) struct = struct
end

import matlab.buildtool.internal.services.plugins.OpenTelemetryPlugin;

disp("Here");

plugins = [ ...
    OpenTelemetryPlugin(), ...
    createBuildRunProgressPlugin(options), ...
    createDiagnosticsOutputPlugin(options), ...
];
end

function plugin = createBuildRunProgressPlugin(options)
import matlab.automation.Verbosity;
import matlab.buildtool.plugins.BuildRunProgressPlugin;

if isfield(options, "Verbosity")
    verbosity = options.Verbosity;
else
    verbosity = Verbosity.Concise;
end

plugin = BuildRunProgressPlugin.withVerbosity(verbosity);
end

function plugin = createDiagnosticsOutputPlugin(options)
import matlab.buildtool.plugins.DiagnosticsOutputPlugin;

args = {};
if isfield(options, "Verbosity")
    args = [args {"OutputDetail", options.Verbosity, "LoggingLevel", options.Verbosity}];
end

plugin = DiagnosticsOutputPlugin(args{:});
end
