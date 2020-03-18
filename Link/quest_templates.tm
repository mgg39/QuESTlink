
:Begin:
:Function:       wrapper_createQureg
:Pattern:        QuEST`CreateQureg[numQubits_Integer]
:Arguments:      { numQubits }
:ArgumentTypes:  { Integer }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`CreateQureg::usage = "CreateQureg[numQubits] returns the id of a newly created statevector.";
    QuEST`CreateQureg::error = "`1`";
    QuEST`CreateQureg[___] := QuEST`Private`invalidArgError[CreateQureg];

:Begin:
:Function:       wrapper_createDensityQureg
:Pattern:        QuEST`CreateDensityQureg[numQubits_Integer]
:Arguments:      { numQubits }
:ArgumentTypes:  { Integer }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`CreateDensityQureg::usage = "CreateDensityQureg[numQubits] returns the id of a newly created density matrix.";
    QuEST`CreateDensityQureg::error = "`1`";
    QuEST`CreateDensityQureg[___] := QuEST`Private`invalidArgError[CreateDensityQureg];

:Begin:
:Function:       wrapper_destroyQureg
:Pattern:        QuEST`Private`DestroyQuregInternal[id_Integer]
:Arguments:      { id }
:ArgumentTypes:  { Integer }
:ReturnType:     Manual
:End:
:Evaluate: QuEST`Private`DestroyQuregInternal::usage = "DestroyQuregInternal[numQubits] frees the memory of the qureg associated with the given id."

:Begin:
:Function:       callable_createQuregs
:Pattern:        QuEST`CreateQuregs[numQubits_Integer, numQuregs_Integer]
:Arguments:      { numQubits, numQuregs }
:ArgumentTypes:  { Integer, Integer }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`CreateQuregs::usage = "CreateQuregs[numQubits, numQuregs] returns a list of ids of a newly created statevectors.";
    QuEST`CreateQuregs::error = "`1`";
    QuEST`CreateQuregs[___] := QuEST`Private`invalidArgError[CreateQuregs];

:Begin:
:Function:       callable_createDensityQuregs
:Pattern:        QuEST`CreateDensityQuregs[numQubits_Integer, numQuregs_Integer]
:Arguments:      { numQubits, numQuregs }
:ArgumentTypes:  { Integer, Integer }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`CreateDensityQuregs::usage = "CreateDensityQuregs[numQubits, numQuregs] returns a list of ids of a newly created density matrices.";
    QuEST`CreateDensityQuregs::error = "`1`";
    QuEST`CreateDensityQuregs[___] := QuEST`Private`invalidArgError[CreateDensityQuregs];




:Begin:
:Function:       wrapper_initZeroState
:Pattern:        QuEST`InitZeroState[qureg_Integer]
:Arguments:      { qureg }
:ArgumentTypes:  { Integer }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`InitZeroState::usage = "InitZeroState[qureg] sets the qureg to state |0> (and returns the qureg id).";
    QuEST`InitZeroState::error = "`1`";
    QuEST`InitZeroState[___] := QuEST`Private`invalidArgError[InitZeroState];

:Begin:
:Function:       wrapper_initPlusState
:Pattern:        QuEST`InitPlusState[qureg_Integer]
:Arguments:      { qureg }
:ArgumentTypes:  { Integer  }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`InitPlusState::usage = "InitPlusState[qureg] sets the qureg to state |+> (and returns the qureg id).";
    QuEST`InitPlusState::error = "`1`";
    QuEST`InitPlusState[___] := QuEST`Private`invalidArgError[InitPlusState];

:Begin:
:Function:       wrapper_initClassicalState
:Pattern:        QuEST`InitClassicalState[qureg_Integer, state_Integer]
:Arguments:      { qureg, state }
:ArgumentTypes:  { Integer, Integer }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`InitClassicalState::usage = "InitClassicalState[qureg, ind] sets the qureg to basis state |ind> (and returns the qureg id).";
    QuEST`InitClassicalState::error = "`1`";
    QuEST`InitClassicalState[___] := QuEST`Private`invalidArgError[InitClassicalState];

