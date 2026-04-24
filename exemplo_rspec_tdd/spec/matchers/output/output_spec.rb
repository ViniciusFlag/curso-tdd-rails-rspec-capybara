describe "Output" do
    it { expect{puts "Saida padrao"}.to output.to_stdout }
    it { expect{print "Saida padrao"}.to output("Saida padrao").to_stdout }
    it { expect{puts "Saida padrao"}.to output(/Saida/).to_stdout }

    it { expect{warn "Saida padrao"}.to output.to_stderr }
    it { expect{warn "Saida padrao"}.to output("Saida padrao\n").to_stderr }
    it { expect{warn "Saida padrao"}.to output(/Saida/).to_stderr }
end