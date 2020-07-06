<template>
  <div class="container">
    <el-carousel :height="'100px'" :interval="5000" arrow="always">
      <el-carousel-item v-for="item in 4" :key="item">
        <h3>{{ item }}</h3>
      </el-carousel-item>
    </el-carousel>
    <div id="icon-item">
      <el-card shadow="always">
        <el-row>
          <el-col :span="4">
            <i class="iconfont icon-banjiapeisong"></i>
            <span class="icon-text">搬家服务</span>
          </el-col>
          <el-col :span="4">
            <i class="iconfont icon-baomu01"></i>
            <span class="icon-text">保姆月嫂</span>
          </el-col>
          <el-col :span="4">
            <i class="iconfont icon-guandaoshutong"></i>
            <span class="icon-text">管道疏通</span>
          </el-col>
          <el-col :span="4">
            <i class="iconfont icon-jiaju-"></i>
            <span class="icon-text">家具维修</span>
          </el-col>
          <el-col :span="4">
            <i class="iconfont icon-richangxuncha"></i>
            <span class="icon-text">日常服务</span>
          </el-col>
          <el-col :span="4">
            <i class="iconfont icon-weixiu"></i>
            <span class="icon-text">电子维修</span>
          </el-col>
        </el-row>
      </el-card>
    </div>
    <div id="hot-recommend">
      <el-card shadow="always">
        <div slot="header" class="clearfix">
          <span>热门服务</span>
          <el-button style="float: right; padding: 3px 0" type="text">查看更多</el-button>
        </div>
        <el-row>
          <el-col :span="8">
            <el-link type="danger">快速搬家</el-link>
          </el-col>
          <el-col :span="8">
            <el-link type="danger">保姆清洁</el-link>
          </el-col>
          <el-col :span="8">
            <el-link type="danger">二手回收</el-link>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="8">
            <el-link type="primary">上门维修</el-link>
          </el-col>
          <el-col :span="8">
            <el-link type="danger">桶装水</el-link>
          </el-col>
          <el-col :span="8">
            <el-link type="primary">机场接送</el-link>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="8">
            <el-link type="danger">防水补漏</el-link>
          </el-col>
          <el-col :span="8">
            <el-link type="danger">开锁服务</el-link>
          </el-col>
          <el-col :span="8">
            <el-link type="primary">维修电脑</el-link>
          </el-col>
        </el-row>
      </el-card>
    </div>
    <div id="index-hkman-recommand">
      <el-card shadow="always">
        <el-row>
          <el-col :span="18">
            <el-dropdown @command="handleCommand">
              <span class="el-dropdown-link">
                综合排序<i class="el-icon-arrow-down el-icon--right"></i>
              </span>
              <el-dropdown-menu slot="dropdown">
                <el-dropdown-item command="a">综合排序</el-dropdown-item>
                <el-dropdown-item command="b">评分降序</el-dropdown-item>
                <el-dropdown-item command="c">价格升序</el-dropdown-item>
                <el-dropdown-item command="d">价格降序</el-dropdown-item>
              </el-dropdown-menu>
            </el-dropdown>
          </el-col>
          <el-col :span="6">
            <el-row type="flex" justify="end" :class="'index-filter'">
              <el-button type="text">筛选<i class="iconfont icon-filter"></i></el-button>
            </el-row>
          </el-col>
        </el-row>
        <div style="margin: 10px;"></div>
        <el-row :gutter="10">
          <el-col :span="24" v-for="n in 10" :key="n">
            <el-row>
              <el-col :span="5" :style="'text-align: center;'">
                <el-image style="width: 60px; height: 60px; border-radius: 5px" :fit="'fill'" :src="'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg'"></el-image>
              </el-col>
              <el-col :span="19" :style="'padding-left: 5px'">
                <strong>测试服务</strong><br />
                <i class="el-icon-star-on" :style="'color: #ff8d00'">4.7</i>&nbsp;&nbsp;<span :style="'font-size: 14px'">月销
                  300 单</span><br />
                <span class="company-desc">xxx公司是专注于家政服务的公司，xxx公司是专注于家政服务的公司，xxx公司是专注于家政服务的公司，xxx公司是专注于家政服务的公司，xxx公司是专注于家政服务的公司，xxx公司是专注于家政服务的公司，</span>
              </el-col>
            </el-row>
          </el-col>
        </el-row>
      </el-card>
    </div>
  </div>
</template>

<script>
  export default {
    props: [],
    data() {
      return {

      }
    },
    methods: {
      handleCommand(command) {
        this.$message('click on item ' + command);
      }
    }
  }
</script>

<style>
  .company-desc {
    font-size: 8px;
    overflow: hidden;
    text-overflow: ellipsis;
    -o-text-overflow: ellipsis;
    white-space: nowrap;
    width: calc((100vw - 10px - 10px - 20px - 5px) / 24 * 19);
    height: 16px;
    display: block;
  }

  .index-filter .el-button--text {
    padding: 0px;
  }

  #hot-recommend .el-col {
    text-align: center;
  }

  #icon-item .iconfont {
    font-size: 14vw;
    color: #409EFF;
  }

  #icon-item .el-card__body {
    margin: 0px;
  }

  .icon-text {
    font-size: 10px;
  }

  #icon-item {
    text-align: center;
  }

  .el-carousel__item h3 {
    color: #475669;
    font-size: 18px;
    opacity: 0.75;
    line-height: 300px;
    margin: 0;
  }

  .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }

  .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }
</style>
