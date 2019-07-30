
# Remeber to always have hosts then tasks and make
# that after tasks it's spaced out

#usually these examples starts with hosts then taks

---

- hosts: "{{ hosts | default('all') }}"
  tasks:

  - name: Check that you can connect (GET) to a page and it returns a status 200
    uri:
     url: https://collaborate.td.com


  - uri:
     url: https://collaborate.td.com"
     return_content: yes
    register: this
    failed_when: "'E' not in this.content"
