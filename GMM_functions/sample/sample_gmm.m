function X = sample_gmm(N,Priors,Mu,Sigmas)
%SAMPLE_GMM Samples N points from a Gaussian Mixture model paramerised by
%   Priors, Mu and Sigma.
%
%   intput ---------------------------------------------------
%       
%       o N      : (1 x 1) , number of samples to draw from the GMM
%
%       o Priors : (1 x K) , weight coefficients of GMM
%
%       o Mu     : (D x K) , means of GMM
%
%       o Sigmas : (D x D x K) , covariances of GMM
%   
%   output --------------------------------------------------
%
%       o X: (N x D)


I = discretesample(Priors, N);
X = zeros(N,size(Mu,1));

for i=1:N
    X(i,:) = mvnrnd(Mu(:,I(i)),Sigmas(:,:,I(i)));
end

end

