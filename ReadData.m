%--------------------------------------------------------------------------------
fid = fopen('BB275.dpt', 'rt');
datacell = textscan(fid, '%.6f%.6f', 'Delimiter',',', 'CollectOutput', 1);
datavalues = datacell{1};    %as a numeric array
plot(datavalues(:, 1), datavalues(:,2), 'Color', '#592540');

hold on;
%--------------------------------------------------------------------------------
fid = fopen('BB293.dpt', 'rt');
datacell = textscan(fid, '%.6f%.6f', 'Delimiter',',', 'CollectOutput', 1);
datavalues = datacell{1};    %as a numeric array
set(groot,'defaultLineLineWidth',0.3);
set (gca, 'xdir', 'reverse');
plot(datavalues(:, 1), datavalues(:,2), 'Color', 'red');

%--------------------------------------------------------------------------------
fid = fopen('BB313.dpt', 'rt');
datacell = textscan(fid, '%.6f%.6f', 'Delimiter',',', 'CollectOutput', 1);
datavalues = datacell{1};    %as a numeric array
plot( datavalues(:, 1), datavalues(:,2), 'Color', 'blue');
%--------------------------------------------------------------------------------
fid = fopen('BB343.dpt', 'rt');
datacell = textscan(fid, '%.6f%.6f', 'Delimiter',',', 'CollectOutput', 1);
datavalues = datacell{1};    %as a numeric array
plot( datavalues(:, 1), datavalues(:,2), 'Color', 'black');
%--------------------------------------------------------------------------------
fid = fopen('BB355.dpt', 'rt');
datacell = textscan(fid, '%.6f%.6f', 'Delimiter',',', 'CollectOutput', 1);
datavalues = datacell{1};    %as a numeric array
plot( datavalues(:, 1), datavalues(:,2), 'Color', '#EDB120');
%--------------------------------------------------------------------------------
grid on
grid minor
hold off;
legend({'275k','293k', '313k', '343k', '355k'}, 'Location', 'northwest', 'Orientation','vertical');
ylabel('Transmittance (%)');
xlabel('Wavenumber (cm^{-1})');