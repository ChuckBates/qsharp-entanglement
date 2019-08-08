namespace Quantum.Entanglement
{
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    
    operation EntangleAndMeasure () : (Result, Result)
	{
		mutable result = (Zero, Zero);

		using (qubits = Qubit[2]) {
			let qubit0 = qubits[0];
			let qubit1 = qubits[1];

			H(qubit0);
			CNOT(qubit0, qubit1);

			set result = (M(qubit0), M(qubit1));

			ResetAll(qubits);
		}

		return result;
	}
}
