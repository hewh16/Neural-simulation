function [DePhosphorylationRateModulatorValue]=DePhosphorylationRateModulator(CalciumValue,PowerConstantofDePhosphorylation,ConstantofDePhosphorylation)

DePhosphorylationRateModulatorValue=(CalciumValue^PowerConstantofDePhosphorylation)/(ConstantofDePhosphorylation+CalciumValue^PowerConstantofDePhosphorylation);