output "info" {
  value = merge(
    { context = local.context },
    {
      for k, v in module.vpc.info :
      k => v
    }
  )
  description = <<EOD

info = {
  context = <context info>
  vpc = <vpc info>
  igw = <internet gateway info>
}

EOD
}