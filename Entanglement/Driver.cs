using System;
using System.Linq;
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
                foreach (var iteration in Enumerable.Range(0, 10))
                {
                    var results = EntangleAndMeasure.Run(simulator).Result;
                    Console.WriteLine($"Measured result states: {results}.");
                }
            }

            Console.ReadKey();
        }
    }
}