:Begin:
:Function:       wrapper_initPureState
:Pattern:        QuEST`InitPureState[targetQureg_Integer, pureQureg_Integer]
:Arguments:      { targetQureg, pureQureg }
:ArgumentTypes:  { Integer, Integer }
:ReturnType:     Manual
:End:
:Evaluate:
    QuEST`InitPureState::usage = "InitPureState[targetQureg, pureQureg] puts targetQureg (statevec or density matrix) into the pureQureg (statevec) state (and returns the targetQureg id).";
    QuEST`InitPureState::error = "`1`";
    QuEST`InitPureState[___] := QuEST`Private`invalidArgError[InitPureState];

:Begin:
:Function:       wrapper_initStateFromAmps
:Pattern:        QuEST`InitStateFromAmps[qureg_Integer, reals_List, imags_List]
:Arguments:      { qureg, reals, imags }
:ArgumentTypes:  { Integer, RealList, RealList }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`InitStateFromAmps::usage = "InitStateFromAmps[qureg, reals, imags] initialises the given qureg to have the supplied amplitudes (and returns the qureg id).";
    QuEST`InitStateFromAmps::error = "`1`";
    QuEST`InitStateFromAmps[___] := QuEST`Private`invalidArgError[InitStateFromAmps];

:Begin:
:Function:       wrapper_cloneQureg
:Pattern:        QuEST`CloneQureg[target_Integer, source_Integer]
:Arguments:      { target, source }
:ArgumentTypes:  { Integer, Integer }
:ReturnType:     Manual
:End:
:Evaluate:
    QuEST`CloneQureg::usage = "CloneQureg[dest, source] sets dest to be a copy of source.";
    QuEST`CloneQureg::error = "`1`";
    QuEST`CloneQureg[___] := QuEST`Private`invalidArgError[CloneQureg];

:Begin:
:Function:       internal_getAmp
:Pattern:        QuEST`Private`GetAmpInternal[qureg_Integer, row_Integer, col_Integer]
:Arguments:      { qureg, row, col }
:ArgumentTypes:  { Integer, Manual }
:ReturnType:     Manual
:End:
:Evaluate: QuEST`Private`GetAmpInternal::usage = "GetAmpInternal[qureg, row, col] returns complex amplitude with index [row] in a statevector qureg, or index [row][col] of a density matrix."

:Begin:
:Function:       callable_isDensityMatrix
:Pattern:        QuEST`IsDensityMatrix[qureg_Integer]
:Arguments:      { qureg }
:ArgumentTypes:  { Integer }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`IsDensityMatrix::usage = "IsDensityMatrix[qureg] returns 0 or 1 to indicate whether qureg is a statevector or density matrix (respectively).";
    QuEST`IsDensityMatrix::error = "`1`";
    QuEST`IsDensityMatrix[___] := QuEST`Private`invalidArgError[IsDensityMatrix];




:Begin:
:Function:       wrapper_mixDepolarising
:Pattern:        QuEST`MixDepolarising[qureg_Integer, qb_Integer, prob_Real]
:Arguments:      { qureg, qb, prob }
:ArgumentTypes:  { Integer, Integer, Real }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`MixDepolarising::usage = "MixDepolarising[qureg, qubit, prob] adds depolarising noise to density matrix qureg.";
    QuEST`MixDepolarising::error = "`1`";
    QuEST`MixDepolarising[___] := QuEST`Private`invalidArgError[MixDepolarising];

:Begin:
:Function:       wrapper_mixTwoQubitDepolarising
:Pattern:        QuEST`MixTwoQubitDepolarising[qureg_Integer, qb1_Integer, qb2_Integer, prob_Real]
:Arguments:      { qureg, qb1, qb2, prob }
:ArgumentTypes:  { Integer, Integer, Integer, Real }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`MixTwoQubitDepolarising::usage = "MixTwoQubitDepolarising[qureg, qb1, qb2 prob] adds depolarising noise to density matrix qureg.";
    QuEST`MixTwoQubitDepolarising::error = "`1`";
    QuEST`MixTwoQubitDepolarising[___] := QuEST`Private`invalidArgError[MixTwoQubitDepolarising];

