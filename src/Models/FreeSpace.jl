
@doc "Free Space path loss Model"
type FreeSpaceModel<:Model
  freq::Float64
  FreeSpaceModel() = new(800)
end

@doc "Calculate the path loss with the FreeSpace Model for ERP"
function pathloss_op(model::FreeSpaceModel,dist::AbstractFloat)
       return 32.44 + 20*log10(dist) + 20*log10(model.freq);
end
