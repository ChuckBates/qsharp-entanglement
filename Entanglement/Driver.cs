using System;
using Microsoft.Quantum.Simulation.Simulators;
using Quantum.Entanglement;

namespace Entanglement
{
    class Driver
    {
        static void Main(string[] args)
        {
            using (var simulator = new QuantumSimulator())
            {
                var results = Measurement.Run(simulator).Result;
                Console.WriteLine($"Measured result states: {results}.");
            }

            Console.ReadKey();
        }
    }
}