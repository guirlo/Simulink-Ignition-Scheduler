function V_displ_mm3 = paramfcn_cylinder_V_displ_mm3()
%% displaced volume / swept volume (single cylinder)
B_mm = paramfcn_cylinder_Bore_mm();
S_mm = paramfcn_cylinder_Stroke_mm();
V_displ_mm3 = pi*(B_mm/2)^2*S_mm;
end