:Begin:
:Function:       wrapper_mixDephasing
:Pattern:        QuEST`MixDephasing[qureg_Integer, qb_Integer, prob_Real]
:Arguments:      { qureg, qb, prob }
:ArgumentTypes:  { Integer, Integer, Real }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`MixDephasing::usage = "MixDephasing[qureg, qubit, prob] adds dephasing noise to density matrix qureg.";
    QuEST`MixDephasing::error = "`1`";
    QuEST`MixDephasing[___] := QuEST`Private`invalidArgError[MixDephasing];

:Begin:
:Function:       wrapper_mixTwoQubitDephasing
:Pattern:        QuEST`MixTwoQubitDephasing[qureg_Integer, qb1_Integer, qb2_Integer, prob_Real]
:Arguments:      { qureg, qb1, qb2, prob }
:ArgumentTypes:  { Integer, Integer, Integer, Real }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`MixTwoQubitDephasing::usage = "MixTwoQubitDephasing[qureg, qb1, qb2 prob] adds dephasing noise to density matrix qureg.";
    QuEST`MixTwoQubitDephasing::error = "`1`";
    QuEST`MixTwoQubitDephasing[___] := QuEST`Private`invalidArgError[MixTwoQubitDephasing];

:Begin:
:Function:       wrapper_mixDamping
:Pattern:        QuEST`MixDamping[qureg_Integer, qb_Integer, prob_Real]
:Arguments:      { qureg, qb, prob }
:ArgumentTypes:  { Integer, Integer, Real }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`MixDamping::usage = "MixDamping[qureg, qubit, prob] applies amplitude damping with the given decay probability to density matrix qureg.";
    QuEST`MixDamping::error = "`1`";
    QuEST`MixDamping[___] := QuEST`Private`invalidArgError[MixDamping];




:Begin:
:Function:       wrapper_calcProbOfOutcome
:Pattern:        QuEST`CalcProbOfOutcome[qureg_Integer, qb_Integer, outcome_Integer]
:Arguments:      { qureg, qb, outcome }
:ArgumentTypes:  { Integer, Integer, Integer }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`CalcProbOfOutcome::usage = "CalcProbOfOutcome[qureg, qubit, outcome] returns the probability of measuring qubit in the given outcome.";
    QuEST`CalcProbOfOutcome::error = "`1`";
    QuEST`CalcProbOfOutcome[___] := QuEST`Private`invalidArgError[CalcProbOfOutcome];

:Begin:
:Function:       wrapper_calcFidelity
:Pattern:        QuEST`CalcFidelity[qureg1_Integer, qureg2_Integer]
:Arguments:      { qureg1, qureg2 }
:ArgumentTypes:  { Integer, Integer }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`CalcFidelity::usage = "CalcFidelity[qureg1, qureg2] returns the fidelity between the given states.";
    QuEST`CalcFidelity::error = "`1`";
    QuEST`CalcFidelity[___] := QuEST`Private`invalidArgError[CalcFidelity];

:Begin:
:Function:       wrapper_calcInnerProduct
:Pattern:        QuEST`CalcInnerProduct[qureg1_Integer, qureg2_Integer]
:Arguments:      { qureg1, qureg2 }
:ArgumentTypes:  { Integer, Integer }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`CalcInnerProduct::usage = "CalcInnerProduct[qureg1, qureg2] returns the complex inner product between the given states.";
    QuEST`CalcInnerProduct::error = "`1`";
    QuEST`CalcInnerProduct[___] := QuEST`Private`invalidArgError[CalcInnerProduct];

:Begin:
:Function:       wrapper_calcDensityInnerProduct
:Pattern:        QuEST`CalcDensityInnerProduct[qureg1_Integer, qureg2_Integer]
:Arguments:      { qureg1, qureg2 }
:ArgumentTypes:  { Integer, Integer }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`CalcDensityInnerProduct::usage = "CalcDensityInnerProduct[qureg1, qureg2] returns the real Hilbert schmidt scalar product between two given density matrices.";
    QuEST`CalcDensityInnerProduct::error = "`1`";
    QuEST`CalcDensityInnerProduct[___] := QuEST`Private`invalidArgError[CalcDensityInnerProduct];

