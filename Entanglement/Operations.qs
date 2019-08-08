namespace Quantum.Entanglement
{
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    
    operation Measurement () : (Result)
    {
        mutable result = (Zero);

        using(qubits = Qubit[1]) {

            let qubit = qubits[0];
				
            set result = (M(qubit));

            ResetAll(qubits);
        }

        return result;
    }
}
