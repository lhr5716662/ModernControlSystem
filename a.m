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

sysc = zpk([0], [0.5] ,1);
syst = series(sys, sysc);

%figure(4)
%bode(syst);
%figure(5)
%nyquist(syst);
figure(7)
margin(syst)

sysc = zpk([], [-0.1, 0.1] ,1);
figure(7)
margin(sysc)


%(1) step(num,den)
%(2) step(num,den,t)
%(3) step(G)
%(4) step(G,t)
%(1) impulse (num,den)
%(2) impulse (num,den,t) 时间向量 t 的范围可以由人工给定（例如 t=0:0.1:10）
%(3) [y,x]=impulse(num,den) 返回变量 y 为输出向量， x 为状态向量
%(4) [y,x,t]=impulse(num,den,t) 向量 t 表示脉冲响应进行计算的时间
%
%
% num=[1];
% den=[0.2,1];
% G=tf(num,den);
% t=0:0.1:4;
% subplot(2,2,1)
% step(G,t),
% grid on
% xlabel('t/s'),ylabel('c(t)'),title('单位阶跃响应曲线') 
% u1=t;
% subplot(2,2,2)
% lsim(G,u1,t),
% grid on
% xlabel('t/s'),ylabel('c(t)'),title('单位斜坡响应曲线')
% u2=(1/2)*(t.^2);
% subplot(2,2,3)
% lsim(G,u2,t),
% grid on
% xlabel('t/s'),ylabel('c(t)'),title('单位加速度响应曲线')

%sys = feedback(sys1,sys2)
%其中sys1是开环传递函数，sys2是反馈函数，默认是负反馈。
%如果是正反馈的话，用这个：
%sys = feedback(sys1,sys2,+1)
