%This is the example from Page 536    kkkkkkk
if 0
	num = 5*[0.1 1];
	f1 = [1 0]; f2 = [0.5 1]; f3 = [1/2500 0.6/50 1];
	den = conv(f1, conv(f2, f3));
	sys = tf(num, den)
	bode(sys)
end
%This is the example from Page 622
if 0
	num = [0.5]; 
	den = [1 2 1 0.5];
	sys = tf(num, den);
	nyquist(sys);
end
%num = 5*[0.1 1];
%f1 = [1 0]; f2 = [0.5 1]; f3 = [1/2500 0.6/50 1];
%den = conv(f1, conv(f2, f3));
%sys = tf(num, den)
z = [];
p = [0, -2, -5];
k = 50;
sys = zpk(z, p, k);

sysc = zpk([0], [-1] ,1);
syst = series(sys, sysc);


%figure(4)
%bode(syst);
%figure(5)
%nyquist(syst);
figure(7)
margin(syst)
