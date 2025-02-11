# virt-qmod

## Descrição
`virt-qmod` é um script para gerenciar Máquinas Virtuais (VMs) utilizando a tecnologia QEMU/KVM. Ele permite a criação, inicialização, parada, remoção, monitoramento e gerenciamento de snapshots, discos e interfaces de rede das VMs.

## Uso
```bash
Uso: virt-qmod [-h] [--compress-only] [list_vms | start NOME_DA_MAQUINA | stop NOME_DA_MAQUINA ...]
```

## Opções
- `-h, --help`                 Exibe esta mensagem de ajuda.
- `create`                     Cria uma Máquina Virtual. Suporta as seguintes opções:
  - `--name <nome>`            Define o nome da VM.
  - `--ram <tamanho>`          Define a quantidade de RAM para a VM.
  - `--vcpus <número>`         Define o número de vCPUs para a VM.
  - `--disk <tamanho>`         Define o tamanho do disco da VM.
  - `--cdrom <caminho>`        Define o caminho do CD-ROM.
  - `--network <rede>`         Define a rede para a VM.
  - `--graphics <tipo>`        Define o tipo de gráfico para a VM.
  - `--os-variant`             Define uma variante para o sistema operacional `{list_variant}`. (Padrão: `unknown`)
- `--compress-only`            Realiza apenas a compactação dos arquivos.
- `list`                       Lista as VMs.
- `list_variant`               Lista todos os sistemas operacionais disponíveis para a criação da VM.
- `open <nome>`                Abre o Virt Viewer com a VM em execução especificada.
- `edit <nome>`                Permite edição manual do XML da VM (Deve estar desativada).
- `start <nome>`               Inicia a VM.
- `stop <nome>`                Para a VM.
- `stop_force <nome>`          Para a VM forçadamente.
- `remove <nome>`              Remove a VM.
- `show_disk_info <nome>`      Exibe informações sobre o disco da VM.
- `show_qcow2_fdisk <arquivo>` Exibe informações sobre a partição do disco QCOW2.
- `show_qcow2_info <nome>`     Exibe informações sobre o disco QCOW2 da VM.
- `resize_disk <nome> <tamanho>` Redimensiona o disco da VM.
- `shrink_disk <nome> <tamanho>` Encolhe o disco da VM.
- `cfdisk_qcow2 <arquivo>`     Monta o arquivo QCOW2 e abre edição com cfdisk.
- `list_snapshots <nome>`      Lista os snapshots da VM.
- `create_snapshot <nome> <snapshot>` Cria um snapshot da VM.
- `delete_snapshot <nome> <snapshot>` Deleta um snapshot da VM.
- `check_qcow2 <arquivo> <opções>` Verifica a integridade do disco no arquivo QCOW2.
- `check_cpus <nome>`          Verifica os CPUs da VM.
- `check_interfaces <nome>`    Verifica as interfaces da VM.
- `check_iso <nome>`           Verifica a existência do arquivo ISO na VM.
- `check_graphics <nome>`      Verifica a configuração gráfica da VM.
- `attach_iso <nome> <iso>`    Anexa o ISO à VM.
- `detach_iso <nome> <iso>`    Desanexa o ISO da VM.
- `set_boot_cdrom <nome>`      Define a ordem de boot para iniciar primeiro pelo CD-ROM antes do HD.

## Exemplo de Uso
### Criar uma VM
```bash
virt-qmod create --name minhaVM --ram 2048 --vcpus 2 --disk 20G --cdrom /caminho/para/iso.iso --network default --graphics spice --os-variant ubuntu20.04
```

### Listar VMs
```bash
virt-qmod list
```

### Iniciar uma VM
```bash
virt-qmod start minhaVM
```

### Parar uma VM
```bash
virt-qmod stop minhaVM
```

### Remover uma VM
```bash
virt-qmod remove minhaVM
```

## Autor
Desenvolvido por Marcelo (Elppans) <marcelo.el...@...>.

## Licença
Este projeto está licenciado sob a [Licença MIT](LICENSE).

