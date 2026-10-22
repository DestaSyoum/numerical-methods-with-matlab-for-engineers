% RUN_ALL_EXAMPLES Execute every original demonstration in this repository.
% Run from the repository root. Figures are saved in the figures folder.

root = fileparts(mfilename('fullpath'));
addpath(fullfile(root, 'src'));
addpath(fullfile(root, 'examples'));
if ~isfolder(fullfile(root, 'figures'))
    mkdir(fullfile(root, 'figures'));
end

examples = { ...
    @error_analysis_demo, @root_finding_demo, @optimization_demo, ...
    @linear_system_demo, @conditioning_demo, @eigenvalue_demo, ...
    @regression_demo, @fourier_demo, @interpolation_demo, ...
    @integration_demo, @differentiation_demo, @ode_demo, ...
    @stiff_ode_demo, @bvp_demo};

for k = 1:numel(examples)
    fprintf('Running %s ...\n', func2str(examples{k}));
    examples{k}();
end

fprintf('Done. Review the generated PNG files in figures/.\n');
