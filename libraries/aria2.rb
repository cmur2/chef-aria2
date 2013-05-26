
class Chef::Node
  def generate_aria2_conf
    return nil if self['aria2']['conf'].nil?
    lines = []
    
    self['aria2']['conf'].each do |k,v|
      lines << "#{k}=#{v}"
    end
    
    lines << ''
    lines.join "\n"
  end
end