:Begin:
:Function:       wrapper_calcPurity
:Pattern:        QuEST`CalcPurity[qureg_Integer]
:Arguments:      { qureg }
:ArgumentTypes:  { Integer }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`CalcPurity::usage = "CalcPurity[qureg] returns the purity of the given density matrix.";
    QuEST`CalcPurity::error = "`1`";
    QuEST`CalcPurity[___] := QuEST`Private`invalidArgError[CalcPurity];

:Begin:
:Function:       wrapper_calcTotalProb
:Pattern:        QuEST`CalcTotalProb[qureg_Integer]
:Arguments:      { qureg }
:ArgumentTypes:  { Integer }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`CalcTotalProb::usage = "CalcTotalProb[qureg] returns the total probability (normalisation) of the statevector (sum of abs-squared of amplitudes) or density matrix (trace), which should be 1.";
    QuEST`CalcTotalProb::error = "`1`";
    QuEST`CalcTotalProb[___] := QuEST`Private`invalidArgError[CalcTotalProb];

:Begin:
:Function:       wrapper_calcHilbertSchmidtDistance
:Pattern:        QuEST`CalcHilbertSchmidtDistance[qureg1_Integer, qureg2_Integer]
:Arguments:      { qureg1, qureg2 }
:ArgumentTypes:  { Integer, Integer }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`CalcHilbertSchmidtDistance::usage = "CalcHilbertSchmidtDistance[qureg1, qureg2] returns the Hilbert-Schmidt distance (Frobenius norm of the difference) between the given density matrices.";
    QuEST`CalcHilbertSchmidtDistance::error = "`1`";
    QuEST`CalcHilbertSchmidtDistance[___] := QuEST`Private`invalidArgError[CalcHilbertSchmidtDistance];

:Begin:
:Function:       internal_calcQuregDerivs
:Pattern:        QuEST`Private`CalcQuregDerivsInternal[initStateId_Integer, quregIds_List, varOpInds_List, opcodes_List, ctrls_List, numCtrlsPerOp_List, targs_List, numTargsPerOp_List, params_List, numParamsPerOp_List, unitaryDerivs_List]
:Arguments:      { initStateId, quregIds, varOpInds, opcodes, ctrls, numCtrlsPerOp, targs, numTargsPerOp, params, numParamsPerOp, unitaryDerivs }
:ArgumentTypes:  { Integer, Manual }
:ReturnType:     Manual
:End:
:Evaluate: QuEST`Private`CalcQuregDerivsInternal::usage = "CalcQuregDerivsInternal[initStateId, quregIds, varOpInds, opcodes, ctrls, numCtrlsPerOp, targs, numTargsPerOp, params, numParamsPerOp, unitaryDerivs] accepts a circuit (complete with rotation angles) and a nominated set of gates (by indices), sets each qureg to be the result of applying the derivative of the circuit w.r.t the nominated gates, upon the initial state. The final argument encodes the derivative matrices of general unitaries."

:Begin:
:Function:       internal_calcInnerProductsMatrix
:Pattern:        QuEST`Private`CalcInnerProductsMatrixInternal[quregIds_List]
:Arguments:      { quregIds }
:ArgumentTypes:  { IntegerList }
:ReturnType:     Manual
:End:
:Evaluate: QuEST`Private`CalcInnerProductsMatrixInternal::usage = "CalcInnerProductsMatrixInternal[quregIds] returns seperate 1D (appending rows) lists for the real and imag components of the matrix with ith-jth element CalcInnerProduct[quregIds[i], quregIds[j]]."

:Begin:
:Function:       internal_calcInnerProductsVector
:Pattern:        QuEST`Private`CalcInnerProductsVectorInternal[braId_Integer, ketIds_List]
:Arguments:      { braId, ketIds }
:ArgumentTypes:  { Integer, IntegerList }
:ReturnType:     Manual
:End:
:Evaluate: QuEST`Private`CalcInnerProductsVectorInternal::usage = "CalcInnerProductsVectorInternal[braId, ketIds] returns a vector with jth element CalcInnerProduct[braId, ketIds[j]]."

