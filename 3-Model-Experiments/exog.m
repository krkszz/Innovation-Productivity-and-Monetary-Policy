%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clear all
tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'exog';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('exog.log');
M_.exo_names = 'epsilon_m';
M_.exo_names_tex = 'epsilon\_m';
M_.exo_names_long = 'epsilon_m';
M_.exo_names = char(M_.exo_names, 'epsilon_b');
M_.exo_names_tex = char(M_.exo_names_tex, 'epsilon\_b');
M_.exo_names_long = char(M_.exo_names_long, 'epsilon_b');
M_.exo_names = char(M_.exo_names, 'epsilon_omega');
M_.exo_names_tex = char(M_.exo_names_tex, 'epsilon\_omega');
M_.exo_names_long = char(M_.exo_names_long, 'epsilon_omega');
M_.exo_names = char(M_.exo_names, 'epsilon_tfp');
M_.exo_names_tex = char(M_.exo_names_tex, 'epsilon\_tfp');
M_.exo_names_long = char(M_.exo_names_long, 'epsilon_tfp');
M_.endo_names = 'g';
M_.endo_names_tex = 'g';
M_.endo_names_long = 'g';
M_.endo_names = char(M_.endo_names, 'YD');
M_.endo_names_tex = char(M_.endo_names_tex, 'YD');
M_.endo_names_long = char(M_.endo_names_long, 'YD');
M_.endo_names = char(M_.endo_names, 'CD');
M_.endo_names_tex = char(M_.endo_names_tex, 'CD');
M_.endo_names_long = char(M_.endo_names_long, 'CD');
M_.endo_names = char(M_.endo_names, 'LAMBDA');
M_.endo_names_tex = char(M_.endo_names_tex, 'LAMBDA');
M_.endo_names_long = char(M_.endo_names_long, 'LAMBDA');
M_.endo_names = char(M_.endo_names, 'UCD');
M_.endo_names_tex = char(M_.endo_names_tex, 'UCD');
M_.endo_names_long = char(M_.endo_names_long, 'UCD');
M_.endo_names = char(M_.endo_names, 'L');
M_.endo_names_tex = char(M_.endo_names_tex, 'L');
M_.endo_names_long = char(M_.endo_names_long, 'L');
M_.endo_names = char(M_.endo_names, 'KD');
M_.endo_names_tex = char(M_.endo_names_tex, 'KD');
M_.endo_names_long = char(M_.endo_names_long, 'KD');
M_.endo_names = char(M_.endo_names, 'Q');
M_.endo_names_tex = char(M_.endo_names_tex, 'Q');
M_.endo_names_long = char(M_.endo_names_long, 'Q');
M_.endo_names = char(M_.endo_names, 'ID');
M_.endo_names_tex = char(M_.endo_names_tex, 'ID');
M_.endo_names_long = char(M_.endo_names_long, 'ID');
M_.endo_names = char(M_.endo_names, 'mkup');
M_.endo_names_tex = char(M_.endo_names_tex, 'mkup');
M_.endo_names_long = char(M_.endo_names_long, 'mkup');
M_.endo_names = char(M_.endo_names, 'pi');
M_.endo_names_tex = char(M_.endo_names_tex, 'pi');
M_.endo_names_long = char(M_.endo_names_long, 'pi');
M_.endo_names = char(M_.endo_names, 'pi_star');
M_.endo_names_tex = char(M_.endo_names_tex, 'pi\_star');
M_.endo_names_long = char(M_.endo_names_long, 'pi_star');
M_.endo_names = char(M_.endo_names, 'x1D');
M_.endo_names_tex = char(M_.endo_names_tex, 'x1D');
M_.endo_names_long = char(M_.endo_names_long, 'x1D');
M_.endo_names = char(M_.endo_names, 'x2D');
M_.endo_names_tex = char(M_.endo_names_tex, 'x2D');
M_.endo_names_long = char(M_.endo_names_long, 'x2D');
M_.endo_names = char(M_.endo_names, 'R_nom');
M_.endo_names_tex = char(M_.endo_names_tex, 'R\_nom');
M_.endo_names_long = char(M_.endo_names_long, 'R_nom');
M_.endo_names = char(M_.endo_names, 'g_fcn');
M_.endo_names_tex = char(M_.endo_names_tex, 'g\_fcn');
M_.endo_names_long = char(M_.endo_names_long, 'g_fcn');
M_.endo_names = char(M_.endo_names, 'g_fcn_prime');
M_.endo_names_tex = char(M_.endo_names_tex, 'g\_fcn\_prime');
M_.endo_names_long = char(M_.endo_names_long, 'g_fcn_prime');
M_.endo_names = char(M_.endo_names, 'DELTAB');
M_.endo_names_tex = char(M_.endo_names_tex, 'DELTAB');
M_.endo_names_long = char(M_.endo_names_long, 'DELTAB');
M_.endo_names = char(M_.endo_names, 'MONSHK');
M_.endo_names_tex = char(M_.endo_names_tex, 'MONSHK');
M_.endo_names_long = char(M_.endo_names_long, 'MONSHK');
M_.endo_names = char(M_.endo_names, 'omega');
M_.endo_names_tex = char(M_.endo_names_tex, 'omega');
M_.endo_names_long = char(M_.endo_names_long, 'omega');
M_.endo_names = char(M_.endo_names, 'OMEGASHK');
M_.endo_names_tex = char(M_.endo_names_tex, 'OMEGASHK');
M_.endo_names_long = char(M_.endo_names_long, 'OMEGASHK');
M_.endo_names = char(M_.endo_names, 'TFPSHK');
M_.endo_names_tex = char(M_.endo_names_tex, 'TFPSHK');
M_.endo_names_long = char(M_.endo_names_long, 'TFPSHK');
M_.endo_names = char(M_.endo_names, 'wD');
M_.endo_names_tex = char(M_.endo_names_tex, 'wD');
M_.endo_names_long = char(M_.endo_names_long, 'wD');
M_.endo_names = char(M_.endo_names, 'wDstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'wDstar');
M_.endo_names_long = char(M_.endo_names_long, 'wDstar');
M_.endo_names = char(M_.endo_names, 'xw1');
M_.endo_names_tex = char(M_.endo_names_tex, 'xw1');
M_.endo_names_long = char(M_.endo_names_long, 'xw1');
M_.endo_names = char(M_.endo_names, 'xw2');
M_.endo_names_tex = char(M_.endo_names_tex, 'xw2');
M_.endo_names_long = char(M_.endo_names_long, 'xw2');
M_.endo_names = char(M_.endo_names, 'Lstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'Lstar');
M_.endo_names_long = char(M_.endo_names_long, 'Lstar');
M_.endo_names = char(M_.endo_names, 'MRSD');
M_.endo_names_tex = char(M_.endo_names_tex, 'MRSD');
M_.endo_names_long = char(M_.endo_names_long, 'MRSD');
M_.endo_names = char(M_.endo_names, 'wD_pot');
M_.endo_names_tex = char(M_.endo_names_tex, 'wD\_pot');
M_.endo_names_long = char(M_.endo_names_long, 'wD_pot');
M_.endo_names = char(M_.endo_names, 'g_pot');
M_.endo_names_tex = char(M_.endo_names_tex, 'g\_pot');
M_.endo_names_long = char(M_.endo_names_long, 'g_pot');
M_.endo_names = char(M_.endo_names, 'LAMBDA_pot');
M_.endo_names_tex = char(M_.endo_names_tex, 'LAMBDA\_pot');
M_.endo_names_long = char(M_.endo_names_long, 'LAMBDA_pot');
M_.endo_names = char(M_.endo_names, 'YD_pot');
M_.endo_names_tex = char(M_.endo_names_tex, 'YD\_pot');
M_.endo_names_long = char(M_.endo_names_long, 'YD_pot');
M_.endo_names = char(M_.endo_names, 'mkup_pot');
M_.endo_names_tex = char(M_.endo_names_tex, 'mkup\_pot');
M_.endo_names_long = char(M_.endo_names_long, 'mkup_pot');
M_.endo_names = char(M_.endo_names, 'L_pot');
M_.endo_names_tex = char(M_.endo_names_tex, 'L\_pot');
M_.endo_names_long = char(M_.endo_names_long, 'L_pot');
M_.endo_names = char(M_.endo_names, 'CD_pot');
M_.endo_names_tex = char(M_.endo_names_tex, 'CD\_pot');
M_.endo_names_long = char(M_.endo_names_long, 'CD_pot');
M_.endo_names = char(M_.endo_names, 'ID_pot');
M_.endo_names_tex = char(M_.endo_names_tex, 'ID\_pot');
M_.endo_names_long = char(M_.endo_names_long, 'ID_pot');
M_.endo_names = char(M_.endo_names, 'KD_pot');
M_.endo_names_tex = char(M_.endo_names_tex, 'KD\_pot');
M_.endo_names_long = char(M_.endo_names_long, 'KD_pot');
M_.endo_names = char(M_.endo_names, 'UCD_pot');
M_.endo_names_tex = char(M_.endo_names_tex, 'UCD\_pot');
M_.endo_names_long = char(M_.endo_names_long, 'UCD_pot');
M_.endo_names = char(M_.endo_names, 'Q_pot');
M_.endo_names_tex = char(M_.endo_names_tex, 'Q\_pot');
M_.endo_names_long = char(M_.endo_names_long, 'Q_pot');
M_.endo_names = char(M_.endo_names, 'R_nom_pot');
M_.endo_names_tex = char(M_.endo_names_tex, 'R\_nom\_pot');
M_.endo_names_long = char(M_.endo_names_long, 'R_nom_pot');
M_.endo_names = char(M_.endo_names, 'g_fcn_pot');
M_.endo_names_tex = char(M_.endo_names_tex, 'g\_fcn\_pot');
M_.endo_names_long = char(M_.endo_names_long, 'g_fcn_pot');
M_.endo_names = char(M_.endo_names, 'g_fcn_prime_pot');
M_.endo_names_tex = char(M_.endo_names_tex, 'g\_fcn\_prime\_pot');
M_.endo_names_long = char(M_.endo_names_long, 'g_fcn_prime_pot');
M_.param_names = 'beta';
M_.param_names_tex = 'beta';
M_.param_names_long = 'beta';
M_.param_names = char(M_.param_names, 'alpha');
M_.param_names_tex = char(M_.param_names_tex, 'alpha');
M_.param_names_long = char(M_.param_names_long, 'alpha');
M_.param_names = char(M_.param_names, 'epsilon');
M_.param_names_tex = char(M_.param_names_tex, 'epsilon');
M_.param_names_long = char(M_.param_names_long, 'epsilon');
M_.param_names = char(M_.param_names, 'delta');
M_.param_names_tex = char(M_.param_names_tex, 'delta');
M_.param_names_long = char(M_.param_names_long, 'delta');
M_.param_names = char(M_.param_names, 'chi');
M_.param_names_tex = char(M_.param_names_tex, 'chi');
M_.param_names_long = char(M_.param_names_long, 'chi');
M_.param_names = char(M_.param_names, 'vartheta');
M_.param_names_tex = char(M_.param_names_tex, 'vartheta');
M_.param_names_long = char(M_.param_names_long, 'vartheta');
M_.param_names = char(M_.param_names, 'phi');
M_.param_names_tex = char(M_.param_names_tex, 'phi');
M_.param_names_long = char(M_.param_names_long, 'phi');
M_.param_names = char(M_.param_names, 'eta');
M_.param_names_tex = char(M_.param_names_tex, 'eta');
M_.param_names_long = char(M_.param_names_long, 'eta');
M_.param_names = char(M_.param_names, 'rhozeta');
M_.param_names_tex = char(M_.param_names_tex, 'rhozeta');
M_.param_names_long = char(M_.param_names_long, 'rhozeta');
M_.param_names = char(M_.param_names, 'sigmazeta');
M_.param_names_tex = char(M_.param_names_tex, 'sigmazeta');
M_.param_names_long = char(M_.param_names_long, 'sigmazeta');
M_.param_names = char(M_.param_names, 'zeta_bar');
M_.param_names_tex = char(M_.param_names_tex, 'zeta\_bar');
M_.param_names_long = char(M_.param_names_long, 'zeta_bar');
M_.param_names = char(M_.param_names, 'rhon');
M_.param_names_tex = char(M_.param_names_tex, 'rhon');
M_.param_names_long = char(M_.param_names_long, 'rhon');
M_.param_names = char(M_.param_names, 'sigman');
M_.param_names_tex = char(M_.param_names_tex, 'sigman');
M_.param_names_long = char(M_.param_names_long, 'sigman');
M_.param_names = char(M_.param_names, 'psi_I');
M_.param_names_tex = char(M_.param_names_tex, 'psi\_I');
M_.param_names_long = char(M_.param_names_long, 'psi_I');
M_.param_names = char(M_.param_names, 'psi_Im');
M_.param_names_tex = char(M_.param_names_tex, 'psi\_Im');
M_.param_names_long = char(M_.param_names_long, 'psi_Im');
M_.param_names = char(M_.param_names, 'psi_N');
M_.param_names_tex = char(M_.param_names_tex, 'psi\_N');
M_.param_names_long = char(M_.param_names_long, 'psi_N');
M_.param_names = char(M_.param_names, 'alpha_N');
M_.param_names_tex = char(M_.param_names_tex, 'alpha\_N');
M_.param_names_long = char(M_.param_names_long, 'alpha_N');
M_.param_names = char(M_.param_names, 'sigmam');
M_.param_names_tex = char(M_.param_names_tex, 'sigmam');
M_.param_names_long = char(M_.param_names_long, 'sigmam');
M_.param_names = char(M_.param_names, 'rhom');
M_.param_names_tex = char(M_.param_names_tex, 'rhom');
M_.param_names_long = char(M_.param_names_long, 'rhom');
M_.param_names = char(M_.param_names, 'sigmab');
M_.param_names_tex = char(M_.param_names_tex, 'sigmab');
M_.param_names_long = char(M_.param_names_long, 'sigmab');
M_.param_names = char(M_.param_names, 'rhob');
M_.param_names_tex = char(M_.param_names_tex, 'rhob');
M_.param_names_long = char(M_.param_names_long, 'rhob');
M_.param_names = char(M_.param_names, 'gamma_pi');
M_.param_names_tex = char(M_.param_names_tex, 'gamma\_pi');
M_.param_names_long = char(M_.param_names_long, 'gamma_pi');
M_.param_names = char(M_.param_names, 'gamma_y');
M_.param_names_tex = char(M_.param_names_tex, 'gamma\_y');
M_.param_names_long = char(M_.param_names_long, 'gamma_y');
M_.param_names = char(M_.param_names, 'gamma_r');
M_.param_names_tex = char(M_.param_names_tex, 'gamma\_r');
M_.param_names_long = char(M_.param_names_long, 'gamma_r');
M_.param_names = char(M_.param_names, 'gamma_a');
M_.param_names_tex = char(M_.param_names_tex, 'gamma\_a');
M_.param_names_long = char(M_.param_names_long, 'gamma_a');
M_.param_names = char(M_.param_names, 'theta');
M_.param_names_tex = char(M_.param_names_tex, 'theta');
M_.param_names_long = char(M_.param_names_long, 'theta');
M_.param_names = char(M_.param_names, 'thetaw');
M_.param_names_tex = char(M_.param_names_tex, 'thetaw');
M_.param_names_long = char(M_.param_names_long, 'thetaw');
M_.param_names = char(M_.param_names, 'omegal');
M_.param_names_tex = char(M_.param_names_tex, 'omegal');
M_.param_names_long = char(M_.param_names_long, 'omegal');
M_.param_names = char(M_.param_names, 'iotaw');
M_.param_names_tex = char(M_.param_names_tex, 'iotaw');
M_.param_names_long = char(M_.param_names_long, 'iotaw');
M_.param_names = char(M_.param_names, 'lambda_bar');
M_.param_names_tex = char(M_.param_names_tex, 'lambda\_bar');
M_.param_names_long = char(M_.param_names_long, 'lambda_bar');
M_.param_names = char(M_.param_names, 'rho_lambda');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_lambda');
M_.param_names_long = char(M_.param_names_long, 'rho_lambda');
M_.param_names = char(M_.param_names, 'g_ss');
M_.param_names_tex = char(M_.param_names_tex, 'g\_ss');
M_.param_names_long = char(M_.param_names_long, 'g_ss');
M_.param_names = char(M_.param_names, 'L_ss');
M_.param_names_tex = char(M_.param_names_tex, 'L\_ss');
M_.param_names_long = char(M_.param_names_long, 'L_ss');
M_.param_names = char(M_.param_names, 'lambda_ss');
M_.param_names_tex = char(M_.param_names_tex, 'lambda\_ss');
M_.param_names_long = char(M_.param_names_long, 'lambda_ss');
M_.param_names = char(M_.param_names, 'mkup_ss');
M_.param_names_tex = char(M_.param_names_tex, 'mkup\_ss');
M_.param_names_long = char(M_.param_names_long, 'mkup_ss');
M_.param_names = char(M_.param_names, 'pi_ss');
M_.param_names_tex = char(M_.param_names_tex, 'pi\_ss');
M_.param_names_long = char(M_.param_names_long, 'pi_ss');
M_.param_names = char(M_.param_names, 'iotap');
M_.param_names_tex = char(M_.param_names_tex, 'iotap');
M_.param_names_long = char(M_.param_names_long, 'iotap');
M_.param_names = char(M_.param_names, 'omegabar');
M_.param_names_tex = char(M_.param_names_tex, 'omegabar');
M_.param_names_long = char(M_.param_names_long, 'omegabar');
M_.param_names = char(M_.param_names, 'rhoomega');
M_.param_names_tex = char(M_.param_names_tex, 'rhoomega');
M_.param_names_long = char(M_.param_names_long, 'rhoomega');
M_.param_names = char(M_.param_names, 'sigmaomega');
M_.param_names_tex = char(M_.param_names_tex, 'sigmaomega');
M_.param_names_long = char(M_.param_names_long, 'sigmaomega');
M_.param_names = char(M_.param_names, 'rhotfp');
M_.param_names_tex = char(M_.param_names_tex, 'rhotfp');
M_.param_names_long = char(M_.param_names_long, 'rhotfp');
M_.param_names = char(M_.param_names, 'sigmatfp');
M_.param_names_tex = char(M_.param_names_tex, 'sigmatfp');
M_.param_names_long = char(M_.param_names_long, 'sigmatfp');
M_.param_names = char(M_.param_names, 'h');
M_.param_names_tex = char(M_.param_names_tex, 'h');
M_.param_names_long = char(M_.param_names_long, 'h');
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 42;
M_.param_nbr = 43;
M_.orig_endo_nbr = 42;
M_.aux_vars = [];
M_.Sigma_e = zeros(4, 4);
M_.Correlation_matrix = eye(4, 4);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('exog_static');
erase_compiled_function('exog_dynamic');
M_.lead_lag_incidence = [
 1 18 0;
 0 19 60;
 2 20 61;
 0 21 62;
 3 22 0;
 0 23 0;
 4 24 0;
 0 25 63;
 5 26 64;
 0 27 65;
 6 28 66;
 0 29 0;
 0 30 67;
 0 31 68;
 7 32 0;
 0 33 0;
 0 34 69;
 8 35 0;
 9 36 0;
 0 37 0;
 10 38 0;
 11 39 0;
 12 40 0;
 0 41 0;
 0 42 70;
 0 43 71;
 0 44 0;
 0 45 0;
 0 46 0;
 13 47 0;
 0 48 72;
 0 49 73;
 0 50 74;
 0 51 0;
 14 52 75;
 15 53 76;
 16 54 0;
 17 55 0;
 0 56 77;
 0 57 0;
 0 58 0;
 0 59 78;]';
M_.nstatic = 11;
M_.nfwrd   = 14;
M_.npred   = 12;
M_.nboth   = 5;
M_.nsfwrd   = 19;
M_.nspred   = 17;
M_.ndynamic   = 31;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(42, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(43, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 189;
M_.NNZDerivatives(2) = -1;
M_.NNZDerivatives(3) = -1;
load parameterfile.mat;
set_param_value('eta', eta); 
set_param_value('alpha_N', alpha_N); 
set_param_value('rhon', rhon); 
set_param_value('sigman', sigman); 
set_param_value('rho_lambda', rho_lambda); 
set_param_value('lambda_ss', lambda_ss); 
set_param_value('phi', phi); 
set_param_value('beta', beta); 
set_param_value('alpha', alpha); 
set_param_value('epsilon', epsilon); 
set_param_value('h', h); 
set_param_value('delta', delta); 
set_param_value('psi_I', psi_I); 
set_param_value('psi_Im', psi_Im); 
set_param_value('psi_N', psi_N); 
set_param_value('vartheta', vartheta); 
set_param_value('gamma_pi', gamma_pi); 
set_param_value('gamma_y', gamma_y); 
set_param_value('gamma_r', gamma_r); 
set_param_value('gamma_a', gamma_a); 
set_param_value('theta', theta); 
set_param_value('iotap', iotap); 
set_param_value('omegabar', omegabar); 
set_param_value('pi_ss', pi_ss); 
set_param_value('g_ss', g_ss); 
set_param_value('L_ss', L_ss); 
set_param_value('mkup_ss', mkup_ss); 
set_param_value('thetaw', thetaw); 
set_param_value('omegal', omegal); 
set_param_value('iotaw', iotaw); 
set_param_value('rhom', rhom); 
set_param_value('rhob', rhob); 
set_param_value('rhoomega', rhoomega); 
set_param_value('rhotfp', rhotfp); 
set_param_value('rhozeta', rhozeta); 
set_param_value('sigmab', sigmab); 
set_param_value('sigmam', sigmam); 
set_param_value('sigmaomega', sigmaomega); 
set_param_value('sigmatfp', sigmatfp); 
set_param_value('sigmazeta', sigmazeta); 
%
% SHOCKS instructions
%
make_ex_;
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
M_.Sigma_e(2, 2) = 1;
M_.Sigma_e(3, 3) = 1;
M_.Sigma_e(4, 4) = 1;
M_.sigma_e_is_diagonal = 1;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_.irf = 12;
options_.nocorr = 1;
options_.nodisplay = 1;
options_.nograph = 1;
options_.nomoments = 1;
options_.order = 1;
var_list_=[];
info = stoch_simul(var_list_);
save('exog_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('exog_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('exog_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('exog_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('exog_results.mat', 'estimation_info', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off