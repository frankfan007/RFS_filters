%%  Hasan H�seyin S�nmez - 27.09.2018
%   Sampling weights from the likelihood
%   or different sampling strategies

%%  Inputs:
%               xki     : current particles
%               zk      : current measurements
%               model   : model parameters
%               

function Wki = SampleWeights(xki, zk, model)

switch model.Concept
    case 'single'
        wki = computeLikelihood(zk, xki, model)+eps;	% likelihood value as the predicted weight
    case 'Ber'
end

Wki = wki/sum(wki);         % normalized weights
        



end