:Begin:
:Function:       internal_calcDensityInnerProductsMatrix
:Pattern:        QuEST`Private`CalcDensityInnerProductsMatrixInternal[quregIds_List]
:Arguments:      { quregIds }
:ArgumentTypes:  { IntegerList }
:ReturnType:     Manual
:End:
:Evaluate: QuEST`Private`CalcDensityInnerProductsMatrixInternal::usage = "CalcDensityInnerProductsMatrixInternal[quregIds] returns a flattened real matrix (appending rows) with ith-jth element CalcDensityInnerProduct[quregIds[i], quregIds[j]]."

:Begin:
:Function:       internal_calcDensityInnerProductsVector
:Pattern:        QuEST`Private`CalcDensityInnerProductsVectorInternal[rhoId_Integer, omegaIds_List]
:Arguments:      { rhoId, omegaIds }
:ArgumentTypes:  { Integer, IntegerList }
:ReturnType:     Manual
:End:
:Evaluate: QuEST`Private`CalcDensityInnerProductsVectorInternal::usage = "CalcDensityInnerProductsVectorInternal[rhoId, omegaIds] returns a vector with jth element CalcDensityInnerProduct[braId, ketIds[j]]."



:Begin:
:Function:       internal_applyCircuit
:Pattern:        QuEST`Private`ApplyCircuitInternal[qureg_Integer, storeBackup_Integer, opcodes_List, ctrls_List, numCtrlsPerOp_List, targs_List, numTargsPerOp_List, params_List, numParamsPerOp_List]
:Arguments:      { qureg, storeBackup, opcodes, ctrls, numCtrlsPerOp, targs, numTargsPerOp, params, numParamsPerOp }
:ArgumentTypes:  { Integer, Integer, Manual }
:ReturnType:     Manual
:End:
:Evaluate: QuEST`Private`ApplyCircuitInternal::usage = "ApplyCircuitInternal[qureg, storeBackup, opcodes, ctrls, numCtrlsPerOps, targs, numTargsPerOp, params, numParamsPerOps] applies a circuit (decomposed into codes) to the given qureg."

:Begin:
:Function:       internal_calcExpecPauliProd
:Pattern:        QuEST`Private`CalcExpecPauliProdInternal[qureg_Integer, workspace_Integer, paulis_List, targets_List]
:Arguments:      { qureg, workspace, paulis, targets }
:ArgumentTypes:  { Integer, Integer, Manual }
:ReturnType:     Manual
:End:
:Evaluate: QuEST`Private`CalcExpecPauliProdInternal::usage = "CalcExpecPauliProdInternal[qureg, workspace, paulis, targets] returns the expected value of the qureg under the given pauli product. workspace must be a Qureg of equal dimensions to qureg."

:Begin:
:Function:       internal_calcExpecPauliSum
:Pattern:        QuEST`Private`CalcExpecPauliSumInternal[qureg_Integer, workspace_Integer, termCoeffs_List, allPauliCodes_List, allPauliTargets_List, numPaulisPerTerm_List]
:Arguments:      { qureg, workspace, termCoeffs, allPauliCodes, allPauliTargets, numPaulisPerTerm }
:ArgumentTypes:  { Integer, Integer, Manual }
:ReturnType:     Manual
:End:
:Evaluate: QuEST`Private`CalcExpecPauliSumInternal::usage = "CalcExpecPauliSumInternal[qureg, workspace, termCoeffs, allPauliCodes, allPauliTargets, numPaulisPerTerm] returns the expected value of the qureg under the given sum of Pauli products, specified as flat lists. workspace must be a Qureg of equal dimensions to qureg."

:Begin:
:Function:       internal_applyPauliSum
:Pattern:        QuEST`Private`ApplyPauliSumInternal[inQureg_Integer, outQureg_Integer, termCoeffs_List, allPauliCodes_List, allPauliTargets_List, numPaulisPerTerm_List]
:Arguments:      { inQureg, outQureg, termCoeffs, allPauliCodes, allPauliTargets, numPaulisPerTerm }
:ArgumentTypes:  { Integer, Integer, Manual }
:ReturnType:     Manual
:End:
:Evaluate: QuEST`Private`ApplyPauliSumInternal::usage = "ApplyPauliSumInternal[inQureg, outQureg, termCoeffs, allPauliCodes, allPauliTargets, numPaulisPerTerm] modifies outQureg under the given sum of Pauli products, specified as flat lists. inQureg and outQureg must have the same type and equal dimensions."

