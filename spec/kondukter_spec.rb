require "spec_helper"

describe Kondukter do
  it "has a version number" do
    expect(Kondukter::VERSION).not_to be nil
  end

  describe "top_level_queue" do

    it "returns size of request queue" do
      expect(Kondukter::Passenger.new(fixture).top_level_queue).to eq(0)
    end

  end

  def fixture
    <<EOF
      <?xml version="1.0" encoding="iso8859-1" ?>
      <info version="3">
          <passenger_version>5.0.6</passenger_version>
          <process_count>1</process_count>
          <max>3</max>
          <capacity_used>1</capacity_used>
          <get_wait_list_size>0</get_wait_list_size>
          <supergroups>
              <supergroup>
                  <name>/home/semaphore/semaphore/current/public &#40;staging&#41;</name>
                  <state>READY</state>
                  <get_wait_list_size>0</get_wait_list_size>
                  <capacity_used>1</capacity_used>
                  <group default="true">
                      <name>/home/semaphore/semaphore/current/public &#40;staging&#41;&#35;default</name>
                      <component_name>default</component_name>
                      <app_root>/home/semaphore/semaphore/current</app_root>
                      <app_type>rack</app_type>
                      <environment>staging</environment>
                      <uuid>6KgnvfY9YtPTufIPAxXR</uuid>
                      <enabled_process_count>1</enabled_process_count>
                      <disabling_process_count>0</disabling_process_count>
                      <disabled_process_count>0</disabled_process_count>
                      <capacity_used>1</capacity_used>
                      <get_wait_list_size>0</get_wait_list_size>
                      <disable_wait_list_size>0</disable_wait_list_size>
                      <processes_being_spawned>0</processes_being_spawned>
                      <life_status>ALIVE</life_status>
                      <options>
                          <app_root>/home/semaphore/semaphore/current</app_root>
                          <app_group_name>/home/semaphore/semaphore/current/public &#40;staging&#41;</app_group_name>
                          <app_type>rack</app_type>
                          <start_command>/usr/local/rbenv/versions/2.2.1/bin/ruby&#9;/usr/local/rbenv/versions/2.2.1/lib/ruby/gems/2.2.0/gems/passenger-5.0.6/helper-scripts/rack-loader.rb</start_command>
                          <startup_file>config.ru</startup_file>
                          <process_title>Passenger RubyApp</process_title>
                          <log_level>3</log_level>
                          <start_timeout>90000</start_timeout>
                          <environment>staging</environment>
                          <base_uri>/</base_uri>
                          <spawn_method>smart-lv2</spawn_method>
                          <default_user>nobody</default_user>
                          <default_group>nogroup</default_group>
                          <ruby>/usr/local/rbenv/versions/2.2.1/bin/ruby</ruby>
                          <python>python</python>
                          <nodejs>node</nodejs>
                          <logging_agent_address>unix:/tmp/passenger.ncZYdVk/agents.s/logging</logging_agent_address>
                          <logging_agent_username>logging</logging_agent_username>
                          <logging_agent_password>D1LVVxuDAiWC7hslSpZby6DK</logging_agent_password>
                          <debugger>false</debugger>
                          <analytics>false</analytics>
                          <group_secret>I4E3H6Aaq3NQ9Woc</group_secret>
                          <min_processes>1</min_processes>
                          <max_processes>0</max_processes>
                          <max_preloader_idle_time>-1</max_preloader_idle_time>
                          <max_out_of_band_work_instances>1</max_out_of_band_work_instances>
                      </options>
                      <processes>
                          <process>
                              <pid>3923</pid>
                              <sticky_session_id>1608676731</sticky_session_id>
                              <gupid>16d206a-8RFHWnH13C</gupid>
                              <concurrency>1</concurrency>
                              <sessions>0</sessions>
                              <busyness>0</busyness>
                              <processed>62</processed>
                              <spawner_creation_time>1435736280005980</spawner_creation_time>
                              <spawn_start_time>1435736300235752</spawn_start_time>
                              <spawn_end_time>1435736300246537</spawn_end_time>
                              <last_used>1435752038990803</last_used>
                              <last_used_desc>23m 17s ago</last_used_desc>
                              <uptime>4h 45m 35s</uptime>
                              <code_revision>078e4d8</code_revision>
                              <life_status>ALIVE</life_status>
                              <enabled>ENABLED</enabled>
                              <has_metrics>true</has_metrics>
                              <cpu>0</cpu>
                              <rss>201492</rss>
                              <pss>197529</pss>
                              <private_dirty>195492</private_dirty>
                              <swap>0</swap>
                              <real_memory>195492</real_memory>
                              <vmsize>563896</vmsize>
                              <process_group_id>800</process_group_id>
                              <command>Passenger RubyApp: /home/semaphore/semaphore/current/public &#40;staging&#41;</command>
                          </process>
                      </processes>
                  </group>
              </supergroup>
          </supergroups>
      </info>
      EOF
  end

end
