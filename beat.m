function [xx,tt] = beat(A,B,fc,delf,fsamp,dur)
%BEAT compute samples of the sum of two cosine waves
% usage:
% [xx, tt] = beat(A, B, fc, delf, fsamp, dur)
%
% A = amplitude of lower frequency cosine
% B = amplitude of higher frequency cosine
% fc = center frequency
% delf = frequency difference
% fsamp = sampling rate
% dur = total time duration in seconds
% xx = output vector of samples
%--Second Output:
% tt = time vector corresponding to x
dt = 1/fsamp; %count period
tt = 0:dt:dur;
xx = A*cos(2*pi*(fc-delf)*tt)+B*cos(2*pi*(fc+delf)*tt); 
