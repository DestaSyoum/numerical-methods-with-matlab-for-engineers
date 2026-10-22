function save_figure(fig, filename)
root = fileparts(fileparts(mfilename('fullpath')));
outdir = fullfile(root, 'figures');
if ~isfolder(outdir), mkdir(outdir); end
exportgraphics(fig, fullfile(outdir, filename), 'Resolution', 180);
end
