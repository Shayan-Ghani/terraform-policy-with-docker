from tf2 import Tf2, Terraform, TerraformPlanLoader
 
tf2  = Tf2(Terraform(TerraformPlanLoader()))

@tf2.test("resources.docker_container.nginx")
def nginx_container_without_lastest_image(self):
    for container in self.instances:
        assert self.instances[container].values.image.endswith("latest") is False

@tf2.test("resources.docker_container.nginx")       
def nginx_container_with_external_port(self):
    for container in self.instances:
        assert self.instances[container].values.ports[0].external != ""

#The testcase below has no practical reason, just for fun :)
@tf2.test("resources.docker_container.nginx")
def nginx_container_volume_existence(self):
    for container in self.instances:
        assert self.instances[container].values.volumes[0].host_path != "" 
        
tf2.run()