:Begin:
:Function:       internal_calcPauliSumMatrix
:Pattern:        QuEST`Private`CalcPauliSumMatrixInternal[numQubits_Integer, termCoeffs_List, allPauliCodes_List, allPauliTargets_List, numPaulisPerTerm_List]
:Arguments:      { numQubits, termCoeffs, allPauliCodes, allPauliTargets, numPaulisPerTerm }
:ArgumentTypes:  { Integer, Manual }
:ReturnType:     Manual
:End:
:Evaluate: QuEST`Private`CalcPauliSumMatrixInternal::usage = "CalcPauliSumMatrixInternal[numQubits, termCoeffs, allPauliCodes, allPauliTargets, numPaulisPerTerm] returns the action of applying the given sum of Pauli products (specified as flat lists) to every basis state."

:Begin:
:Function:       internal_getQuregMatrix
:Pattern:        QuEST`Private`GetQuregMatrixInternal[qureg_Integer]
:Arguments:      { qureg }
:ArgumentTypes:  { Integer }
:ReturnType:     Manual
:End:
:Evaluate: QuEST`Private`GetQuregMatrixInternal::usage = "GetQuregMatrixInternal[qureg] returns the underlying statevector associated with the given qureg (flat, even for density matrices)."

:Begin:
:Function:       internal_setWeightedQureg
:Pattern:        QuEST`Private`SetWeightedQuregInternal[facRe1_Real,facIm1_Real,qureg1_Integer, facRe2_Real,facIm2_Real,qureg2_Integer, facReOut_Real,facImOut_Real,quregOut_Integer]
:Arguments:      { facRe1,facIm1,qureg1, facRe2,facIm2,qureg2, facReOut,facImOut,quregOut }
:ArgumentTypes:  { Real, Real, Integer, Real, Real, Integer, Real, Real, Integer }
:ReturnType:     Manual
:End:
:Evaluate: QuEST`Private`SetWeightedQuregInternal::usage = "SetWeightedQuregInternal[facRe1,facIm1,qureg1, facRe2,facIm2,qureg2, facReOut,facImOut,quregOut] modifies quregOut to become (fac1 qureg1 + fac2 qureg2 + facOut qurgeOut)."

:Begin:
:Function:       wrapper_collapseToOutcome
:Pattern:        QuEST`CollapseToOutcome[qureg_Integer, qubit_Integer, outcome_Integer]
:Arguments:      { qureg, qubit, outcome }
:ArgumentTypes:  { Integer, Integer, Integer }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`CollapseToOutcome::usage = "CollapseToOutcome[qureg, qubit, outcome] forces the target qubit to collapse to the given outcome.";
    QuEST`CollapseToOutcome::error = "`1`";
    QuEST`CollapseToOutcome[___] := QuEST`Private`invalidArgError[CollapseToOutcome];




:Begin:
:Function:       callable_destroyAllQuregs
:Pattern:        QuEST`DestroyAllQuregs[]
:Arguments:      { }
:ArgumentTypes:  { }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`DestroyAllQuregs::usage = "DestroyAllQuregs[] destroys all remote quregs.";
    QuEST`DestroyAllQuregs::error = "`1`";
    QuEST`DestroyAllQuregs[___] := QuEST`Private`invalidArgError[DestroyAllQuregs];

:Begin:
:Function:       callable_getAllQuregs
:Pattern:        QuEST`GetAllQuregs[]
:Arguments:      { }
:ArgumentTypes:  { }
:ReturnType:     Manual
:End:
:Evaluate: 
    QuEST`GetAllQuregs::usage = "GetAllQuregs[] returns all active quregs.";
    QuEST`GetAllQuregs::error = "`1`";
    QuEST`GetAllQuregs[___] := QuEST`Private`invalidArgError[GetAllQuregs];