import numpy as np
import matplotlib.pyplot as plt
from scipy.fftpack import fft
from scipy.signal import welch
from scipy.signal import stft
from detect_peaks import detect_peaks


def read_signals(filename):
    with open(filename, 'r') as lines:
        signal_data = [float(line.strip()) for line in lines if line.isdigit]
        signal_data = np.array(signal_data, dtype=np.float32)
    return signal_data


INPUT_FOLDER = './data/'

INPUT_FILES = ['data0010.txt']

signals = []

for input_file in INPUT_FILES:
    signal = read_signals(INPUT_FOLDER + input_file)
    signals.append(signal)

signals = np.array(signals)


def get_fft_values(y_values, T, N, f_s):
    f_values = np.linspace(0.0, 1.0/(2.0*T), N//2)
    fft_values_ = fft(y_values)
    fft_values = 2.0/N * np.abs(fft_values_[0:N//2])
    return f_values, fft_values


def get_psd_values(y_values, T, N, f_s):
    f_values, psd_values = welch(y_values, fs=f_s)
    return f_values, psd_values


def autocorr(x):
    result = np.correlate(x, x, mode='full')
    return result[len(result)//2:]


def get_autocorr_values(y_values, T, N, f_s):
    autocorr_values = autocorr(y_values)
    x_values = np.array([T * jj for jj in range(0, N)])
    return x_values, autocorr_values


def get_values(y_values, T, N, f_s):
    y_values = y_values
    x_values = [1/10000 * kk for kk in range(0,len(y_values))]
    return x_values, y_values

list_functions = [get_values, get_fft_values, get_psd_values, get_autocorr_values]

signals = signals[0]

N = len(signals)
f_s = 10000
t_n = 1/10000
T = t_n / N

f, axarr = plt.subplots(nrows=4, ncols=1, figsize=(5,5))

for row_no in range(0,4):
    plot_no = row_no

    value_retriever = list_functions[row_no]

    ax = axarr[row_no]

    x_values, y_values = value_retriever(signals, T, N, f_s)
    ax.plot(x_values, y_values, linestyle='-')

    if row_no != 0:
        max_peak_height = 0.1 * np.nanmax(y_values)
        indices_peaks = detect_peaks(y_values, mph=max_peak_height)
        ax.scatter(x_values[indices_peaks], y_values[indices_peaks], marker='*', s=60)
          
plt.tight_layout()
plt.subplots_adjust(top=0.90, hspace=0.6)
plt.show()


def get_stft_values(y_values, T, N, f_s):
    f_values, t, stft_values = stft(y_values, fs=f_s)
    return f_values, t, stft_values
    
x_values, t, y_values = get_stft_values(signals, T, N, f_s)

plt.figure(figsize=(5,5))
plt.tight_layout()
plt.pcolormesh(t, x_values, np.abs(y_values), cmap='nipy_spectral')
plt.show()